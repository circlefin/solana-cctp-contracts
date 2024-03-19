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
 
 //! DisableAttester instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::AttesterDisabled, state::MessageTransmitter, utils,
    },
    anchor_lang::prelude::*,
    solana_program::pubkey::PUBKEY_BYTES,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct DisableAttesterContext<'info> {
    #[account(mut)]
    pub payer: Signer<'info>,

    #[account()]
    pub attester_manager: Signer<'info>,

    // MessageTransmitter::INIT_SPACE includes one attester and reallocation happens before
    // the attester is removed from "enabled_attesters" this is why the logic below uses "2"
    #[account(
        mut,
        has_one = attester_manager @ MessageTransmitterError::InvalidAuthority,
        realloc = utils::DISCRIMINATOR_SIZE + MessageTransmitter::INIT_SPACE +
                    if message_transmitter.enabled_attesters.len() < 2 {
                        0
                    } else {
                        (message_transmitter.enabled_attesters.len() - 2) * PUBKEY_BYTES
                    },
        realloc::payer = payer,
        realloc::zero = false
    )]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,

    pub system_program: Program<'info, System>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct DisableAttesterParams {
    pub attester: Pubkey,
}

// Instruction handler
pub fn disable_attester(
    ctx: Context<DisableAttesterContext>,
    params: &DisableAttesterParams,
) -> Result<()> {
    let message_transmitter = ctx.accounts.message_transmitter.as_mut();

    require_gt!(
        message_transmitter.enabled_attesters.len(),
        1,
        MessageTransmitterError::TooFewEnabledAttesters
    );

    require_gt!(
        message_transmitter.enabled_attesters.len(),
        message_transmitter.signature_threshold as usize,
        MessageTransmitterError::SignatureThresholdTooLow
    );

    // disable the attester or return an error if already disabled
    if let Some(pos) = ctx
        .accounts
        .message_transmitter
        .enabled_attesters
        .iter()
        .position(|x| x == &params.attester)
    {
        ctx.accounts
            .message_transmitter
            .enabled_attesters
            .remove(pos);

        emit_cpi!(AttesterDisabled {
            attester: params.attester
        });
    } else {
        return err!(MessageTransmitterError::AttesterAlreadyDisabled);
    }

    Ok(())
}
