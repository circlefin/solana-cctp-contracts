/*
 * Copyright (c) 2024, Circle Internet Financial Limited All Rights Reserved.
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
 
 //! LinkTokenPair instruction handler

use {
    crate::token_minter::{
        error::TokenMinterError,
        events::TokenPairLinked,
        state::{TokenMinter, TokenPair},
    },
    anchor_lang::prelude::*,
    message_transmitter::utils,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
#[instruction(params: LinkTokenPairParams)]
pub struct LinkTokenPairContext<'info> {
    #[account(mut)]
    pub payer: Signer<'info>,

    #[account()]
    pub token_controller: Signer<'info>,

    #[account(
        has_one = token_controller @ TokenMinterError::InvalidAuthority,
    )]
    pub token_minter: Box<Account<'info, TokenMinter>>,

    // Reverts if there is already a token pair linked for domain
    #[account(
        init,
        payer = payer,
        space = utils::DISCRIMINATOR_SIZE + TokenPair::INIT_SPACE,
        seeds = [
            b"token_pair",
            params.remote_domain.to_string().as_bytes(),
            params.remote_token.as_ref()
        ],
        bump
    )]
    pub token_pair: Box<Account<'info, TokenPair>>,

    pub system_program: Program<'info, System>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct LinkTokenPairParams {
    pub local_token: Pubkey,
    pub remote_domain: u32,
    pub remote_token: Pubkey,
}

// Instruction handler
pub fn link_token_pair(
    ctx: Context<LinkTokenPairContext>,
    params: &LinkTokenPairParams,
) -> Result<()> {
    let token_pair = ctx.accounts.token_pair.as_mut();

    token_pair.remote_domain = params.remote_domain;
    token_pair.remote_token = params.remote_token;
    token_pair.local_token = params.local_token;
    token_pair.bump = *ctx
        .bumps
        .get("token_pair")
        .ok_or(ProgramError::InvalidSeeds)?;

    // validate state
    require!(
        token_pair.validate(),
        TokenMinterError::InvalidTokenPairState
    );

    emit_cpi!(TokenPairLinked {
        local_token: params.local_token,
        remote_domain: params.remote_domain,
        remote_token: params.remote_token
    });

    Ok(())
}
