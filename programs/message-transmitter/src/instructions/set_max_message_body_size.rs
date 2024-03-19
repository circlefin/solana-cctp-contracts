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
 
 //! SetMaxMessageBodySize instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::MaxMessageBodySizeUpdated,
        state::MessageTransmitter,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct SetMaxMessageBodySizeContext<'info> {
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
pub struct SetMaxMessageBodySizeParams {
    pub new_max_message_body_size: u64,
}

// Instruction handler
pub fn set_max_message_body_size(
    ctx: Context<SetMaxMessageBodySizeContext>,
    params: &SetMaxMessageBodySizeParams,
) -> Result<()> {
    ctx.accounts.message_transmitter.max_message_body_size = params.new_max_message_body_size;

    emit_cpi!(MaxMessageBodySizeUpdated {
        new_max_message_body_size: ctx.accounts.message_transmitter.max_message_body_size
    });

    Ok(())
}
