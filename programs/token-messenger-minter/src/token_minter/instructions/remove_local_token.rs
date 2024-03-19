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
 
 //! RemoveLocalToken instruction handler

use {
    crate::token_minter::{
        error::TokenMinterError,
        events::LocalTokenRemoved,
        state::{LocalToken, TokenMinter},
    },
    anchor_lang::prelude::*,
    anchor_spl::token::{Token, TokenAccount},
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct RemoveLocalTokenContext<'info> {
    #[account(mut)]
    pub payee: Signer<'info>,

    #[account()]
    pub token_controller: Signer<'info>,

    #[account(
        has_one = token_controller @ TokenMinterError::InvalidAuthority,
    )]
    pub token_minter: Box<Account<'info, TokenMinter>>,

    #[account(
        mut,
        seeds = [
            b"local_token",
            local_token.mint.as_ref(),
        ],
        bump = local_token.bump,
        close = payee
    )]
    pub local_token: Box<Account<'info, LocalToken>>,

    #[account(
        mut,
        seeds = [
            b"custody",
            local_token.mint.as_ref()
        ],
        bump = local_token.custody_bump,
    )]
    pub custody_token_account: Box<Account<'info, TokenAccount>>,

    pub token_program: Program<'info, Token>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct RemoveLocalTokenParams {}

// Instruction handler
pub fn remove_local_token(
    ctx: Context<RemoveLocalTokenContext>,
    _params: &RemoveLocalTokenParams,
) -> Result<()> {
    let local_token = ctx.accounts.local_token.as_ref();

    ctx.accounts.token_minter.close_token_account(
        ctx.accounts.payee.to_account_info(),
        ctx.accounts.custody_token_account.to_account_info(),
        ctx.accounts.token_program.to_account_info(),
        ctx.accounts.token_minter.to_account_info(),
    )?;

    emit_cpi!(LocalTokenRemoved {
        custody: local_token.custody,
        mint: local_token.mint,
    });

    Ok(())
}
