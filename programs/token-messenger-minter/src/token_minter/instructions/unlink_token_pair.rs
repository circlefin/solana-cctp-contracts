//! UnlinkTokenPair instruction handler

use {
    crate::token_minter::{
        error::TokenMinterError,
        events::TokenPairUnlinked,
        state::{TokenMinter, TokenPair},
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct UnlinkTokenPairContext<'info> {
    #[account(mut)]
    pub payee: Signer<'info>,

    #[account()]
    pub token_controller: Signer<'info>,

    #[account(
        has_one = token_controller @ TokenMinterError::InvalidAuthority,
    )]
    pub token_minter: Box<Account<'info, TokenMinter>>,

    #[account(
        mut,
        seeds = [
            b"token_pair",
            token_pair.remote_domain.to_string().as_bytes(),
            token_pair.remote_token.as_ref()
        ],
        bump = token_pair.bump,
        close = payee
    )]
    pub token_pair: Box<Account<'info, TokenPair>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct UninkTokenPairParams {}

// Instruction handler
pub fn unlink_token_pair(
    ctx: Context<UnlinkTokenPairContext>,
    _params: &UninkTokenPairParams,
) -> Result<()> {
    let token_pair = ctx.accounts.token_pair.as_ref();

    emit_cpi!(TokenPairUnlinked {
        local_token: token_pair.local_token,
        remote_domain: token_pair.remote_domain,
        remote_token: token_pair.remote_token
    });

    Ok(())
}
