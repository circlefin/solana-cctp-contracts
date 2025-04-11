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
        error::TokenMessengerError, state::TokenMessenger, FeeRecipientSet,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct SetFeeRecipientContext<'info> {
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
pub struct SetFeeRecipientParams {
    pub new_fee_recipient: Pubkey,
}

// Instruction handler
pub fn set_fee_recipient(
    ctx: Context<SetFeeRecipientContext>,
    params: &SetFeeRecipientParams,
) -> Result<()> {
    require_keys_neq!(
        params.new_fee_recipient,
        Pubkey::default(),
        TokenMessengerError::InvalidFeeRecipient
    );
    require_keys_neq!(
        params.new_fee_recipient,
        ctx.accounts.token_messenger.fee_recipient,
        TokenMessengerError::InvalidFeeRecipient
    );

    // Set the fee recipient
    ctx.accounts.token_messenger.fee_recipient = params.new_fee_recipient;

    // Emit the event
    emit_cpi!(FeeRecipientSet {
        new_fee_recipient: ctx.accounts.token_messenger.fee_recipient,
    });

    Ok(())
}
