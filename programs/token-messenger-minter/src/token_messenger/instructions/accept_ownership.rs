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
 
 //! AcceptOwnership instruction handler

use {
    crate::token_messenger::{
        error::TokenMessengerError, events::OwnershipTransferred, state::TokenMessenger,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct AcceptOwnershipContext<'info> {
    #[account()]
    pub pending_owner: Signer<'info>,

    #[account(
        mut,
        has_one = pending_owner @ TokenMessengerError::InvalidAuthority
    )]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct AcceptOwnershipParams {}

// Instruction handler
pub fn accept_ownership(
    ctx: Context<AcceptOwnershipContext>,
    _params: &AcceptOwnershipParams,
) -> Result<()> {
    let token_messenger = ctx.accounts.token_messenger.as_mut();

    let previous_owner = token_messenger.owner;

    // update owners
    token_messenger.owner = token_messenger.pending_owner;
    token_messenger.pending_owner = Pubkey::default();

    emit_cpi!(OwnershipTransferred {
        previous_owner,
        new_owner: token_messenger.owner
    });

    Ok(())
}
