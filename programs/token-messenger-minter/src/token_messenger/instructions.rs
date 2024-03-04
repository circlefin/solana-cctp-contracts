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
pub mod add_remote_token_messenger;
pub mod deposit_for_burn;
pub mod deposit_for_burn_with_caller;
pub mod handle_receive_message;
pub mod initialize;
pub mod remove_remote_token_messenger;
pub mod replace_deposit_for_burn;
pub mod transfer_ownership;

pub use {
    accept_ownership::*, add_remote_token_messenger::*, deposit_for_burn::*,
    deposit_for_burn_with_caller::*, handle_receive_message::*, initialize::*,
    remove_remote_token_messenger::*, replace_deposit_for_burn::*, transfer_ownership::*,
};
