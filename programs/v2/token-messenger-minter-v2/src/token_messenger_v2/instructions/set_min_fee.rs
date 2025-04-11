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
    crate::{
        token_messenger_minter_v2::MIN_FEE_MULTIPLIER,
        token_messenger_v2::{error::TokenMessengerError, state::TokenMessenger, MinFeeSet},
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct SetMinFeeContext<'info> {
    #[account()]
    pub min_fee_controller: Signer<'info>,

    #[account(
        mut,
        has_one = min_fee_controller @ TokenMessengerError::InvalidAuthority,
    )]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct SetMinFeeParams {
    pub new_min_fee: u32,
}

// Instruction handler
pub fn set_min_fee(ctx: Context<SetMinFeeContext>, params: &SetMinFeeParams) -> Result<()> {
    require_gt!(
        MIN_FEE_MULTIPLIER,
        params.new_min_fee as u64,
        TokenMessengerError::MinFeeTooHigh
    );

    // Set the min fee
    ctx.accounts.token_messenger.min_fee = params.new_min_fee;

    // Emit the event
    emit_cpi!(MinFeeSet {
        new_min_fee: ctx.accounts.token_messenger.min_fee,
    });

    Ok(())
}
