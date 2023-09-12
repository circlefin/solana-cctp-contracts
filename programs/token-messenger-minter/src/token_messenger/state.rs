//! State

use anchor_lang::prelude::*;

#[account]
#[derive(Debug, InitSpace)]
pub struct TokenMessenger {
    pub owner: Pubkey,
    pub pending_owner: Pubkey,
    pub local_message_transmitter: Pubkey,
    pub message_body_version: u32,
    pub authority_bump: u8,
}

#[account]
#[derive(Debug, InitSpace)]
pub struct RemoteTokenMessenger {
    pub domain: u32,
    pub token_messenger: Pubkey,
}

impl TokenMessenger {
    pub fn validate(&self) -> bool {
        self.owner != Pubkey::default() && self.local_message_transmitter != Pubkey::default()
    }
}

impl RemoteTokenMessenger {
    pub fn validate(&self) -> bool {
        self.token_messenger != Pubkey::default()
    }
}
