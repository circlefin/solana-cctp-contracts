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
 
 //! RemoveRemoteTokenMessenger instruction handler

use {
    crate::token_messenger::{
        error::TokenMessengerError,
        events::RemoteTokenMessengerRemoved,
        state::{RemoteTokenMessenger, TokenMessenger},
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct RemoveRemoteTokenMessengerContext<'info> {
    #[account(mut)]
    pub payee: Signer<'info>,

    #[account()]
    pub owner: Signer<'info>,

    #[account(
        has_one = owner @ TokenMessengerError::InvalidAuthority
    )]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,

    #[account(
        mut,
        seeds = [
            b"remote_token_messenger",
            remote_token_messenger.domain.to_string().as_bytes(),
        ],
        bump,
        close = payee
    )]
    pub remote_token_messenger: Box<Account<'info, RemoteTokenMessenger>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct RemoveRemoteTokenMessengerParams {}

// Instruction handler
pub fn remove_remote_token_messenger(
    ctx: Context<RemoveRemoteTokenMessengerContext>,
    _params: &RemoveRemoteTokenMessengerParams,
) -> Result<()> {
    emit_cpi!(RemoteTokenMessengerRemoved {
        domain: ctx.accounts.remote_token_messenger.domain,
        token_messenger: ctx.accounts.remote_token_messenger.token_messenger
    });

    Ok(())
}
