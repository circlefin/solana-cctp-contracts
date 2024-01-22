//! GetNoncePDA instruction handler

use {
    crate::state::{MessageTransmitter, UsedNonces},
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct GetNoncePDAContext<'info> {
    #[account()]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct GetNoncePDAParams {
    pub nonce: u64,
    pub source_domain: u32,
}

// Instruction handler
pub fn get_nonce_pda(
    _ctx: Context<GetNoncePDAContext>,
    params: &GetNoncePDAParams,
) -> Result<Pubkey> {
    Ok(Pubkey::find_program_address(
        &[
            b"used_nonces",
            params.source_domain.to_string().as_bytes(),
            UsedNonces::first_nonce(params.nonce)?
                .to_string()
                .as_bytes(),
        ],
        &crate::ID,
    )
    .0)
}
