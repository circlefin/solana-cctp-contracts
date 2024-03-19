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
 
 //! Unpause instruction handler

use {
    crate::{error::MessageTransmitterError, events::Unpause, state::MessageTransmitter},
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct UnpauseContext<'info> {
    #[account()]
    pub pauser: Signer<'info>,

    #[account(
        mut,
        has_one = pauser @ MessageTransmitterError::InvalidAuthority
    )]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct UnpauseParams {}

// Instruction handler
pub fn unpause(ctx: Context<UnpauseContext>, _params: &UnpauseParams) -> Result<()> {
    require!(
        ctx.accounts.message_transmitter.paused,
        MessageTransmitterError::InvalidMessageTransmitterState
    );

    ctx.accounts.message_transmitter.paused = false;

    emit_cpi!(Unpause {});

    Ok(())
}
