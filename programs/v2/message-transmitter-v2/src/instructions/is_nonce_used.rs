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

use {crate::state::UsedNonces, anchor_lang::prelude::*};

// Instruction accounts
#[derive(Accounts)]
pub struct IsNonceUsedContext<'info> {
    /// CHECK: Used nonces state
    /// Account will be explicitly loaded to avoid error when it's not initialized
    #[account()]
    pub used_nonces: UncheckedAccount<'info>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct IsNonceUsedParams {
    pub nonce: u64,
}

// Instruction handler
pub fn is_nonce_used(ctx: Context<IsNonceUsedContext>, params: &IsNonceUsedParams) -> Result<bool> {
    // Attempt to access the state of UsedNonces from the account
    let used_nonces_account_data = ctx.accounts.used_nonces.data.borrow();
    
    // Check if the account data is empty
    if used_nonces_account_data.is_empty() {
        return Ok(false);
    }
    
    require_keys_eq!(*ctx.accounts.used_nonces.owner, crate::ID);

    // Try to convert the bytes into the UsedNonces struct
    let used_nonces: UsedNonces = UsedNonces::try_from_slice(&used_nonces_account_data)?;
    
    // Check if nonce is used
    Ok(used_nonces.is_nonce_used(params.nonce)?)
}
