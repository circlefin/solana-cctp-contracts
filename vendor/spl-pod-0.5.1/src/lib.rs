//! Crate containing `Pod` types and `bytemuck` utilities used in SPL

pub mod bytemuck;
pub mod error;
pub mod option;
pub mod optional_keys;
pub mod primitives;
pub mod slice;

// Export current sdk types for downstream users building with a different sdk
// version
pub use {
    solana_decode_error, solana_msg, solana_program_error, solana_program_option, solana_pubkey,
};
