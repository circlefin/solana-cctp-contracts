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

use {
    crate::token_messenger_v2::{
        error::TokenMessengerError, state::TokenMessenger, MinFeeControllerSet,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct SetMinFeeControllerContext<'info> {
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
pub struct SetMinFeeControllerParams {
    pub new_min_fee_controller: Pubkey,
}

// Instruction handler
pub fn set_min_fee_controller(
    ctx: Context<SetMinFeeControllerContext>,
    params: &SetMinFeeControllerParams,
) -> Result<()> {
    require_keys_neq!(
        params.new_min_fee_controller,
        Pubkey::default(),
        TokenMessengerError::InvalidMinFeeController
    );
    require_keys_neq!(
        params.new_min_fee_controller,
        ctx.accounts.token_messenger.min_fee_controller,
        TokenMessengerError::InvalidMinFeeController
    );

    // Set the min fee controller
    ctx.accounts.token_messenger.min_fee_controller = params.new_min_fee_controller;

    // Emit the event
    emit_cpi!(MinFeeControllerSet {
        new_min_fee_controller: params.new_min_fee_controller,
    });

    Ok(())
}
