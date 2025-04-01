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

//! UpdateDenylister instruction handler

use crate::token_messenger_v2::DenylisterChanged;
use {
    crate::token_messenger_v2::{error::TokenMessengerError, state::TokenMessenger},
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct UpdateDenylisterContext<'info> {
    #[account()]
    pub owner: Signer<'info>,

    #[account(
        mut,
        has_one = owner @ TokenMessengerError::InvalidAuthority,
    )]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct UpdateDenylisterParams {
    pub new_denylister: Pubkey,
}

// Instruction handler
pub fn update_denylister(
    ctx: Context<UpdateDenylisterContext>,
    params: &UpdateDenylisterParams,
) -> Result<()> {
    require_keys_neq!(
        params.new_denylister,
        Pubkey::default(),
        TokenMessengerError::InvalidDenylister
    );
    require_keys_neq!(
        params.new_denylister,
        ctx.accounts.token_messenger.denylister,
        TokenMessengerError::InvalidDenylister
    );

    let old_denylister = ctx.accounts.token_messenger.denylister;

    ctx.accounts.token_messenger.denylister = params.new_denylister;

    emit_cpi!(DenylisterChanged {
        old_denylister,
        new_denylister: params.new_denylister
    });

    Ok(())
}
