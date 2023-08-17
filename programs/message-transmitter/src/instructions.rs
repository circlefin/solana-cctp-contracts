//! Instructions

pub mod accept_ownership;
pub mod disable_attester;
pub mod enable_attester;
pub mod initialize;
pub mod pause;
pub mod receive_message;
pub mod replace_message;
pub mod send_message;
pub mod send_message_with_caller;
pub mod set_max_message_body_size;
pub mod set_signature_threshold;
pub mod transfer_ownership;
pub mod unpause;
pub mod update_attester_manager;
pub mod update_pauser;

pub use {
    accept_ownership::*, disable_attester::*, enable_attester::*, initialize::*, pause::*,
    receive_message::*, replace_message::*, send_message::*, send_message_with_caller::*,
    set_max_message_body_size::*, set_signature_threshold::*, transfer_ownership::*, unpause::*,
    update_attester_manager::*, update_pauser::*,
};
