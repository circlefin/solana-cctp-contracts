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
 
 //! BurnMessage

use {
    crate::token_messenger::error::TokenMessengerError, anchor_lang::prelude::*,
    message_transmitter::utils, num_traits::FromBytes, std::fmt::Display,
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
    // 4 byte version + 32 bytes burnToken + 32 bytes mintRecipient + 32 bytes amount + 32 bytes messageSender
    const BURN_MESSAGE_LEN: usize = 132;
    // EVM amount is 32 bytes while we use only 8 bytes on Solana
    const AMOUNT_OFFSET: usize = 24;

    /// Validates source array size and returns a new message
    pub fn new(expected_version: u32, message_bytes: &'a [u8]) -> Result<Self> {
        require_eq!(
            message_bytes.len(),
            Self::BURN_MESSAGE_LEN,
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

    #[allow(clippy::too_many_arguments)]
    /// Serializes given fields into a burn message
    pub fn format_message(
        version: u32,
        burn_token: &Pubkey,
        mint_recipient: &Pubkey,
        amount: u64,
        message_sender: &Pubkey,
    ) -> Result<Vec<u8>> {
        let mut output = vec![0; Self::BURN_MESSAGE_LEN];

        output[Self::VERSION_INDEX..Self::BURN_TOKEN_INDEX].copy_from_slice(&version.to_be_bytes());
        output[Self::BURN_TOKEN_INDEX..Self::MINT_RECIPIENT_INDEX]
            .copy_from_slice(burn_token.as_ref());
        output[Self::MINT_RECIPIENT_INDEX..Self::AMOUNT_INDEX]
            .copy_from_slice(mint_recipient.as_ref());
        output[(Self::AMOUNT_INDEX + Self::AMOUNT_OFFSET)..Self::MSG_SENDER_INDEX]
            .copy_from_slice(&amount.to_be_bytes());
        output[Self::MSG_SENDER_INDEX..Self::BURN_MESSAGE_LEN]
            .copy_from_slice(message_sender.as_ref());

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

    /// Returns mint_recipient field
    pub fn mint_recipient(&self) -> Result<Pubkey> {
        self.read_pubkey(Self::MINT_RECIPIENT_INDEX)
    }

    /// Returns amount field
    pub fn amount(&self) -> Result<u64> {
        require!(
            self.data[Self::AMOUNT_INDEX..(Self::AMOUNT_INDEX + Self::AMOUNT_OFFSET)]
                .iter()
                .all(|&x| x == 0),
            TokenMessengerError::MalformedMessage
        );
        self.read_integer::<u64>(Self::AMOUNT_INDEX + Self::AMOUNT_OFFSET)
    }

    /// Returns message_sender field
    pub fn message_sender(&self) -> Result<Pubkey> {
        self.read_pubkey(Self::MSG_SENDER_INDEX)
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

    /// Reads pubkey field at the given offset
    fn read_pubkey(&self, index: usize) -> Result<Pubkey> {
        Ok(Pubkey::try_from(
            &self.data[index..utils::checked_add(index, std::mem::size_of::<Pubkey>())?],
        )
        .map_err(|_| TokenMessengerError::MalformedMessage)?)
    }
}
