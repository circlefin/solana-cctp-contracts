//! State

use anchor_lang::prelude::*;

#[account]
#[derive(Default, Debug, PartialEq)]
pub struct TokenMinter {
    pub token_controller: Pubkey,
    pub pauser: Pubkey,
    pub paused: bool,
    pub burn_limit_per_message: u64,
    pub messages_sent: u64,
    pub messages_received: u64,
    pub amount_sent: u64,
    pub amount_received: u64,
}

#[account]
#[derive(Default, Debug, PartialEq)]
pub struct RemoteToken {
    domain: u32,
    token: Vec<u8>,
    local_token: Pubkey,
}
