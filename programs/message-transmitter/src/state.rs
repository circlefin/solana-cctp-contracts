//! State

use anchor_lang::prelude::*;

#[account]
#[derive(Default, Debug, PartialEq)]
pub struct MessageTransmitter {
    pub owner: Pubkey,
    pub pending_owner: Pubkey,
    pub attester_manager: Pubkey,
    pub pauser: Pubkey,
    pub paused: bool,
    pub local_domain: u32,
    pub version: u32,
    pub signature_threshold: u32,
    pub enabled_attesters: Vec<Pubkey>,
    pub max_message_body_size: u64,
    pub next_available_nonce: u64,
}

#[account]
#[derive(Default, Debug, PartialEq)]
pub struct usedNonces {
    remote_domain: u32,
    used_nonces: [u64; 100],
}
