/*
 * Copyright (c) 2024, Circle Internet Financial LTD All Rights Reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

//! State

use {
    crate::{error::MessageTransmitterError, utils},
    anchor_lang::prelude::*,
    libsecp256k1::Signature as EVMSignature,
    solana_program::{
        keccak::{Hash, Hasher},
        secp256k1_recover::{secp256k1_recover, Secp256k1RecoverError},
    },
};

#[account]
#[derive(Debug, InitSpace)]
/// Main state of the MessageTransmitter program
pub struct MessageTransmitter {
    pub owner: Pubkey,
    pub pending_owner: Pubkey,
    pub attester_manager: Pubkey,
    pub pauser: Pubkey,
    pub paused: bool,
    pub local_domain: u32,
    pub version: u32,
    pub signature_threshold: u32,
    #[max_len(1)]
    pub enabled_attesters: Vec<Pubkey>,
    pub max_message_body_size: u64,
    pub next_available_nonce: u64,
}

#[account]
#[derive(Debug, InitSpace)]
/// UsedNonces account holds an array of bits that indicate which nonces were already used
/// so they can't be resused to receive new messages. Array starts with the first_nonce and
/// holds flags for UsedNonces::MAX_NONCES. Nonces are recorded separately for each remote_domain.
pub struct UsedNonces {
    pub remote_domain: u32,
    pub first_nonce: u64,
    used_nonces: [u64; 100], // length = MAX_NONCES / 64 + if MAX_NONCES % 64 != 0 { 1 } else { 0 }
}

impl MessageTransmitter {
    pub const ATTESTATION_SIGNATURE_LENGTH: usize = 65;

    /// Checks if the state is valid
    pub fn validate(&self) -> bool {
        self.owner != Pubkey::default()
            && self.attester_manager != Pubkey::default()
            && self.pauser != Pubkey::default()
            && self.signature_threshold != 0
            && self.signature_threshold as usize <= self.enabled_attesters.len()
            && !self.enabled_attesters.is_empty()
            && self.next_available_nonce > 0
    }

    /// Returns an error if the attestation, which is comprised of one or more concatenated 65-byte signatures, is invalid.
    /// Rules for valid attestation:
    /// 1. length of `attestation` == ATTESTATION_SIGNATURE_LENGTH * signature_threshold
    /// 2. addresses recovered from attestation must be in increasing order.
    ///    For example, if signature A is signed by address 0x1..., and signature B
    ///    is signed by address 0x2..., attestation must be passed as AB.
    /// 3. no duplicate signers
    /// 4. all signers must be enabled attesters
    ///
    /// Based on Christian Lundkvist's Simple Multisig
    /// (https://github.com/christianlundkvist/simple-multisig/tree/560c463c8651e0a4da331bd8f245ccd2a48ab63d)
    pub fn verify_attestation_signatures(
        &self,
        message_hash: &Hash,
        attestation: &Vec<u8>,
    ) -> Result<()> {
        require_eq!(
            attestation.len(),
            utils::checked_mul(
                Self::ATTESTATION_SIGNATURE_LENGTH,
                self.signature_threshold as usize
            )?,
            MessageTransmitterError::InvalidAttestationLength
        );

        let mut last_attester = Pubkey::default();

        for i in 0..self.signature_threshold as usize {
            // slice next signature
            let signature =
                &attestation.as_slice()[utils::checked_mul(i, Self::ATTESTATION_SIGNATURE_LENGTH)?
                    ..utils::checked_add(
                        utils::checked_mul(i, Self::ATTESTATION_SIGNATURE_LENGTH)?,
                        Self::ATTESTATION_SIGNATURE_LENGTH,
                    )?];

            // recover attester's address from the message hash and the signature
            let recovered_attester =
                MessageTransmitter::recover_attester(message_hash.0.as_slice(), signature)?;

            if recovered_attester <= last_attester {
                return err!(MessageTransmitterError::InvalidSignatureOrderOrDupe);
            }

            // check if the recovered attester is enabled
            require!(
                self.is_enabled_attester(&recovered_attester),
                MessageTransmitterError::InvalidAttesterSignature
            );

            last_attester = recovered_attester;
        }

        Ok(())
    }

    /// Checks if the attester is enabled
    pub fn is_enabled_attester(&self, attester: &Pubkey) -> bool {
        self.enabled_attesters.contains(attester)
    }

    /// Recovers attester's address from the message hash and the signature
    fn recover_attester(message_hash: &[u8], attestation_signature: &[u8]) -> Result<Pubkey> {
        // secp256k1_recover doesn't validate input parameters lengths, so manual check is needed
        require_eq!(
            message_hash.len(),
            32,
            MessageTransmitterError::InvalidMessageHash
        );
        require_eq!(
            attestation_signature.len(),
            65,
            MessageTransmitterError::InvalidAttesterSignature
        );

        // extract recovery id from the signature
        let recovery_id = attestation_signature[Self::ATTESTATION_SIGNATURE_LENGTH - 1];
        require!(
            (27..=30).contains(&recovery_id),
            MessageTransmitterError::InvalidSignatureRecoveryId
        );

        // reject high-s value signatures to prevent malleability
        let signature = EVMSignature::parse_standard_slice(
            &attestation_signature[0..Self::ATTESTATION_SIGNATURE_LENGTH - 1],
        )
        .map_err(|_| MessageTransmitterError::InvalidAttesterSignature)?;
        require!(
            !signature.s.is_high(),
            MessageTransmitterError::InvalidSignatureSValue
        );

        // recover attester's public key
        let pubkey = secp256k1_recover(
            message_hash,
            recovery_id - 27,
            &attestation_signature[0..Self::ATTESTATION_SIGNATURE_LENGTH - 1],
        )
        .map_err(|err| match err {
            Secp256k1RecoverError::InvalidHash => MessageTransmitterError::InvalidMessageHash,
            Secp256k1RecoverError::InvalidRecoveryId => {
                MessageTransmitterError::InvalidSignatureRecoveryId
            }
            Secp256k1RecoverError::InvalidSignature => {
                MessageTransmitterError::InvalidAttesterSignature
            }
        })?;

        // hash public key and return last 20 bytes as Pubkey
        let mut hasher = Hasher::default();
        hasher.hash(pubkey.to_bytes().as_slice());
        let mut address = hasher.result().0;
        address[0..12].iter_mut().for_each(|x| *x = 0);

        Ok(Pubkey::new_from_array(address))
    }
}

impl UsedNonces {
    pub const MAX_NONCES: usize = 6400;

    /// Returns the first nonce in the UsedNonces account corresponding to the given nonce.
    /// To minimize on-chain space use, used nonces are stored in a bitset, i.e. 0/1 flags
    /// indicating if the nonce was already used. `first_nonce` represents the very first
    /// nonce in the set. For example, given the first_nonce = 100 and used_nonces set = 0110,
    /// we can tell that nonces 101 and 102 are used, while 100 and 103 are not. Bitset is
    /// implemented as a fixed-size array of 64 bit values that are custom indexed.
    pub fn first_nonce(nonce: u64) -> Result<u64> {
        if nonce == 0 {
            return err!(MessageTransmitterError::InvalidNonce);
        }
        utils::checked_add(
            utils::checked_mul(
                utils::checked_div(utils::checked_sub(nonce, 1)?, Self::MAX_NONCES as u64)?,
                Self::MAX_NONCES as u64,
            )?,
            1,
        )
    }

    /// Marks the nonce as used
    pub fn use_nonce(&mut self, nonce: u64) -> Result<()> {
        let (entry, bit) = self.get_entry_bit(nonce)?;

        require!(
            self.used_nonces[entry] & bit == 0,
            MessageTransmitterError::NonceAlreadyUsed
        );

        self.used_nonces[entry] |= bit;

        Ok(())
    }

    /// Checks if nonce is used
    pub fn is_nonce_used(&self, nonce: u64) -> Result<bool> {
        let (entry, bit) = self.get_entry_bit(nonce)?;

        Ok(self.used_nonces[entry] & bit != 0)
    }

    fn get_entry_bit(&self, nonce: u64) -> Result<(usize, u64)> {
        require!(
            nonce >= self.first_nonce
                && nonce < utils::checked_add(self.first_nonce, Self::MAX_NONCES as u64)?,
            MessageTransmitterError::InvalidNonce
        );

        let position = utils::checked_sub(nonce, self.first_nonce)? as usize;
        let entry = utils::checked_div(position, 64)?;
        let bit = 1 << (position as u64 % 64);

        Ok((entry, bit))
    }

    /// Adds a delimiter for the used_nonces PDA seeds for domains >= 11 
    /// Only add to domains >= 11 to prevent existing (pre-upgrade on mainnet)
    /// PDAs from changing.
    pub fn used_nonces_seed_delimiter(source_domain: u32) -> &'static [u8] {
        if source_domain < 11 {
            b""
        } else {
            b"-"
        }
    }
}
