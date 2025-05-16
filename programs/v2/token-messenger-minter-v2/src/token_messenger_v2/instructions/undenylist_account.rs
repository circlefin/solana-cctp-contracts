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

//! Undenylist instruction handler

use crate::token_messenger_v2::{DenylistedAccount, UnDenylisted};
use {
    crate::token_messenger_v2::{error::TokenMessengerError, state::TokenMessenger},
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
#[instruction(params: UndenylistParams)]
pub struct UndenylistContext<'info> {
    #[account(mut)]
    pub payer: Signer<'info>,

    #[account()]
    pub denylister: Signer<'info>,

    #[account(has_one = denylister @ TokenMessengerError::InvalidAuthority)]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,

    #[account(
        mut,
        seeds = [b"denylist_account", params.account.key().as_ref()],
        bump,
        close = payer
    )]
    pub denylist_account: Account<'info, DenylistedAccount>,

    pub system_program: Program<'info, System>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct UndenylistParams {
    pub account: Pubkey,
}

// Instruction handler
pub fn undenylist_account(
    ctx: Context<UndenylistContext>,
    params: &UndenylistParams,
) -> Result<()> {
    // PDA representing denylist entry is deleted via close constraint.
    emit_cpi!(UnDenylisted {
        account: params.account
    });

    Ok(())
}
