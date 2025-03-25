//! Instructions for the non-upgradable BPF loader.
#![cfg_attr(docsrs, feature(doc_auto_cfg))]

#[cfg(feature = "bincode")]
use {
    solana_instruction::{AccountMeta, Instruction},
    solana_pubkey::Pubkey,
    solana_sdk_ids::sysvar::rent,
};

#[cfg_attr(
    feature = "serde",
    derive(serde_derive::Deserialize, serde_derive::Serialize)
)]
#[derive(Debug, PartialEq, Eq, Clone)]
pub enum LoaderInstruction {
    /// Write program data into an account
    ///
    /// # Account references
    ///   0. [WRITE, SIGNER] Account to write to
    Write {
        /// Offset at which to write the given bytes
        offset: u32,

        /// Serialized program data
        #[cfg_attr(feature = "serde", serde(with = "serde_bytes"))]
        bytes: Vec<u8>,
    },

    /// Finalize an account loaded with program data for execution
    ///
    /// The exact preparation steps is loader specific but on success the loader must set the executable
    /// bit of the account.
    ///
    /// # Account references
    ///   0. [WRITE, SIGNER] The account to prepare for execution
    ///   1. [] Rent sysvar
    Finalize,
}

#[deprecated(since = "2.2.0", note = "Use loader-v4 instead")]
#[cfg(feature = "bincode")]
pub fn write(
    account_pubkey: &Pubkey,
    program_id: &Pubkey,
    offset: u32,
    bytes: Vec<u8>,
) -> Instruction {
    let account_metas = vec![AccountMeta::new(*account_pubkey, true)];
    Instruction::new_with_bincode(
        *program_id,
        &LoaderInstruction::Write { offset, bytes },
        account_metas,
    )
}

#[deprecated(since = "2.2.0", note = "Use loader-v4 instead")]
#[cfg(feature = "bincode")]
pub fn finalize(account_pubkey: &Pubkey, program_id: &Pubkey) -> Instruction {
    let account_metas = vec![
        AccountMeta::new(*account_pubkey, true),
        AccountMeta::new_readonly(rent::id(), false),
    ];
    Instruction::new_with_bincode(*program_id, &LoaderInstruction::Finalize, account_metas)
}
