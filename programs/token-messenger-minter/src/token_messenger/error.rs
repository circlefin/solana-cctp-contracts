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
}
