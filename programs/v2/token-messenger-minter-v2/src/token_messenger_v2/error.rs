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

//! Error types

use anchor_lang::prelude::*;

#[error_code]
pub enum TokenMessengerError {
    #[msg("Invalid authority")]
    InvalidAuthority,
    #[msg("Invalid token messenger state")]
    InvalidTokenMessengerState,
    #[msg("Invalid token messenger")]
    InvalidTokenMessenger,
    #[msg("Invalid owner")]
    InvalidOwner,
    #[msg("Malformed message")]
    MalformedMessage,
    #[msg("Invalid message body version")]
    InvalidMessageBodyVersion,
    #[msg("Invalid amount")]
    InvalidAmount,
    #[msg("Invalid destination domain")]
    InvalidDestinationDomain,
    #[msg("Invalid destination caller")]
    InvalidDestinationCaller,
    #[msg("Invalid mint recipient")]
    InvalidMintRecipient,
    #[msg("Invalid sender")]
    InvalidSender,
    #[msg("Invalid token pair")]
    InvalidTokenPair,
    #[msg("Invalid token mint")]
    InvalidTokenMint,
    #[msg("Invalid hook data")]
    InvalidHookData,
    #[msg("Fee exceeds amount")]
    FeeExceedsAmount,
    #[msg("Fee exceeds the max fee")]
    FeeExceedsMaxFee,
    #[msg("Message has expired")]
    MessageExpired,
    #[msg("Unsupported finality threshold")]
    UnsupportedFinalityThreshold,
    #[msg("Account already denylisted")]
    AlreadyDenylisted,
    #[msg("Account not part of denylist")]
    AccountNotInDenylist,
    #[msg("Invalid Denylister")]
    InvalidDenylister,
    #[msg("Account part of the Denylist")]
    DenylistedAccount,
    #[msg("Invalid fee recipient")]
    InvalidFeeRecipient,
    #[msg("Invalid min fee controller")]
    InvalidMinFeeController,
    #[msg("Min fee too high")]
    MinFeeTooHigh,
    #[msg("Min fee amount overflow")]
    MinFeeAmountOverflow,
    #[msg("Insufficient max fee")]
    InsufficientMaxFee,
    #[msg("Max fee must be less than amount")]
    MaxFeeMustBeLessThanAmount,
}
