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
 
 //! SetSignatureThreshold instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::SignatureThresholdUpdated,
        state::MessageTransmitter,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct SetSignatureThresholdContext<'info> {
    #[account()]
    pub attester_manager: Signer<'info>,

    #[account(
        mut,
        has_one = attester_manager @ MessageTransmitterError::InvalidAuthority
    )]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct SetSignatureThresholdParams {
    pub new_signature_threshold: u32,
}

// Instruction handler
pub fn set_signature_threshold(
    ctx: Context<SetSignatureThresholdContext>,
    params: &SetSignatureThresholdParams,
) -> Result<()> {
    let message_transmitter = ctx.accounts.message_transmitter.as_mut();

    require_gt!(
        params.new_signature_threshold,
        0,
        MessageTransmitterError::InvalidSignatureThreshold
    );

    require_gte!(
        message_transmitter.enabled_attesters.len(),
        params.new_signature_threshold as usize,
        MessageTransmitterError::InvalidSignatureThreshold
    );

    require_neq!(
        message_transmitter.signature_threshold,
        params.new_signature_threshold,
        MessageTransmitterError::SignatureThresholdAlreadySet
    );

    let old_signature_threshold = message_transmitter.signature_threshold;

    message_transmitter.signature_threshold = params.new_signature_threshold;

    emit_cpi!(SignatureThresholdUpdated {
        old_signature_threshold,
        new_signature_threshold: params.new_signature_threshold
    });

    Ok(())
}
