//! SetTokenController instruction handler

use {
    crate::{
        token_messenger::{error::TokenMessengerError, state::TokenMessenger},
        token_minter::{error::TokenMinterError, events::SetTokenController, state::TokenMinter},
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct SetTokenControllerContext<'info> {
    #[account()]
    pub owner: Signer<'info>,

    #[account(
        has_one = owner @ TokenMessengerError::InvalidAuthority
    )]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,

    #[account(mut)]
    pub token_minter: Box<Account<'info, TokenMinter>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct SetTokenControllerParams {
    pub token_controller: Pubkey,
}

// Instruction handler
pub fn set_token_controller(
    ctx: Context<SetTokenControllerContext>,
    params: &SetTokenControllerParams,
) -> Result<()> {
    require_keys_neq!(
        params.token_controller,
        Pubkey::default(),
        TokenMinterError::InvalidTokenController
    );

    ctx.accounts.token_minter.token_controller = params.token_controller;

    emit!(SetTokenController {
        token_controller: ctx.accounts.token_minter.token_controller
    });

    Ok(())
}
