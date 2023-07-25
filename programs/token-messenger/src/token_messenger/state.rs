//! State

use anchor_lang::prelude::*;

#[account]
#[derive(Default, Debug, PartialEq)]
pub struct TokenMessenger {
    pub owner: Pubkey,
    pub pending_owner: Pubkey,
    pub local_message_transmitter: Pubkey,
    pub message_body_version: u32,
}

#[account]
#[derive(Default, Debug, PartialEq)]
pub struct RemoteTokenMessenger {
    domain: u32,
    token_messenger: Vec<u8>,
}
