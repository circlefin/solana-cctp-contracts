/*
 * Copyright (c) 2025, Circle Internet Financial LTD All Rights Reserved.
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

//! Message

use {
    crate::{error::MessageTransmitterError, utils},
    anchor_lang::prelude::*,
    anchor_lang::solana_program::keccak::{Hash, Hasher},
    num_traits::FromBytes,
    std::fmt::Display,
};

#[derive(Clone, Debug)]
pub struct Message<'a> {
    data: &'a [u8],
}

impl<'a> Message<'a> {
    // Indices of each field in the message
    const VERSION_INDEX: usize = 0;
    const SOURCE_DOMAIN_INDEX: usize = 4;
    const DESTINATION_DOMAIN_INDEX: usize = 8;
    pub const NONCE_INDEX: usize = 12;
    pub const SENDER_INDEX: usize = 44;
    const RECIPIENT_INDEX: usize = 76;
    const DESTINATION_CALLER_INDEX: usize = 108;
    const MIN_FINALITY_THRESHOLD_INDEX: usize = 140;
    const FINALITY_THRESHOLD_EXECUTED_INDEX: usize = 144;
    const MESSAGE_BODY_INDEX: usize = 148;

    const EMPTY_NONCE: [u8; 32] = [0; 32];
    const EMPTY_FINALITY_THRESHOLD_EXECUTED: u32 = 0;

    /// Validates source array size and returns a new message
    pub fn new(expected_version: u32, message_bytes: &'a [u8]) -> Result<Self> {
        require_gte!(
            message_bytes.len(),
            Self::MESSAGE_BODY_INDEX,
            MessageTransmitterError::MalformedMessage
        );
        let message = Self {
            data: message_bytes,
        };
        require_eq!(
            expected_version,
            message.version()?,
            MessageTransmitterError::InvalidMessageVersion
        );
        Ok(message)
    }

    pub fn serialized_len(message_body_len: usize) -> Result<usize> {
        utils::checked_add(Self::MESSAGE_BODY_INDEX, message_body_len)
    }

    #[allow(clippy::too_many_arguments)]
    /// Serializes given fields into a message
    pub fn format_message(
        version: u32,
        source_domain: u32,
        destination_domain: u32,
        sender: &Pubkey,
        recipient: &Pubkey,
        destination_caller: &Pubkey,
        min_finality_threshold: u32,
        message_body: &Vec<u8>,
    ) -> Result<Vec<u8>> {
        let mut output = vec![0; Message::serialized_len(message_body.len())?];

        output[Self::VERSION_INDEX..Self::SOURCE_DOMAIN_INDEX]
            .copy_from_slice(&version.to_be_bytes());
        output[Self::SOURCE_DOMAIN_INDEX..Self::DESTINATION_DOMAIN_INDEX]
            .copy_from_slice(&source_domain.to_be_bytes());
        output[Self::DESTINATION_DOMAIN_INDEX..Self::NONCE_INDEX]
            .copy_from_slice(&destination_domain.to_be_bytes());
        output[Self::NONCE_INDEX..Self::SENDER_INDEX].copy_from_slice(&Self::EMPTY_NONCE);
        output[Self::SENDER_INDEX..Self::RECIPIENT_INDEX].copy_from_slice(sender.as_ref());
        output[Self::RECIPIENT_INDEX..Self::DESTINATION_CALLER_INDEX]
            .copy_from_slice(recipient.as_ref());
        output[Self::DESTINATION_CALLER_INDEX..Self::MIN_FINALITY_THRESHOLD_INDEX]
            .copy_from_slice(destination_caller.as_ref());
        output[Self::MIN_FINALITY_THRESHOLD_INDEX..Self::FINALITY_THRESHOLD_EXECUTED_INDEX]
            .copy_from_slice(&min_finality_threshold.to_be_bytes());
        output[Self::FINALITY_THRESHOLD_EXECUTED_INDEX..Self::MESSAGE_BODY_INDEX]
            .copy_from_slice(&Self::EMPTY_FINALITY_THRESHOLD_EXECUTED.to_be_bytes());

        if !message_body.is_empty() {
            output[Self::MESSAGE_BODY_INDEX..].copy_from_slice(message_body.as_slice());
        }

        Ok(output)
    }

    /// Returns Keccak hash of the message
    pub fn hash(&self) -> Hash {
        let mut hasher = Hasher::default();
        hasher.hash(self.data);
        hasher.result()
    }

    /// Returns Keccak hash of the fields set on the source chain for the message
    pub fn hash_source_fields(&self) -> Hash {
        let mut hasher = Hasher::default();
        hasher.hash(
            [
                &self.data[Self::VERSION_INDEX..Self::NONCE_INDEX],
                &self.data[Self::SENDER_INDEX..Self::FINALITY_THRESHOLD_EXECUTED_INDEX],
                &self.data.len().to_be_bytes().as_slice(),
            ]
            .concat()
            .as_slice(),
        );
        hasher.result()
    }

    /// Returns version field
    pub fn version(&self) -> Result<u32> {
        self.read_integer::<u32>(Self::VERSION_INDEX)
    }

    /// Returns nonce field
    pub fn nonce(&self) -> Result<[u8; 32]> {
        self.read_bytes::<32>(Self::NONCE_INDEX)
    }

    /// Returns sender field
    pub fn sender(&self) -> Result<Pubkey> {
        self.read_pubkey(Self::SENDER_INDEX)
    }

    /// Returns recipient field
    pub fn recipient(&self) -> Result<Pubkey> {
        self.read_pubkey(Self::RECIPIENT_INDEX)
    }

    /// Returns source_domain field
    pub fn source_domain(&self) -> Result<u32> {
        self.read_integer::<u32>(Self::SOURCE_DOMAIN_INDEX)
    }

    /// Returns destination_domain field
    pub fn destination_domain(&self) -> Result<u32> {
        self.read_integer::<u32>(Self::DESTINATION_DOMAIN_INDEX)
    }

    /// Returns destination_caller field
    pub fn destination_caller(&self) -> Result<Pubkey> {
        self.read_pubkey(Self::DESTINATION_CALLER_INDEX)
    }

    /// Returns min_finality_threshold field
    pub fn min_finality_threshold(&self) -> Result<u32> {
        self.read_integer::<u32>(Self::MIN_FINALITY_THRESHOLD_INDEX)
    }

    /// Returns finality_threshold_executed field
    pub fn finality_threshold_executed(&self) -> Result<u32> {
        self.read_integer::<u32>(Self::FINALITY_THRESHOLD_EXECUTED_INDEX)
    }

    /// Returns message_body field
    pub fn message_body(&self) -> &[u8] {
        &self.data[Self::MESSAGE_BODY_INDEX..]
    }

    ////////////////////
    // private helpers

    /// Reads integer field at the given offset
    fn read_integer<T>(&self, index: usize) -> Result<T>
    where
        T: num_traits::PrimInt + FromBytes + Display,
        &'a <T as FromBytes>::Bytes: TryFrom<&'a [u8]> + 'a,
    {
        Ok(T::from_be_bytes(
            self.data[index..utils::checked_add(index, std::mem::size_of::<T>())?]
                .try_into()
                .map_err(|_| MessageTransmitterError::MalformedMessage)?,
        ))
    }

    /// Reads pubkey field at the given offset
    fn read_pubkey(&self, index: usize) -> Result<Pubkey> {
        Ok(Pubkey::try_from(
            &self.data[index..utils::checked_add(index, std::mem::size_of::<Pubkey>())?],
        )
        .map_err(|_| MessageTransmitterError::MalformedMessage)?)
    }

    /// Reads bytes field at the given offset
    fn read_bytes<const N: usize>(&self, index: usize) -> Result<[u8; N]> {
        self.data[index..utils::checked_add(index, N)?]
            .try_into()
            .map_err(|_| error!(MessageTransmitterError::MalformedMessage))
    }
}
