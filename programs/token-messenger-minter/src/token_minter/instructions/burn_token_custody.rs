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
 
 //! BurnTokenCustody instruction handler

use {
    crate::token_minter::{
        error::TokenMinterError,
        events::TokenCustodyBurned,
        state::{LocalToken, TokenMinter},
    },
    anchor_lang::prelude::*,
    anchor_spl::token::{Burn, Mint, Token, TokenAccount},
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct BurnTokenCustodyContext<'info> {
    #[account(mut)]
    pub payee: Signer<'info>,

    #[account()]
    pub token_controller: Signer<'info>,

    #[account(
        has_one = token_controller @ TokenMinterError::InvalidAuthority,
    )]
    pub token_minter: Box<Account<'info, TokenMinter>>,

    #[account(
        seeds = [
            b"local_token",
            local_token.mint.key().as_ref()
        ],
        bump = local_token.bump
    )]
    pub local_token: Box<Account<'info, LocalToken>>,

    #[account(
        mut,
        constraint = custody_token_account.mint == local_token.mint,
        seeds = [
            b"custody",
            local_token.mint.as_ref()
        ],
        bump = local_token.custody_bump
    )]
    pub custody_token_account: Box<Account<'info, TokenAccount>>,

    #[account(
        mut,
        constraint = custody_token_account.mint == custody_token_mint.key()
    )]
    pub custody_token_mint: Box<Account<'info, Mint>>,

    pub token_program: Program<'info, Token>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct BurnTokenCustodyParams {
    amount: u64,
}

// Instruction handler
pub fn burn_token_custody(
    ctx: Context<BurnTokenCustodyContext>,
    params: &BurnTokenCustodyParams,
) -> Result<()> {
    let burn_amount = if params.amount <= ctx.accounts.custody_token_account.amount {
        params.amount
    } else {
        ctx.accounts.custody_token_account.amount
    };

    require_neq!(burn_amount, 0, TokenMinterError::InvalidAmount);

    let authority_seeds: &[&[&[u8]]] = &[&[b"token_minter", &[ctx.accounts.token_minter.bump]]];

    let context = CpiContext::new(
        ctx.accounts.token_program.to_account_info(),
        Burn {
            mint: ctx.accounts.custody_token_mint.to_account_info(),
            from: ctx.accounts.custody_token_account.to_account_info(),
            authority: ctx.accounts.token_minter.to_account_info(),
        },
    )
    .with_signer(authority_seeds);

    anchor_spl::token::burn(context, burn_amount)?;

    emit_cpi!(TokenCustodyBurned {
        custody_token_account: ctx.accounts.custody_token_account.key(),
        amount: burn_amount,
    });

    Ok(())
}
