/*
 * Copyright (c) 2024, Circle Internet Financial LTD All rights reserved.
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
pub enum MessageTransmitterError {
    #[msg("Invalid authority")]
    InvalidAuthority,
    #[msg("Instruction is not allowed at this time")]
    ProgramPaused,
    #[msg("Invalid message transmitter state")]
    InvalidMessageTransmitterState,
    #[msg("Invalid signature threshold")]
    InvalidSignatureThreshold,
    #[msg("Signature threshold already set")]
    SignatureThresholdAlreadySet,
    #[msg("Invalid owner")]
    InvalidOwner,
    #[msg("Invalid pauser")]
    InvalidPauser,
    #[msg("Invalid attester manager")]
    InvalidAttesterManager,
    #[msg("Invalid attester")]
    InvalidAttester,
    #[msg("Attester already enabled")]
    AttesterAlreadyEnabled,
    #[msg("Too few enabled attesters")]
    TooFewEnabledAttesters,
    #[msg("Signature threshold is too low")]
    SignatureThresholdTooLow,
    #[msg("Attester already disabled")]
    AttesterAlreadyDisabled,
    #[msg("Message body exceeds max size")]
    MessageBodyLimitExceeded,
    #[msg("Invalid destination caller")]
    InvalidDestinationCaller,
    #[msg("Invalid message recipient")]
    InvalidRecipient,
    #[msg("Sender is not permitted")]
    SenderNotPermitted,
    #[msg("Invalid source domain")]
    InvalidSourceDomain,
    #[msg("Invalid destination domain")]
    InvalidDestinationDomain,
    #[msg("Invalid message version")]
    InvalidMessageVersion,
    #[msg("Invalid used nonces account")]
    InvalidUsedNoncesAccount,
    #[msg("Invalid recipient program")]
    InvalidRecipientProgram,
    #[msg("Invalid nonce")]
    InvalidNonce,
    #[msg("Nonce already used")]
    NonceAlreadyUsed,
    #[msg("Message is too short")]
    MessageTooShort,
    #[msg("Malformed message")]
    MalformedMessage,
    #[msg("Invalid signature order or dupe")]
    InvalidSignatureOrderOrDupe,
    #[msg("Invalid attester signature")]
    InvalidAttesterSignature,
    #[msg("Invalid attestation length")]
    InvalidAttestationLength,
    #[msg("Invalid signature recovery ID")]
    InvalidSignatureRecoveryId,
    #[msg("Invalid signature S value")]
    InvalidSignatureSValue,
    #[msg("Invalid message hash")]
    InvalidMessageHash,
}

#[error_code]
pub enum MathError {
    #[msg("Overflow in arithmetic operation")]
    MathOverflow,
    #[msg("Underflow in arithmetic operation")]
    MathUnderflow,
    #[msg("Error in division operation")]
    ErrorInDivision,
}
