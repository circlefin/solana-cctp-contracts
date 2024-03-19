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
 
 //! Events

use anchor_lang::prelude::*;

#[event]
pub struct SetTokenController {
    pub token_controller: Pubkey,
}

#[event]
pub struct PauserChanged {
    pub new_address: Pubkey,
}

#[event]
pub struct SetBurnLimitPerMessage {
    pub token: Pubkey,
    pub burn_limit_per_message: u64,
}

#[event]
pub struct LocalTokenAdded {
    pub custody: Pubkey,
    pub mint: Pubkey,
}

#[event]
pub struct LocalTokenRemoved {
    pub custody: Pubkey,
    pub mint: Pubkey,
}

#[event]
pub struct TokenPairLinked {
    pub local_token: Pubkey,
    pub remote_domain: u32,
    pub remote_token: Pubkey,
}

#[event]
pub struct TokenPairUnlinked {
    pub local_token: Pubkey,
    pub remote_domain: u32,
    pub remote_token: Pubkey,
}

#[event]
pub struct Pause {}

#[event]
pub struct Unpause {}

#[event]
pub struct TokenCustodyBurned {
    pub custody_token_account: Pubkey,
    pub amount: u64,
}
