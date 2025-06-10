//! A bitvector of slots present over the last epoch.
//!
//! The _slot history sysvar_ provides access to the [`SlotHistory`] type.
//!
//! The [`Sysvar::from_account_info`] and [`Sysvar::get`] methods always return
//! [`ProgramError::UnsupportedSysvar`] because this sysvar account is too large
//! to process on-chain. Thus this sysvar cannot be accessed on chain, though
//! one can still use the [`SysvarId::id`], [`SysvarId::check_id`] and
//! [`Sysvar::size_of`] methods in an on-chain program, and it can be accessed
//! off-chain through RPC.
//!
//! [`SysvarId::id`]: https://docs.rs/solana-sysvar-id/latest/solana_sysvar_id/trait.SysvarId.html#tymethod.id
//! [`SysvarId::check_id`]: https://docs.rs/solana-sysvar-id/latest/solana_sysvar_id/trait.SysvarId.html#tymethod.check_id
//!
//! # Examples
//!
//! Calling via the RPC client:
//!
//! ```
//! # use solana_program::example_mocks::solana_sdk;
//! # use solana_program::example_mocks::solana_rpc_client;
//! # use solana_rpc_client::rpc_client::RpcClient;
//! # use solana_sdk::account::Account;
//! # use solana_slot_history::SlotHistory;
//! # use solana_sdk_ids::sysvar::slot_history;
//! # use anyhow::Result;
//! #
//! fn print_sysvar_slot_history(client: &RpcClient) -> Result<()> {
//! #   let slot_history = SlotHistory::default();
//! #   let data: Vec<u8> = bincode::serialize(&slot_history)?;
//! #   client.set_get_account_response(slot_history::ID, Account {
//! #       lamports: 913326000,
//! #       data,
//! #       owner: solana_sdk_ids::system_program::ID,
//! #       executable: false,
//! #       rent_epoch: 307,
//! #   });
//! #
//!     let slot_history = client.get_account(&slot_history::ID)?;
//!     let data: SlotHistory = bincode::deserialize(&slot_history.data)?;
//!
//!     Ok(())
//! }
//! #
//! # let client = RpcClient::new(String::new());
//! # print_sysvar_slot_history(&client)?;
//! #
//! # Ok::<(), anyhow::Error>(())
//! ```

#[cfg(feature = "bincode")]
use crate::Sysvar;
pub use {
    solana_account_info::AccountInfo,
    solana_program_error::ProgramError,
    solana_sdk_ids::sysvar::slot_history::{check_id, id, ID},
    solana_slot_history::SlotHistory,
};

#[cfg(feature = "bincode")]
impl Sysvar for SlotHistory {
    // override
    fn size_of() -> usize {
        // hard-coded so that we don't have to construct an empty
        131_097 // golden, update if MAX_ENTRIES changes
    }
    fn from_account_info(_account_info: &AccountInfo) -> Result<Self, ProgramError> {
        // This sysvar is too large to bincode::deserialize in-program
        Err(ProgramError::UnsupportedSysvar)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn test_size_of() {
        assert_eq!(
            SlotHistory::size_of(),
            bincode::serialized_size(&SlotHistory::default()).unwrap() as usize
        );
    }
}
