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
 
 //! EnableAttester instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::AttesterEnabled, state::MessageTransmitter, utils,
    },
    anchor_lang::prelude::*,
    solana_program::pubkey::PUBKEY_BYTES,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct EnableAttesterContext<'info> {
    #[account(mut)]
    pub payer: Signer<'info>,

    #[account()]
    pub attester_manager: Signer<'info>,

    // MessageTransmitter::INIT_SPACE includes one attester and reallocation happens before
    // the attester is added to "enabled_attesters" this is why the logic below uses
    // "enabled_attesters.len()" and not +/-1
    #[account(
        mut,
        has_one = attester_manager @ MessageTransmitterError::InvalidAuthority,
        realloc = utils::DISCRIMINATOR_SIZE + MessageTransmitter::INIT_SPACE + message_transmitter.enabled_attesters.len() * PUBKEY_BYTES,
        realloc::payer = payer,
        realloc::zero = false
    )]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,

    pub system_program: Program<'info, System>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct EnableAttesterParams {
    pub new_attester: Pubkey,
}

// Instruction handler
pub fn enable_attester(
    ctx: Context<EnableAttesterContext>,
    params: &EnableAttesterParams,
) -> Result<()> {
    require_keys_neq!(
        params.new_attester,
        Pubkey::default(),
        MessageTransmitterError::InvalidAttester
    );

    require!(
        !ctx.accounts
            .message_transmitter
            .is_enabled_attester(&params.new_attester),
        MessageTransmitterError::AttesterAlreadyEnabled
    );

    // enable the attester
    ctx.accounts
        .message_transmitter
        .enabled_attesters
        .push(params.new_attester);

    emit_cpi!(AttesterEnabled {
        attester: params.new_attester
    });

    Ok(())
}
