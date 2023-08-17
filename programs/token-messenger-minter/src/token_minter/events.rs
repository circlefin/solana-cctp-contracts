//! Events

use anchor_lang::prelude::*;

#[event]
pub struct SetTokenController {
    pub token_controller: Pubkey,
}

#[event]
pub struct PauserChanged {
    pub new_address: Pubkey,
}

#[event]
pub struct Mint {
    pub amount: u64,
}

#[event]
pub struct Burn {
    pub amount: u64,
}

#[event]
pub struct SetBurnLimitPerMessage {
    pub token: Pubkey,
    pub burn_limit_per_message: u64,
}

#[event]
pub struct TokenPairLinked {
    pub local_token: Pubkey,
    pub remote_domain: u32,
    pub remote_token: Pubkey,
}

#[event]
pub struct TokenPairUnlinked {
    pub local_token: Pubkey,
    pub remote_domain: u32,
    pub remote_token: Pubkey,
}

#[event]
pub struct Pause {}

#[event]
pub struct Unpause {}
