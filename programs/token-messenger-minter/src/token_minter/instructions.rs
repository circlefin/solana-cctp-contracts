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
 
 //! Instructions

pub mod add_local_token;
pub mod burn_token_custody;
pub mod link_token_pair;
pub mod pause;
pub mod remove_local_token;
pub mod set_max_burn_amount_per_message;
pub mod set_token_controller;
pub mod unlink_token_pair;
pub mod unpause;
pub mod update_pauser;

pub use {
    add_local_token::*, burn_token_custody::*, link_token_pair::*, pause::*, remove_local_token::*,
    set_max_burn_amount_per_message::*, set_token_controller::*, unlink_token_pair::*, unpause::*,
    update_pauser::*,
};
