//! Error types

use anchor_lang::prelude::*;

#[error_code]
pub enum TokenMinterError {
    #[msg("Invalid authority")]
    InvalidAuthority,
    #[msg("Invalid token minter state")]
    InvalidTokenMinterState,
    #[msg("Instruction is not allowed at this time")]
    ProgramPaused,
    #[msg("Invalid token pair state")]
    InvalidTokenPairState,
    #[msg("Invalid local token state")]
    InvalidLocalTokenState,
    #[msg("Invalid pauser")]
    InvalidPauser,
    #[msg("Invalid token controller")]
    InvalidTokenController,
    #[msg("Burn amount exceeded")]
    BurnAmountExceeded,
}
