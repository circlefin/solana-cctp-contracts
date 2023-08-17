//! AcceptOwnership instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::OwnershipTransferred, state::MessageTransmitter,
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
        has_one = pending_owner @ MessageTransmitterError::InvalidAuthority
    )]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct AcceptOwnershipParams {}

// Instruction handler
pub fn accept_ownership(
    ctx: Context<AcceptOwnershipContext>,
    _params: &AcceptOwnershipParams,
) -> Result<()> {
    let message_transmitter = ctx.accounts.message_transmitter.as_mut();

    let previous_owner = message_transmitter.owner;

    // update owners
    message_transmitter.owner = message_transmitter.pending_owner;
    message_transmitter.pending_owner = Pubkey::default();

    emit!(OwnershipTransferred {
        previous_owner,
        new_owner: message_transmitter.owner
    });

    Ok(())
}
