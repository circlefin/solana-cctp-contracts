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
 
 //! ReclaimEventAccount instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::MessageSent, message::Message,
        state::MessageTransmitter,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct ReclaimEventAccountContext<'info> {
    /// rent SOL receiver, should match original rent payer
    #[account(mut)]
    pub payee: Signer<'info>,

    #[account(mut)]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,

    #[account(
        mut,
        constraint = message_sent_event_data.rent_payer == payee.key(),
        close = payee,
    )]
    pub message_sent_event_data: Box<Account<'info, MessageSent>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct ReclaimEventAccountParams {
    pub attestation: Vec<u8>,
}

// Instruction handler
pub fn reclaim_event_account(
    ctx: Context<ReclaimEventAccountContext>,
    params: &ReclaimEventAccountParams,
) -> Result<()> {
    let message_transmitter = ctx.accounts.message_transmitter.as_mut();

    require!(
        !message_transmitter.paused,
        MessageTransmitterError::ProgramPaused
    );

    let event_data = ctx.accounts.message_sent_event_data.as_ref();

    let message = Message::new(message_transmitter.version, &event_data.message)?;

    message_transmitter.verify_attestation_signatures(&message.hash(), &params.attestation)?;

    require_eq!(
        message.source_domain()?,
        message_transmitter.local_domain,
        MessageTransmitterError::InvalidSourceDomain
    );

    Ok(())
}
