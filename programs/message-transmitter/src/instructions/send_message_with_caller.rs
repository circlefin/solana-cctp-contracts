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
 
 //! SendMessageWithCaller instruction handler

use {
    crate::{error::MessageTransmitterError, instructions::SendMessageContext},
    anchor_lang::prelude::*,
};

// Instruction accounts are the same as for SendMessage instruction

// Instruction parameters
// NOTE: Do not reorder parameters fields. repr(C) is used to fix the layout of the struct
// so SendMessageWithCallerParams can be deserialized as SendMessageParams.
#[repr(C)]
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct SendMessageWithCallerParams {
    pub destination_domain: u32,
    pub recipient: Pubkey,
    pub message_body: Vec<u8>,
    pub destination_caller: Pubkey,
}

// Instruction handler
pub fn send_message_with_caller(
    ctx: Context<SendMessageContext>,
    params: &SendMessageWithCallerParams,
) -> Result<u64> {
    require_keys_neq!(
        params.destination_caller,
        Pubkey::default(),
        MessageTransmitterError::InvalidDestinationCaller
    );

    // send message
    crate::instructions::send_message_helper(
        ctx.accounts.message_transmitter.as_mut(),
        ctx.accounts.message_sent_event_data.as_mut(),
        &ctx.accounts.event_rent_payer.key(),
        params.destination_domain,
        &params.recipient,
        &params.destination_caller,
        &ctx.accounts.sender_program.key(),
        None,
        &params.message_body,
    )
}
