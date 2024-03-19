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
 
 //! AddRemoteTokenMessenger instruction handler

use {
    crate::token_messenger::{
        error::TokenMessengerError,
        events::RemoteTokenMessengerAdded,
        state::{RemoteTokenMessenger, TokenMessenger},
    },
    anchor_lang::prelude::*,
    message_transmitter::utils,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
#[instruction(params: AddRemoteTokenMessengerParams)]
pub struct AddRemoteTokenMessengerContext<'info> {
    #[account(mut)]
    pub payer: Signer<'info>,

    #[account()]
    pub owner: Signer<'info>,

    #[account(
        has_one = owner @ TokenMessengerError::InvalidAuthority
    )]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,

    // Reverts if there is already a TokenMessenger set for domain
    #[account(
        init,
        payer = payer,
        space = utils::DISCRIMINATOR_SIZE + RemoteTokenMessenger::INIT_SPACE,
        seeds = [
            b"remote_token_messenger",
            params.domain.to_string().as_bytes()
        ],
        bump
    )]
    pub remote_token_messenger: Box<Account<'info, RemoteTokenMessenger>>,

    pub system_program: Program<'info, System>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct AddRemoteTokenMessengerParams {
    pub domain: u32,
    pub token_messenger: Pubkey,
}

// Instruction handler
pub fn add_remote_token_messenger(
    ctx: Context<AddRemoteTokenMessengerContext>,
    params: &AddRemoteTokenMessengerParams,
) -> Result<()> {
    let remote_token_messenger = ctx.accounts.remote_token_messenger.as_mut();

    remote_token_messenger.domain = params.domain;
    remote_token_messenger.token_messenger = params.token_messenger;

    // validate the state
    require!(
        remote_token_messenger.validate(),
        TokenMessengerError::InvalidTokenMessengerState
    );

    emit_cpi!(RemoteTokenMessengerAdded {
        domain: params.domain,
        token_messenger: params.token_messenger
    });

    Ok(())
}
