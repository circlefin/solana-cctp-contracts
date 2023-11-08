//! Pause instruction handler

use {
    crate::{error::MessageTransmitterError, events::Pause, state::MessageTransmitter},
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct PauseContext<'info> {
    #[account()]
    pub pauser: Signer<'info>,

    #[account(
        mut,
        has_one = pauser @ MessageTransmitterError::InvalidAuthority
    )]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct PauseParams {}

// Instruction handler
pub fn pause(ctx: Context<PauseContext>, _params: &PauseParams) -> Result<()> {
    require!(
        !ctx.accounts.message_transmitter.paused,
        MessageTransmitterError::InvalidMessageTransmitterState
    );

    ctx.accounts.message_transmitter.paused = true;

    emit!(Pause {});

    Ok(())
}
