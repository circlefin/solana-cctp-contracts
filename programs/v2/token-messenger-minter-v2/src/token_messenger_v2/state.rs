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

//! State

use anchor_lang::prelude::*;

use crate::token_messenger_minter_v2::MIN_FEE_MULTIPLIER;

use super::TokenMessengerError;

#[account]
#[derive(Debug, InitSpace)]
pub struct TokenMessenger {
    pub denylister: Pubkey,
    pub owner: Pubkey,
    pub pending_owner: Pubkey,
    pub message_body_version: u32,
    pub authority_bump: u8,
    pub fee_recipient: Pubkey,
    pub min_fee_controller: Pubkey,
    pub min_fee: u32,
}

#[account]
#[derive(Debug, InitSpace)]
pub struct RemoteTokenMessenger {
    pub domain: u32,
    pub token_messenger: Pubkey,
}

#[account]
#[derive(Debug, InitSpace)]
pub struct DenylistedAccount {
    pub account: Pubkey,
}

impl TokenMessenger {
    pub fn validate(&self) -> bool {
        self.owner != Pubkey::default()
            && self.denylister != Pubkey::default()
            && self.fee_recipient != Pubkey::default()
            && self.min_fee_controller != Pubkey::default()
    }

    /// Calculates the minimum fee amount for a given amount
    pub fn get_min_fee_amount(&self, amount: u64) -> Result<u64> {
        if self.min_fee == 0 {
            return Ok(0);
        }

        require_gt!(amount, 1, TokenMessengerError::InvalidAmount);

        // Cast amount and fees to 128 to avoid overflow, then cast result back to u64 when returning
        let fee = (amount as u128)
            .checked_mul(self.min_fee as u128)
            .ok_or(TokenMessengerError::MinFeeAmountOverflow)?
            / MIN_FEE_MULTIPLIER as u128;

        Ok(fee.max(1) as u64)
    }
}

impl RemoteTokenMessenger {
    pub fn validate(&self) -> bool {
        self.token_messenger != Pubkey::default()
    }
}
