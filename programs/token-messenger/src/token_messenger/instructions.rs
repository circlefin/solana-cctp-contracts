//! Instructions

pub mod accept_ownership;
pub mod add_remote_token_messenger;
pub mod deposit_for_burn;
pub mod handle_receive_message;
pub mod initialize;
pub mod remove_remote_token_messenger;
pub mod replace_deposit_for_burn;
pub mod transfer_ownership;

pub use {
    accept_ownership::*, add_remote_token_messenger::*, deposit_for_burn::*,
    handle_receive_message::*, initialize::*, remove_remote_token_messenger::*,
    replace_deposit_for_burn::*, transfer_ownership::*,
};
