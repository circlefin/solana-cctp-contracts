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
 
 //! SendMessage instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::MessageSent, message::Message,
        state::MessageTransmitter, utils,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
#[instruction(params: SendMessageParams)]
pub struct SendMessageContext<'info> {
    #[account(mut)]
    pub event_rent_payer: Signer<'info>,

    #[account(
        seeds = [b"sender_authority"],
        bump,
        seeds::program = sender_program.key()
    )]
    pub sender_authority_pda: Signer<'info>,

    #[account(mut)]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,

    #[account(
        init,
        payer = event_rent_payer,
        space = MessageSent::len(params.message_body.len())?,
    )]
    pub message_sent_event_data: Box<Account<'info, MessageSent>>,

    ///CHECK: Sender program address, e.g. TokenMessenger
    #[account(
        constraint = sender_program.executable
    )]
    pub sender_program: UncheckedAccount<'info>,

    pub system_program: Program<'info, System>,
}

// Instruction parameters
// NOTE: Do not reorder parameters fields. repr(C) is used to fix the layout of the struct
// so SendMessageWithCallerParams can be deserialized as SendMessageParams.
#[repr(C)]
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct SendMessageParams {
    pub destination_domain: u32,
    pub recipient: Pubkey,
    pub message_body: Vec<u8>,
}

// Instruction handler
pub fn send_message(ctx: Context<SendMessageContext>, params: &SendMessageParams) -> Result<u64> {
    send_message_helper(
        ctx.accounts.message_transmitter.as_mut(),
        ctx.accounts.message_sent_event_data.as_mut(),
        &ctx.accounts.event_rent_payer.key(),
        params.destination_domain,
        &params.recipient,
        &Pubkey::default(),
        &ctx.accounts.sender_program.key(),
        None,
        &params.message_body,
    )
}

/// Validates and formats message and emits MessageSent event
#[allow(clippy::too_many_arguments)]
pub fn send_message_helper(
    message_transmitter: &mut MessageTransmitter,
    message_sent_event_data: &mut MessageSent,
    event_rent_payer: &Pubkey,
    destination_domain: u32,
    recipient: &Pubkey,
    destination_caller: &Pubkey,
    sender: &Pubkey,
    nonce: Option<u64>,
    message_body: &Vec<u8>,
) -> Result<u64> {
    require!(
        !message_transmitter.paused,
        MessageTransmitterError::ProgramPaused
    );

    require_gte!(
        message_transmitter.max_message_body_size as usize,
        message_body.len(),
        MessageTransmitterError::MessageBodyLimitExceeded
    );

    require_keys_neq!(
        *recipient,
        Pubkey::default(),
        MessageTransmitterError::InvalidRecipient
    );

    // increase next_available_nonce
    let nonce = if let Some(nonce_value) = nonce {
        nonce_value
    } else {
        let nonce_value = message_transmitter.next_available_nonce;
        message_transmitter.next_available_nonce =
            utils::checked_add(message_transmitter.next_available_nonce, 1)?;
        nonce_value
    };

    // format message and emit event
    message_sent_event_data.rent_payer = *event_rent_payer;
    message_sent_event_data.message = Message::format_message(
        message_transmitter.version,
        message_transmitter.local_domain,
        destination_domain,
        nonce,
        sender,
        recipient,
        destination_caller,
        message_body,
    )?;

    Ok(nonce)
}
