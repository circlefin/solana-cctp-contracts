/*
 * Copyright (c) 2024, Circle Internet Financial Limited All Rights Reserved.
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
pub mod disable_attester;
pub mod enable_attester;
pub mod get_nonce_pda;
pub mod initialize;
pub mod is_nonce_used;
pub mod pause;
pub mod receive_message;
pub mod reclaim_event_account;
pub mod replace_message;
pub mod send_message;
pub mod send_message_with_caller;
pub mod set_max_message_body_size;
pub mod set_signature_threshold;
pub mod transfer_ownership;
pub mod unpause;
pub mod update_attester_manager;
pub mod update_pauser;

pub use {
    accept_ownership::*, disable_attester::*, enable_attester::*, get_nonce_pda::*, initialize::*,
    is_nonce_used::*, pause::*, receive_message::*, reclaim_event_account::*, replace_message::*,
    send_message::*, send_message_with_caller::*, set_max_message_body_size::*,
    set_signature_threshold::*, transfer_ownership::*, unpause::*, update_attester_manager::*,
    update_pauser::*,
};
