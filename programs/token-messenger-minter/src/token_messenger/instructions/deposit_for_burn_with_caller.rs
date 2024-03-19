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
 
 //! DepositForBurnWithCaller instruction handler

use {
    crate::{
        token_messenger::error::TokenMessengerError,
        token_messenger::instructions::DepositForBurnContext,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts are the same as for DepositForBurn instruction

// Instruction parameters
// NOTE: Do not reorder parameters fields. repr(C) is used to fix the layout of the struct
// so DepositForBurnWithCallerParams can be deserialized as DepositForBurnParams.
#[repr(C)]
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct DepositForBurnWithCallerParams {
    pub amount: u64,
    pub destination_domain: u32,
    pub mint_recipient: Pubkey,
    pub destination_caller: Pubkey,
}

// Instruction handler
pub fn deposit_for_burn_with_caller(
    ctx: Context<DepositForBurnContext>,
    params: &DepositForBurnWithCallerParams,
) -> Result<u64> {
    require_keys_neq!(
        params.destination_caller,
        Pubkey::default(),
        TokenMessengerError::InvalidDestinationCaller
    );

    crate::token_messenger::instructions::deposit_for_burn_helper(
        ctx,
        params.amount,
        params.destination_domain,
        &params.mint_recipient,
        &params.destination_caller,
    )
}
