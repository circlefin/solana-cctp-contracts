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

//! IsNonceUsed instruction handler
use {crate::state::UsedNonce, anchor_lang::prelude::*};

// Instruction accounts
#[derive(Accounts)]
pub struct IsNonceUsedContext<'info> {
    /// CHECK: Used nonce state
    /// Account will be explicitly loaded to avoid error when it's not initialized
    #[account()]
    pub used_nonce: UncheckedAccount<'info>,
}

// Instruction handler
pub fn is_nonce_used(ctx: Context<IsNonceUsedContext>) -> Result<bool> {
    // Check if the account data is empty
    if ctx.accounts.used_nonce.data_is_empty() {
        return Ok(false);
    }

    // Check that the account is owned by ours program
    require_keys_eq!(*ctx.accounts.used_nonce.owner, crate::ID);

    // Access the state of UsedNonce from the account
    let mut data: &[u8] = &ctx.accounts.used_nonce.data.borrow();

    // Try to convert the bytes into the UsedNonce struct
    let used_nonce = UsedNonce::try_deserialize(&mut data)?;

    // Check if nonce is used
    Ok(used_nonce.is_used)
}
