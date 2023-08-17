//! Instructions

pub mod link_token_pair;
pub mod pause;
pub mod set_max_burn_amount_per_message;
pub mod unlink_token_pair;
pub mod unpause;
pub mod update_pauser;

pub use {
    link_token_pair::*, pause::*, set_max_burn_amount_per_message::*, unlink_token_pair::*,
    unpause::*, update_pauser::*,
};
