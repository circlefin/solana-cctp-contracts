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

//! HandleReceiveUnfinalizedMessage instruction handler

use {
    crate::token_messenger_v2::{
        error::TokenMessengerError,
        instructions::{
            handle_receive_message, HandleReceiveMessageContext, HandleReceiveMessageParams,
        },
    },
    anchor_lang::prelude::*,
};

/////////////////////////////////////////////////////////////////////////////
/// IMPORTANT!
/// If you modify this instruction to allow further arbitrary CPI calls,
/// make sure to forbid self-reentrancy. Otherwise, handle_receive_unfinalized_message
/// can be called again with intact signatures and data that can lead to
/// loss of funds. An example of a reentrancy check would be adding a
/// constraint to the callee program account:
/// constraint = callee.key() != crate::ID
/// /////////////////////////////////////////////////////////////////////////

pub const TOKEN_MESSENGER_MIN_FINALITY_THRESHOLD: u32 = 500;

// Instruction handler
pub fn handle_receive_unfinalized_message(
    ctx: Context<HandleReceiveMessageContext>,
    params: &HandleReceiveMessageParams,
) -> Result<()> {
    // Check that the finality executed is not lower than the minimum finality, reserving
    // thresholds lower than TOKEN_MESSENGER_MIN_FINALITY_THRESHOLD for potential future use-cases.
    require_gte!(
        params.finality_threshold_executed,
        TOKEN_MESSENGER_MIN_FINALITY_THRESHOLD,
        TokenMessengerError::UnsupportedFinalityThreshold
    );

    // Call the common processing function.
    handle_receive_message(ctx, params)
}
