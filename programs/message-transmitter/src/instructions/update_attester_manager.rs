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
 
 //! UpdateAttesterManager instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::AttesterManagerUpdated, state::MessageTransmitter,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct UpdateAttesterManagerContext<'info> {
    #[account()]
    pub owner: Signer<'info>,

    #[account(
        mut,
        has_one = owner @ MessageTransmitterError::InvalidAuthority
    )]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct UpdateAttesterManagerParams {
    pub new_attester_manager: Pubkey,
}

// Instruction handler
pub fn update_attester_manager(
    ctx: Context<UpdateAttesterManagerContext>,
    params: &UpdateAttesterManagerParams,
) -> Result<()> {
    require_keys_neq!(
        params.new_attester_manager,
        Pubkey::default(),
        MessageTransmitterError::InvalidAttesterManager
    );
    require_keys_neq!(
        params.new_attester_manager,
        ctx.accounts.message_transmitter.attester_manager,
        MessageTransmitterError::InvalidAttesterManager
    );

    let previous_attester_manager = ctx.accounts.message_transmitter.attester_manager;

    ctx.accounts.message_transmitter.attester_manager = params.new_attester_manager;

    emit_cpi!(AttesterManagerUpdated {
        previous_attester_manager,
        new_attester_manager: params.new_attester_manager
    });

    Ok(())
}
