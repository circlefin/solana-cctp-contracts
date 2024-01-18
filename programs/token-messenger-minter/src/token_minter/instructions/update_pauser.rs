//! UpdatePauser instruction handler

use {
    crate::{
        token_messenger::{error::TokenMessengerError, state::TokenMessenger},
        token_minter::{error::TokenMinterError, events::PauserChanged, state::TokenMinter},
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct UpdatePauserContext<'info> {
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
pub struct UpdatePauserParams {
    pub new_pauser: Pubkey,
}

// Instruction handler
pub fn update_pauser(ctx: Context<UpdatePauserContext>, params: &UpdatePauserParams) -> Result<()> {
    require_keys_neq!(
        params.new_pauser,
        Pubkey::default(),
        TokenMinterError::InvalidPauser
    );

    ctx.accounts.token_minter.pauser = params.new_pauser;

    emit_cpi!(PauserChanged {
        new_address: ctx.accounts.token_minter.pauser
    });

    Ok(())
}
