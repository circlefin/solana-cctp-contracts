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

//! GetNoncePDA instruction handler

use {
    crate::state::{MessageTransmitter, UsedNonces},
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct GetNoncePDAContext<'info> {
    #[account()]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct GetNoncePDAParams {
    pub nonce: u64,
    pub source_domain: u32,
}

// Instruction handler
pub fn get_nonce_pda(
    _ctx: Context<GetNoncePDAContext>,
    params: &GetNoncePDAParams,
) -> Result<Pubkey> {
    Ok(Pubkey::find_program_address(
        &[
            b"used_nonces",
            params.source_domain.to_string().as_bytes(),
            UsedNonces::used_nonces_seed_delimiter(params.source_domain),
            UsedNonces::first_nonce(params.nonce)?
                .to_string()
                .as_bytes(),
        ],
        &crate::ID,
    )
    .0)
}
