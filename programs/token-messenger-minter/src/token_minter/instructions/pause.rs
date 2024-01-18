//! Pause instruction handler

use {
    crate::token_minter::{error::TokenMinterError, events::Pause, state::TokenMinter},
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct PauseContext<'info> {
    #[account()]
    pub pauser: Signer<'info>,

    #[account(
        mut,
        has_one = pauser @ TokenMinterError::InvalidAuthority
    )]
    pub token_minter: Box<Account<'info, TokenMinter>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct PauseParams {}

// Instruction handler
pub fn pause(ctx: Context<PauseContext>, _params: &PauseParams) -> Result<()> {
    ctx.accounts.token_minter.paused = true;

    emit_cpi!(Pause {});

    Ok(())
}
