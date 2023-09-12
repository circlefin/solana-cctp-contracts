//! SetMaxBurnAmountPerMessage instruction handler

use {
    crate::token_minter::{
        error::TokenMinterError,
        events::SetBurnLimitPerMessage,
        state::{LocalToken, TokenMinter},
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct SetMaxBurnAmountPerMessageContext<'info> {
    #[account()]
    pub token_controller: Signer<'info>,

    #[account(
        has_one = token_controller @ TokenMinterError::InvalidAuthority
    )]
    pub token_minter: Box<Account<'info, TokenMinter>>,

    #[account(
        mut,
        seeds = [
            b"local_token",
            local_token.mint.as_ref(),
        ],
        bump = local_token.bump,
    )]
    pub local_token: Box<Account<'info, LocalToken>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct SetMaxBurnAmountPerMessageParams {
    pub burn_limit_per_message: u64,
}

// Instruction handler
pub fn set_max_burn_amount_per_message(
    ctx: Context<SetMaxBurnAmountPerMessageContext>,
    params: &SetMaxBurnAmountPerMessageParams,
) -> Result<()> {
    let local_token = ctx.accounts.local_token.as_mut();

    local_token.burn_limit_per_message = params.burn_limit_per_message;

    emit!(SetBurnLimitPerMessage {
        token: local_token.mint,
        burn_limit_per_message: local_token.burn_limit_per_message
    });

    Ok(())
}
