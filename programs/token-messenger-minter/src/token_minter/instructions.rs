//! Instructions

pub mod add_local_token;
pub mod burn_token_custody;
pub mod link_token_pair;
pub mod pause;
pub mod remove_local_token;
pub mod set_max_burn_amount_per_message;
pub mod set_token_controller;
pub mod unlink_token_pair;
pub mod unpause;
pub mod update_pauser;

pub use {
    add_local_token::*, burn_token_custody::*, link_token_pair::*, pause::*, remove_local_token::*,
    set_max_burn_amount_per_message::*, set_token_controller::*, unlink_token_pair::*, unpause::*,
    update_pauser::*,
};
