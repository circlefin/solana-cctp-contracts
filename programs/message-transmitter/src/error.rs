//! Error types

use anchor_lang::prelude::*;

#[error_code]
pub enum MessageTransmitterError {
    #[msg("Instruction is not allowed in production")]
    InvalidEnvironment,
    #[msg("Instruction is not allowed at this time")]
    InstructionNotAllowed,
}
