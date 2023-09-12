//! Unpause instruction handler

use {
    crate::token_minter::{error::TokenMinterError, events::Unpause, state::TokenMinter},
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct UnpauseContext<'info> {
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
pub struct UnpauseParams {}

// Instruction handler
pub fn unpause(ctx: Context<UnpauseContext>, _params: &UnpauseParams) -> Result<()> {
    ctx.accounts.token_minter.paused = false;

    emit!(Unpause {});

    Ok(())
}
