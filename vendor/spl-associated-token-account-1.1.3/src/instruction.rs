//! Program instructions

use {
    crate::{get_associated_token_address_with_program_id, id},
    assert_matches::assert_matches,
    borsh::{BorshDeserialize, BorshSchema, BorshSerialize},
    solana_program::{
        instruction::{AccountMeta, Instruction},
        pubkey::Pubkey,
    },
};

/// Instructions supported by the AssociatedTokenAccount program
#[derive(Clone, Debug, PartialEq, BorshDeserialize, BorshSerialize, BorshSchema)]
pub enum AssociatedTokenAccountInstruction {
    /// Creates an associated token account for the given wallet address and token mint
    /// Returns an error if the account exists.
    ///
    ///   0. `[writeable,signer]` Funding account (must be a system account)
    ///   1. `[writeable]` Associated token account address to be created
    ///   2. `[]` Wallet address for the new associated token account
    ///   3. `[]` The token mint for the new associated token account
    ///   4. `[]` System program
    ///   5. `[]` SPL Token program
    Create,
    /// Creates an associated token account for the given wallet address and token mint,
    /// if it doesn't already exist.  Returns an error if the account exists,
    /// but with a different owner.
    ///
    ///   0. `[writeable,signer]` Funding account (must be a system account)
    ///   1. `[writeable]` Associated token account address to be created
    ///   2. `[]` Wallet address for the new associated token account
    ///   3. `[]` The token mint for the new associated token account
    ///   4. `[]` System program
    ///   5. `[]` SPL Token program
    CreateIdempotent,
    /// Transfers from and closes a nested associated token account: an
    /// associated token account owned by an associated token account.
    ///
    /// The tokens are moved from the nested associated token account to the
    /// wallet's associated token account, and the nested account lamports are
    /// moved to the wallet.
    ///
    /// Note: Nested token accounts are an anti-pattern, and almost always
    /// created unintentionally, so this instruction should only be used to
    /// recover from errors.
    ///
    ///   0. `[writeable]` Nested associated token account, must be owned by `3`
    ///   1. `[]` Token mint for the nested associated token account
    ///   2. `[writeable]` Wallet's associated token account
    ///   3. `[]` Owner associated token account address, must be owned by `5`
    ///   4. `[]` Token mint for the owner associated token account
    ///   5. `[writeable, signer]` Wallet address for the owner associated token account
    ///   6. `[]` SPL Token program
    RecoverNested,
}

fn build_associated_token_account_instruction(
    funding_address: &Pubkey,
    wallet_address: &Pubkey,
    token_mint_address: &Pubkey,
    token_program_id: &Pubkey,
    instruction: AssociatedTokenAccountInstruction,
) -> Instruction {
    let associated_account_address = get_associated_token_address_with_program_id(
        wallet_address,
        token_mint_address,
        token_program_id,
    );
    // safety check, assert if not a creation instruction
    assert_matches!(
        instruction,
        AssociatedTokenAccountInstruction::Create
            | AssociatedTokenAccountInstruction::CreateIdempotent
    );
    Instruction {
        program_id: id(),
        accounts: vec![
            AccountMeta::new(*funding_address, true),
            AccountMeta::new(associated_account_address, false),
            AccountMeta::new_readonly(*wallet_address, false),
            AccountMeta::new_readonly(*token_mint_address, false),
            AccountMeta::new_readonly(solana_program::system_program::id(), false),
            AccountMeta::new_readonly(*token_program_id, false),
        ],
        data: instruction.try_to_vec().unwrap(),
    }
}

/// Creates Create instruction
pub fn create_associated_token_account(
    funding_address: &Pubkey,
    wallet_address: &Pubkey,
    token_mint_address: &Pubkey,
    token_program_id: &Pubkey,
) -> Instruction {
    build_associated_token_account_instruction(
        funding_address,
        wallet_address,
        token_mint_address,
        token_program_id,
        AssociatedTokenAccountInstruction::Create,
    )
}

/// Creates CreateIdempotent instruction
pub fn create_associated_token_account_idempotent(
    funding_address: &Pubkey,
    wallet_address: &Pubkey,
    token_mint_address: &Pubkey,
    token_program_id: &Pubkey,
) -> Instruction {
    build_associated_token_account_instruction(
        funding_address,
        wallet_address,
        token_mint_address,
        token_program_id,
        AssociatedTokenAccountInstruction::CreateIdempotent,
    )
}

/// Creates a `RecoverNested` instruction
pub fn recover_nested(
    wallet_address: &Pubkey,
    owner_token_mint_address: &Pubkey,
    nested_token_mint_address: &Pubkey,
    token_program_id: &Pubkey,
) -> Instruction {
    let owner_associated_account_address = get_associated_token_address_with_program_id(
        wallet_address,
        owner_token_mint_address,
        token_program_id,
    );
    let destination_associated_account_address = get_associated_token_address_with_program_id(
        wallet_address,
        nested_token_mint_address,
        token_program_id,
    );
    let nested_associated_account_address = get_associated_token_address_with_program_id(
        &owner_associated_account_address, // ATA is wrongly used as a wallet_address
        nested_token_mint_address,
        token_program_id,
    );

    let instruction_data = AssociatedTokenAccountInstruction::RecoverNested;

    Instruction {
        program_id: id(),
        accounts: vec![
            AccountMeta::new(nested_associated_account_address, false),
            AccountMeta::new_readonly(*nested_token_mint_address, false),
            AccountMeta::new(destination_associated_account_address, false),
            AccountMeta::new_readonly(owner_associated_account_address, false),
            AccountMeta::new_readonly(*owner_token_mint_address, false),
            AccountMeta::new(*wallet_address, true),
            AccountMeta::new_readonly(*token_program_id, false),
        ],
        data: instruction_data.try_to_vec().unwrap(),
    }
}
