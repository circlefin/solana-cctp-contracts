/*
 * Copyright (c) 2025, Circle Internet Financial LTD All Rights Reserved.
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

pub mod accept_ownership;
pub mod add_remote_token_messenger;
pub mod denylist_account;
pub mod deposit_for_burn;
pub mod deposit_for_burn_with_hook;
pub mod handle_receive_finalized_message;
pub mod handle_receive_unfinalized_message;
pub mod initialize;
pub mod remove_remote_token_messenger;
pub mod set_fee_recipient;
pub mod set_min_fee;
pub mod set_min_fee_controller;
pub mod transfer_ownership;
pub mod undenylist_account;
pub mod update_denylister;

pub use {
    accept_ownership::*, add_remote_token_messenger::*, denylist_account::*, deposit_for_burn::*,
    deposit_for_burn_with_hook::*, handle_receive_finalized_message::*,
    handle_receive_unfinalized_message::*, initialize::*, remove_remote_token_messenger::*,
    set_fee_recipient::*, set_min_fee::*, set_min_fee_controller::*, transfer_ownership::*,
    undenylist_account::*, update_denylister::*,
};
