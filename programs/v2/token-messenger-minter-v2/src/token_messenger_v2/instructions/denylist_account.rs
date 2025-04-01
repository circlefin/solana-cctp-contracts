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
        error::TokenMessengerError, events::Denylisted, state::TokenMessenger
    },
    anchor_lang::prelude::*,
    anchor_lang::solana_program::pubkey::PUBKEY_BYTES,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct DenylistContext<'info> {
    #[account(mut)]
    pub payer: Signer<'info>,

    #[account()]
    pub denylister: Signer<'info>,

    // Allocate space for the account to be added in the denylist
    #[account(
        mut,
        has_one = denylister @ TokenMessengerError::InvalidAuthority,
        realloc = TokenMessenger::DISCRIMINATOR.len() + TokenMessenger::INIT_SPACE + (token_messenger.denylist.len() + 1) * PUBKEY_BYTES,
        realloc::payer = payer,
        realloc::zero = false
    )]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,

    pub system_program: Program<'info, System>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct DenylistParams {
    pub account: Pubkey,
}

// Instruction handler
pub fn denylist_account(
    ctx: Context<DenylistContext>,
    params: &DenylistParams,
) -> Result<()> {
    require!(
        !ctx.accounts
            .token_messenger
            .is_account_denylisted(&params.account),
        TokenMessengerError::AlreadyDenylisted
    );

    // Add account to denylist
    ctx.accounts
        .token_messenger
        .denylist
        .push(params.account);

    emit_cpi!(Denylisted {
        account: params.account,
    });

    Ok(())
}
