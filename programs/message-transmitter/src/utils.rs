//! Common utility functions.

use {crate::error::MathError, anchor_lang::prelude::*, std::fmt::Display};

pub const DISCRIMINATOR_SIZE: usize = 8;

pub fn validate_upgrade_authority<T: anchor_lang::Id>(
    expected_upgrade_authority: Pubkey,
    program_data: &AccountInfo,
    program: &AccountInfo,
) -> Result<()> {
    let program: Program<T> = Program::try_from(program)?;
    if let Some(programdata_address) = program.programdata_address()? {
        require_keys_eq!(
            programdata_address,
            program_data.key(),
            ErrorCode::InvalidProgramExecutable
        );
        let program_data: Account<ProgramData> = Account::try_from(program_data)?;
        if let Some(current_upgrade_authority) = program_data.upgrade_authority_address {
            if current_upgrade_authority != Pubkey::default() {
                require_keys_eq!(
                    current_upgrade_authority,
                    expected_upgrade_authority,
                    ErrorCode::ConstraintOwner
                );
            }
        }
    } // otherwise not upgradeable

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
        err!(MathError::MathOverflow)
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
        err!(MathError::MathUnderflow)
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
        err!(MathError::ErrorInDivision)
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
        err!(MathError::MathOverflow)
    }
}
