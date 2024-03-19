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
 
 //! UnlinkTokenPair instruction handler

use {
    crate::token_minter::{
        error::TokenMinterError,
        events::TokenPairUnlinked,
        state::{TokenMinter, TokenPair},
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct UnlinkTokenPairContext<'info> {
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
            b"token_pair",
            token_pair.remote_domain.to_string().as_bytes(),
            token_pair.remote_token.as_ref()
        ],
        bump = token_pair.bump,
        close = payee
    )]
    pub token_pair: Box<Account<'info, TokenPair>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct UninkTokenPairParams {}

// Instruction handler
pub fn unlink_token_pair(
    ctx: Context<UnlinkTokenPairContext>,
    _params: &UninkTokenPairParams,
) -> Result<()> {
    let token_pair = ctx.accounts.token_pair.as_ref();

    emit_cpi!(TokenPairUnlinked {
        local_token: token_pair.local_token,
        remote_domain: token_pair.remote_domain,
        remote_token: token_pair.remote_token
    });

    Ok(())
}
