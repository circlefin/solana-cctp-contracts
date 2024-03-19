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
 
 //! State

use anchor_lang::prelude::*;

#[account]
#[derive(Debug, InitSpace)]
pub struct TokenMessenger {
    pub owner: Pubkey,
    pub pending_owner: Pubkey,
    pub local_message_transmitter: Pubkey,
    pub message_body_version: u32,
    pub authority_bump: u8,
}

#[account]
#[derive(Debug, InitSpace)]
pub struct RemoteTokenMessenger {
    pub domain: u32,
    pub token_messenger: Pubkey,
}

impl TokenMessenger {
    pub fn validate(&self) -> bool {
        self.owner != Pubkey::default() && self.local_message_transmitter != Pubkey::default()
    }
}

impl RemoteTokenMessenger {
    pub fn validate(&self) -> bool {
        self.token_messenger != Pubkey::default()
    }
}
