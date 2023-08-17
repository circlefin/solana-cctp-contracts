//! Error types

use anchor_lang::prelude::*;

#[error_code]
pub enum TokenMinterError {
    #[msg("Instruction is not allowed in production")]
    InvalidEnvironment,
    #[msg("Instruction is not allowed at this time")]
    InstructionNotAllowed,
}
