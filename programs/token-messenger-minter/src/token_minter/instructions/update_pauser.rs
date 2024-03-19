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
 
 //! UpdatePauser instruction handler

use {
    crate::{
        token_messenger::{error::TokenMessengerError, state::TokenMessenger},
        token_minter::{error::TokenMinterError, events::PauserChanged, state::TokenMinter},
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct UpdatePauserContext<'info> {
    #[account()]
    pub owner: Signer<'info>,

    #[account(
        has_one = owner @ TokenMessengerError::InvalidAuthority
    )]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,

    #[account(mut)]
    pub token_minter: Box<Account<'info, TokenMinter>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct UpdatePauserParams {
    pub new_pauser: Pubkey,
}

// Instruction handler
pub fn update_pauser(ctx: Context<UpdatePauserContext>, params: &UpdatePauserParams) -> Result<()> {
    require_keys_neq!(
        params.new_pauser,
        Pubkey::default(),
        TokenMinterError::InvalidPauser
    );

    ctx.accounts.token_minter.pauser = params.new_pauser;

    emit_cpi!(PauserChanged {
        new_address: ctx.accounts.token_minter.pauser
    });

    Ok(())
}
