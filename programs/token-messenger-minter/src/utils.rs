//! Common utility functions.

#[cfg(not(feature = "test"))]
use crate::{program::TokenMessengerMinter, token_messenger::error::TokenMessengerError};
//
use anchor_lang::prelude::*;

#[cfg(not(feature = "test"))]
/// Checks that provided upgrade_authority is indeed the upgrade authority for the given program
pub fn validate_upgrade_authority(
    upgrade_authority: Pubkey,
    token_messenger_minter_program_data: &AccountInfo,
    token_messenger_minter_program: &AccountInfo,
) -> Result<()> {
    let program: Program<TokenMessengerMinter> = Program::try_from(token_messenger_minter_program)?;
    let program_data: Account<ProgramData> =
        Account::try_from(token_messenger_minter_program_data)?;

    // should be also checked in Program::try_from()
    if token_messenger_minter_program.owner != &crate::ID {
        return Err(Error::from(ErrorCode::AccountOwnedByWrongProgram)
            .with_pubkeys((*token_messenger_minter_program.owner, crate::ID)));
    }

    require!(
        program.programdata_address()? == Some(program_data.key())
            && program_data.upgrade_authority_address == Some(upgrade_authority),
        TokenMessengerError::InvalidAuthority
    );

    Ok(())
}

#[cfg(feature = "test")]
/// Test version does nothing
pub fn validate_upgrade_authority(
    _authority: Pubkey,
    _token_messenger_minter_program_data: &AccountInfo,
    _token_messenger_minter_program: &AccountInfo,
) -> Result<()> {
    Ok(())
}
