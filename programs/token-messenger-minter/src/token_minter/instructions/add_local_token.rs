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
 
 //! AddLocalToken instruction handler

use {
    crate::token_minter::{
        error::TokenMinterError,
        events::LocalTokenAdded,
        state::{LocalToken, TokenMinter},
    },
    anchor_lang::prelude::*,
    anchor_spl::token::{Mint, Token, TokenAccount},
    message_transmitter::utils,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct AddLocalTokenContext<'info> {
    #[account(mut)]
    pub payer: Signer<'info>,

    #[account()]
    pub token_controller: Signer<'info>,

    #[account(
        has_one = token_controller @ TokenMinterError::InvalidAuthority,
    )]
    pub token_minter: Box<Account<'info, TokenMinter>>,

    // Reverts if there is already a local token for the given mint
    #[account(
        init,
        payer = payer,
        space = utils::DISCRIMINATOR_SIZE + LocalToken::INIT_SPACE,
        seeds = [
            b"local_token",
            local_token_mint.key().as_ref()
        ],
        bump
    )]
    pub local_token: Box<Account<'info, LocalToken>>,

    #[account(
        init,
        payer = payer,
        token::mint = local_token_mint,
        token::authority = token_minter,
        seeds = [
            b"custody",
            local_token_mint.key().as_ref()
        ],
        bump
    )]
    pub custody_token_account: Box<Account<'info, TokenAccount>>,

    #[account()]
    pub local_token_mint: Box<Account<'info, Mint>>,

    pub token_program: Program<'info, Token>,
    pub system_program: Program<'info, System>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct AddLocalTokenParams {}

// Instruction handler
pub fn add_local_token(
    ctx: Context<AddLocalTokenContext>,
    _params: &AddLocalTokenParams,
) -> Result<()> {
    let local_token = ctx.accounts.local_token.as_mut();

    local_token.custody = ctx.accounts.custody_token_account.key();
    local_token.mint = ctx.accounts.local_token_mint.key();
    local_token.bump = *ctx
        .bumps
        .get("local_token")
        .ok_or(ProgramError::InvalidSeeds)?;
    local_token.custody_bump = *ctx
        .bumps
        .get("custody_token_account")
        .ok_or(ProgramError::InvalidSeeds)?;

    // validate state
    require!(
        local_token.validate(),
        TokenMinterError::InvalidLocalTokenState
    );

    emit_cpi!(LocalTokenAdded {
        custody: local_token.custody,
        mint: local_token.mint,
    });

    Ok(())
}
