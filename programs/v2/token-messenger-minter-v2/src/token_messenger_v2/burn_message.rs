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

//! BurnMessage

use {
    crate::token_messenger_v2::error::TokenMessengerError, anchor_lang::prelude::*,
    message_transmitter_v2::utils, num_traits::FromBytes, std::fmt::Display,
};

#[derive(Clone, Debug)]
pub struct BurnMessage<'a> {
    data: &'a [u8],
}

impl<'a> BurnMessage<'a> {
    // Indices of each field in the message
    const VERSION_INDEX: usize = 0;
    const BURN_TOKEN_INDEX: usize = 4;
    const MINT_RECIPIENT_INDEX: usize = 36;
    const AMOUNT_INDEX: usize = 68;
    const MSG_SENDER_INDEX: usize = 100;
    const MAX_FEE_INDEX: usize = 132;
    const FEE_EXECUTED_INDEX: usize = 164;
    const EXPIRATION_BLOCK_INDEX: usize = 196;
    const HOOK_DATA_INDEX: usize = 228;

    // EVM amount, max fee, fee executed and expiration block are all 32 bytes while we use only
    // 8 bytes on Solana. Therefore we'll need to skip 24 bytes in the message
    const OFFSET: usize = 24;

    const EMPTY_FEE_EXECUTED: u64 = 0;
    const EMPTY_EXPIRATION_BLOCK: u64 = 0;

    /// Validates source array size and returns a new message
    pub fn new(expected_version: u32, message_bytes: &'a [u8]) -> Result<Self> {
        require_gte!(
            message_bytes.len(),
            Self::HOOK_DATA_INDEX,
            TokenMessengerError::MalformedMessage
        );
        let message = Self {
            data: message_bytes,
        };
        require_eq!(
            expected_version,
            message.version()?,
            TokenMessengerError::InvalidMessageBodyVersion
        );
        Ok(message)
    }

    pub fn serialized_len(hook_data_len: usize) -> Result<usize> {
        utils::checked_add(Self::HOOK_DATA_INDEX, hook_data_len)
    }

    #[allow(clippy::too_many_arguments)]
    /// Serializes given fields into a burn message
    pub fn format_message(
        version: u32,
        burn_token: &Pubkey,
        mint_recipient: &Pubkey,
        amount: u64,
        message_sender: &Pubkey,
        max_fee: u64,
        hook_data: &Vec<u8>,
    ) -> Result<Vec<u8>> {
        let mut output = vec![0; BurnMessage::serialized_len(hook_data.len())?];

        output[Self::VERSION_INDEX..Self::BURN_TOKEN_INDEX].copy_from_slice(&version.to_be_bytes());
        output[Self::BURN_TOKEN_INDEX..Self::MINT_RECIPIENT_INDEX]
            .copy_from_slice(burn_token.as_ref());
        output[Self::MINT_RECIPIENT_INDEX..Self::AMOUNT_INDEX]
            .copy_from_slice(mint_recipient.as_ref());
        output[(Self::AMOUNT_INDEX + Self::OFFSET)..Self::MSG_SENDER_INDEX]
            .copy_from_slice(&amount.to_be_bytes());
        output[Self::MSG_SENDER_INDEX..Self::MAX_FEE_INDEX]
            .copy_from_slice(message_sender.as_ref());
        output[(Self::MAX_FEE_INDEX + Self::OFFSET)..Self::FEE_EXECUTED_INDEX]
            .copy_from_slice(&max_fee.to_be_bytes());
        output[(Self::FEE_EXECUTED_INDEX + Self::OFFSET)..Self::EXPIRATION_BLOCK_INDEX]
            .copy_from_slice(&Self::EMPTY_FEE_EXECUTED.to_be_bytes());
        output[(Self::EXPIRATION_BLOCK_INDEX + Self::OFFSET)..Self::HOOK_DATA_INDEX]
            .copy_from_slice(&Self::EMPTY_EXPIRATION_BLOCK.to_be_bytes());

        if !hook_data.is_empty() {
            output[Self::HOOK_DATA_INDEX..].copy_from_slice(hook_data.as_slice());
        }

        Ok(output)
    }

    /// Returns version field
    pub fn version(&self) -> Result<u32> {
        self.read_integer::<u32>(Self::VERSION_INDEX)
    }

    /// Returns burn_token field
    pub fn burn_token(&self) -> Result<Pubkey> {
        self.read_pubkey(Self::BURN_TOKEN_INDEX)
    }

    /// Returns burn_token field as bytes
    pub fn burn_token_bytes(&self) -> Result<[u8; 32]> {
        Ok(self.read_pubkey(Self::BURN_TOKEN_INDEX)?.to_bytes())
    }

    /// Returns mint_recipient field
    pub fn mint_recipient(&self) -> Result<Pubkey> {
        self.read_pubkey(Self::MINT_RECIPIENT_INDEX)
    }

    /// Returns amount field
    pub fn amount(&self) -> Result<u64> {
        require!(
            self.data[Self::AMOUNT_INDEX..(Self::AMOUNT_INDEX + Self::OFFSET)]
                .iter()
                .all(|&x| x == 0),
            TokenMessengerError::MalformedMessage
        );
        self.read_integer::<u64>(Self::AMOUNT_INDEX + Self::OFFSET)
    }

    /// Returns message_sender field
    pub fn message_sender(&self) -> Result<Pubkey> {
        self.read_pubkey(Self::MSG_SENDER_INDEX)
    }

    /// Returns max_fee field
    pub fn max_fee(&self) -> Result<u64> {
        self.read_integer_with_offset::<u64>(Self::MAX_FEE_INDEX, Self::OFFSET)
    }

    /// Returns fee_executed field
    pub fn fee_executed(&self) -> Result<u64> {
        self.read_integer_with_offset::<u64>(Self::FEE_EXECUTED_INDEX, Self::OFFSET)
    }

    /// Returns expiration_block field
    pub fn expiration_block(&self) -> Result<u64> {
        self.read_integer_with_offset::<u64>(Self::EXPIRATION_BLOCK_INDEX, Self::OFFSET)
    }

    /// Returns hook data field
    pub fn hook_data(&self) -> &[u8] {
        &self.data[Self::HOOK_DATA_INDEX..]
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
                .map_err(|_| TokenMessengerError::MalformedMessage)?,
        ))
    }

    /// Reads integer field at the given index with additional offset
    fn read_integer_with_offset<T>(&self, index: usize, offset: usize) -> Result<T>
    where
        T: num_traits::PrimInt + FromBytes + Display,
        &'a <T as FromBytes>::Bytes: TryFrom<&'a [u8]> + 'a,
    {
        require!(
            self.data[index..(index + offset)].iter().all(|&x| x == 0),
            TokenMessengerError::MalformedMessage
        );
        Ok(T::from_be_bytes(
            self.data
                [(index + offset)..utils::checked_add(index + offset, std::mem::size_of::<T>())?]
                .try_into()
                .map_err(|_| TokenMessengerError::MalformedMessage)?,
        ))
    }

    /// Reads pubkey field at the given offset
    fn read_pubkey(&self, index: usize) -> Result<Pubkey> {
        Ok(Pubkey::try_from(
            &self.data[index..utils::checked_add(index, std::mem::size_of::<Pubkey>())?],
        )
        .map_err(|_| TokenMessengerError::MalformedMessage)?)
    }
}
