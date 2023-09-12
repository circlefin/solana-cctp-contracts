//! LinkTokenPair instruction handler

use {
    crate::token_minter::{
        error::TokenMinterError,
        events::TokenPairLinked,
        state::{TokenMinter, TokenPair},
    },
    anchor_lang::prelude::*,
    message_transmitter::utils,
};

// Instruction accounts
#[derive(Accounts)]
#[instruction(local_token: Pubkey, remote_domain: u32, remote_token: Pubkey)]
pub struct LinkTokenPairContext<'info> {
    #[account(mut)]
    pub payer: Signer<'info>,

    #[account()]
    pub token_controller: Signer<'info>,

    #[account(
        has_one = token_controller @ TokenMinterError::InvalidAuthority,
    )]
    pub token_minter: Box<Account<'info, TokenMinter>>,

    // Reverts if there is already a token pair linked for domain
    #[account(
        init,
        payer = payer,
        space = utils::DISCRIMINATOR_SIZE + TokenPair::INIT_SPACE,
        seeds = [
            b"token_pair",
            remote_domain.to_string().as_bytes(),
            remote_token.as_ref()
        ],
        bump
    )]
    pub token_pair: Box<Account<'info, TokenPair>>,

    pub system_program: Program<'info, System>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct LinkTokenPairParams {
    pub local_token: Pubkey,
    pub remote_domain: u32,
    pub remote_token: Pubkey,
}

// Instruction handler
pub fn link_token_pair(
    ctx: Context<LinkTokenPairContext>,
    params: &LinkTokenPairParams,
) -> Result<()> {
    let token_pair = ctx.accounts.token_pair.as_mut();

    token_pair.remote_domain = params.remote_domain;
    token_pair.remote_token = params.remote_token;
    token_pair.local_token = params.local_token;
    token_pair.bump = *ctx
        .bumps
        .get("token_pair")
        .ok_or(ProgramError::InvalidSeeds)?;

    // validate state
    require!(
        token_pair.validate(),
        TokenMinterError::InvalidTokenPairState
    );

    emit!(TokenPairLinked {
        local_token: params.local_token,
        remote_domain: params.remote_domain,
        remote_token: params.remote_token
    });

    Ok(())
}
