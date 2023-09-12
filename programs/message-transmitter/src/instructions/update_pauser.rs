//! UpdatePauser instruction handler

use {
    crate::{error::MessageTransmitterError, events::PauserChanged, state::MessageTransmitter},
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct UpdatePauserContext<'info> {
    #[account()]
    pub owner: Signer<'info>,

    #[account(
        mut,
        has_one = owner @ MessageTransmitterError::InvalidAuthority
    )]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct UpdatePauserParams {
    pub new_pauser: Pubkey,
}

// Instruction handler
pub fn update_pauser(ctx: Context<UpdatePauserContext>, params: &UpdatePauserParams) -> Result<()> {
    require_keys_neq!(
        params.new_pauser,
        Pubkey::default(),
        MessageTransmitterError::InvalidPauser
    );

    ctx.accounts.message_transmitter.pauser = params.new_pauser;

    emit!(PauserChanged {
        new_address: ctx.accounts.message_transmitter.pauser
    });

    Ok(())
}
