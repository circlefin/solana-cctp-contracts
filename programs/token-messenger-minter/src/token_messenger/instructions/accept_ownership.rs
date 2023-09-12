//! AcceptOwnership instruction handler

use {
    crate::token_messenger::{
        error::TokenMessengerError, events::OwnershipTransferred, state::TokenMessenger,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct AcceptOwnershipContext<'info> {
    #[account()]
    pub pending_owner: Signer<'info>,

    #[account(
        mut,
        has_one = pending_owner @ TokenMessengerError::InvalidAuthority
    )]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct AcceptOwnershipParams {}

// Instruction handler
pub fn accept_ownership(
    ctx: Context<AcceptOwnershipContext>,
    _params: &AcceptOwnershipParams,
) -> Result<()> {
    let token_messenger = ctx.accounts.token_messenger.as_mut();

    let previous_owner = token_messenger.owner;

    // update owners
    token_messenger.owner = token_messenger.pending_owner;
    token_messenger.pending_owner = Pubkey::default();

    emit!(OwnershipTransferred {
        previous_owner,
        new_owner: token_messenger.owner
    });

    Ok(())
}
