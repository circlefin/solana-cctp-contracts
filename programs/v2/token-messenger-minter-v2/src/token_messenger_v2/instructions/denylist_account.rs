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

//! Denylist instruction handler

use {
    crate::token_messenger_v2::{
        error::TokenMessengerError, events::Denylisted, state::TokenMessenger, DenylistedAccount,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
#[instruction(params: DenylistParams)]
pub struct DenylistContext<'info> {
    #[account(mut)]
    pub payer: Signer<'info>,

    #[account()]
    pub denylister: Signer<'info>,

    #[account(has_one = denylister @ TokenMessengerError::InvalidAuthority)]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,

    /// CHECK: We create this PDA to represent the denylist entry.
    #[account(
        init,
        payer = payer,
        space = DenylistedAccount::DISCRIMINATOR.len() + DenylistedAccount::INIT_SPACE,
        seeds = [b"denylist_account", params.account.key().as_ref()],
        bump,
    )]
    pub denylist_account: Box<Account<'info, DenylistedAccount>>,

    pub system_program: Program<'info, System>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct DenylistParams {
    pub account: Pubkey,
}

// Instruction handler
pub fn denylist_account(ctx: Context<DenylistContext>, params: &DenylistParams) -> Result<()> {
    // PDA representing denylist entry is created via init constraint.
    let denylist_account = ctx.accounts.denylist_account.as_mut();
    denylist_account.account = params.account;

    emit_cpi!(Denylisted {
        account: params.account,
    });

    Ok(())
}
