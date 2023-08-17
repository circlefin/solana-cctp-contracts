//! Common utility functions.

#[cfg(not(feature = "test"))]
use crate::program::MessageTransmitter;
//
use {crate::error::MessageTransmitterError, anchor_lang::prelude::*, std::fmt::Display};

#[cfg(not(feature = "test"))]
/// Checks that provided upgrade_authority is indeed the upgrade authority for the given program
pub fn validate_upgrade_authority(
    upgrade_authority: Pubkey,
    message_transmitter_program_data: &AccountInfo,
    message_transmitter_program: &AccountInfo,
) -> Result<()> {
    let program: Program<MessageTransmitter> = Program::try_from(message_transmitter_program)?;
    let program_data: Account<ProgramData> = Account::try_from(message_transmitter_program_data)?;

    // should be also checked in Program::try_from()
    if message_transmitter_program.owner != &crate::ID {
        return Err(Error::from(ErrorCode::AccountOwnedByWrongProgram)
            .with_pubkeys((*message_transmitter_program.owner, crate::ID)));
    }

    require!(
        program.programdata_address()? == Some(program_data.key())
            && program_data.upgrade_authority_address == Some(upgrade_authority),
        MessageTransmitterError::InvalidAuthority
    );

    Ok(())
}

#[cfg(feature = "test")]
/// Test version does nothing
pub fn validate_upgrade_authority(
    _authority: Pubkey,
    _message_transmitter_program_data: &AccountInfo,
    _message_transmitter_program: &AccountInfo,
) -> Result<()> {
    Ok(())
}

/// Integer addition with overflow detection and logging
pub fn checked_add<T>(arg1: T, arg2: T) -> Result<T>
where
    T: num_traits::PrimInt + Display,
{
    if let Some(res) = arg1.checked_add(&arg2) {
        Ok(res)
    } else {
        msg!("Error: Overflow in {} + {}", arg1, arg2);
        err!(MessageTransmitterError::MathOverflow)
    }
}

/// Integer subtraction with underflow detection and logging
pub fn checked_sub<T>(arg1: T, arg2: T) -> Result<T>
where
    T: num_traits::PrimInt + Display,
{
    if let Some(res) = arg1.checked_sub(&arg2) {
        Ok(res)
    } else {
        msg!("Error: Underflow in {} - {}", arg1, arg2);
        err!(MessageTransmitterError::MathOverflow)
    }
}

/// Integer division with error detection and logging
pub fn checked_div<T>(arg1: T, arg2: T) -> Result<T>
where
    T: num_traits::PrimInt + Display,
{
    if let Some(res) = arg1.checked_div(&arg2) {
        Ok(res)
    } else {
        msg!("Error: Error in {} / {}", arg1, arg2);
        err!(MessageTransmitterError::MathOverflow)
    }
}

/// Integer multiplication with overflow detection and logging
pub fn checked_mul<T>(arg1: T, arg2: T) -> Result<T>
where
    T: num_traits::PrimInt + Display,
{
    if let Some(res) = arg1.checked_mul(&arg2) {
        Ok(res)
    } else {
        msg!("Error: Overflow in {} * {}", arg1, arg2);
        err!(MessageTransmitterError::MathOverflow)
    }
}
