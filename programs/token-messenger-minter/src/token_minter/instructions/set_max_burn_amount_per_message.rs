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
 
 //! SetMaxBurnAmountPerMessage instruction handler

use {
    crate::token_minter::{
        error::TokenMinterError,
        events::SetBurnLimitPerMessage,
        state::{LocalToken, TokenMinter},
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct SetMaxBurnAmountPerMessageContext<'info> {
    #[account()]
    pub token_controller: Signer<'info>,

    #[account(
        has_one = token_controller @ TokenMinterError::InvalidAuthority
    )]
    pub token_minter: Box<Account<'info, TokenMinter>>,

    #[account(
        mut,
        seeds = [
            b"local_token",
            local_token.mint.as_ref(),
        ],
        bump = local_token.bump,
    )]
    pub local_token: Box<Account<'info, LocalToken>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct SetMaxBurnAmountPerMessageParams {
    pub burn_limit_per_message: u64,
}

// Instruction handler
pub fn set_max_burn_amount_per_message(
    ctx: Context<SetMaxBurnAmountPerMessageContext>,
    params: &SetMaxBurnAmountPerMessageParams,
) -> Result<()> {
    let local_token = ctx.accounts.local_token.as_mut();

    local_token.burn_limit_per_message = params.burn_limit_per_message;

    emit_cpi!(SetBurnLimitPerMessage {
        token: local_token.mint,
        burn_limit_per_message: local_token.burn_limit_per_message
    });

    Ok(())
}
