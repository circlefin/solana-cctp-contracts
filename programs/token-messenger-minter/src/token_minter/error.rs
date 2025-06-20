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

//! Error types

use anchor_lang::prelude::*;

#[error_code]
pub enum TokenMinterError {
    #[msg("Invalid authority")]
    InvalidAuthority,
    #[msg("Invalid token minter state")]
    InvalidTokenMinterState,
    #[msg("Instruction is not allowed at this time")]
    ProgramPaused,
    #[msg("Invalid token pair state")]
    InvalidTokenPairState,
    #[msg("Invalid local token state")]
    InvalidLocalTokenState,
    #[msg("Invalid pauser")]
    InvalidPauser,
    #[msg("Invalid token controller")]
    InvalidTokenController,
    #[msg("Burn amount exceeded")]
    BurnAmountExceeded,
    #[msg("Invalid amount")]
    InvalidAmount,
}
