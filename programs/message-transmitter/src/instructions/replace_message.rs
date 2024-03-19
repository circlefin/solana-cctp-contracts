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
 
 //! ReplaceMessage instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::MessageSent, message::Message,
        state::MessageTransmitter,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
#[instruction(params: ReplaceMessageParams)]
pub struct ReplaceMessageContext<'info> {
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
        space = MessageSent::len(params.new_message_body.len())?,
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
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct ReplaceMessageParams {
    pub original_message: Vec<u8>,
    pub original_attestation: Vec<u8>,
    pub new_message_body: Vec<u8>,
    pub new_destination_caller: Pubkey,
}

// Instruction handler
pub fn replace_message(
    ctx: Context<ReplaceMessageContext>,
    params: &ReplaceMessageParams,
) -> Result<u64> {
    let message_transmitter = ctx.accounts.message_transmitter.as_mut();

    require!(
        !message_transmitter.paused,
        MessageTransmitterError::ProgramPaused
    );

    let message = Message::new(message_transmitter.version, &params.original_message)?;

    message_transmitter
        .verify_attestation_signatures(&message.hash(), &params.original_attestation)?;

    require_keys_eq!(
        message.sender()?,
        ctx.accounts.sender_program.key(),
        MessageTransmitterError::SenderNotPermitted
    );

    require_eq!(
        message.source_domain()?,
        message_transmitter.local_domain,
        MessageTransmitterError::InvalidSourceDomain
    );

    // send updated message
    crate::instructions::send_message_helper(
        message_transmitter,
        ctx.accounts.message_sent_event_data.as_mut(),
        &ctx.accounts.event_rent_payer.key(),
        message.destination_domain()?,
        &message.recipient()?,
        &params.new_destination_caller,
        &ctx.accounts.sender_program.key(),
        Some(message.nonce()?),
        &params.new_message_body,
    )
}
