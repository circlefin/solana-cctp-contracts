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
 
 //! TransferOwnership instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::OwnershipTransferStarted, state::MessageTransmitter,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct TransferOwnershipContext<'info> {
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
pub struct TransferOwnershipParams {
    pub new_owner: Pubkey,
}

// Instruction handler
pub fn transfer_ownership(
    ctx: Context<TransferOwnershipContext>,
    params: &TransferOwnershipParams,
) -> Result<()> {
    if [
        Pubkey::default(),
        ctx.accounts.owner.key(),
        ctx.accounts.message_transmitter.pending_owner,
    ]
    .contains(&params.new_owner)
    {
        return err!(MessageTransmitterError::InvalidOwner);
    }

    let message_transmitter = ctx.accounts.message_transmitter.as_mut();

    message_transmitter.pending_owner = params.new_owner;

    emit_cpi!(OwnershipTransferStarted {
        previous_owner: message_transmitter.owner,
        new_owner: message_transmitter.pending_owner
    });

    Ok(())
}
