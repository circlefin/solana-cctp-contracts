//! Error types

use anchor_lang::prelude::*;

#[error_code]
pub enum MessageTransmitterError {
    #[msg("Invalid authority")]
    InvalidAuthority,
    #[msg("Instruction is not allowed in production")]
    InvalidEnvironment,
    #[msg("Instruction is not allowed at this time")]
    InstructionNotAllowed,
    #[msg("Invalid state")]
    InvalidState,
    #[msg("Invalid signature threshold")]
    InvalidSignatureThreshold,
    #[msg("Signature threshold already set")]
    SignatureThresholdAlreadySet,
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
    #[msg("Overflow in arithmetic operation")]
    MathOverflow,
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
