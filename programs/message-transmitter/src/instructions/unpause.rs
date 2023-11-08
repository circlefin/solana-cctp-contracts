//! Unpause instruction handler

use {
    crate::{error::MessageTransmitterError, events::Unpause, state::MessageTransmitter},
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct UnpauseContext<'info> {
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
pub struct UnpauseParams {}

// Instruction handler
pub fn unpause(ctx: Context<UnpauseContext>, _params: &UnpauseParams) -> Result<()> {
    require!(
        ctx.accounts.message_transmitter.paused,
        MessageTransmitterError::InvalidMessageTransmitterState
    );

    ctx.accounts.message_transmitter.paused = false;

    emit!(Unpause {});

    Ok(())
}
