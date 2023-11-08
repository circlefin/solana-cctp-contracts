//! TransferOwnership instruction handler

use {
    crate::token_messenger::{
        error::TokenMessengerError, events::OwnershipTransferStarted, state::TokenMessenger,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct TransferOwnershipContext<'info> {
    #[account()]
    pub owner: Signer<'info>,

    #[account(
        mut,
        has_one = owner @ TokenMessengerError::InvalidAuthority
    )]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct TransferOwnershipParams {
    pub new_owner: Pubkey,
}

// Instruction handler
pub fn transfer_ownership(
    ctx: Context<TransferOwnershipContext>,
    params: &TransferOwnershipParams,
) -> Result<()> {
    if [
        Pubkey::default(),
        ctx.accounts.owner.key(),
        ctx.accounts.token_messenger.pending_owner,
    ]
    .contains(&params.new_owner)
    {
        return err!(TokenMessengerError::InvalidOwner);
    }

    let token_messenger = ctx.accounts.token_messenger.as_mut();

    token_messenger.pending_owner = params.new_owner;

    emit!(OwnershipTransferStarted {
        previous_owner: token_messenger.owner,
        new_owner: token_messenger.pending_owner
    });

    Ok(())
}
