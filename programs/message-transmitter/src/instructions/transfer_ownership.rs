//! TransferOwnership instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::OwnershipTransferStarted, state::MessageTransmitter,
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
        has_one = owner @ MessageTransmitterError::InvalidAuthority
    )]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,
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
    require_keys_neq!(
        params.new_owner,
        Pubkey::default(),
        MessageTransmitterError::InvalidOwner
    );

    let message_transmitter = ctx.accounts.message_transmitter.as_mut();

    message_transmitter.pending_owner = params.new_owner;

    emit!(OwnershipTransferStarted {
        previous_owner: message_transmitter.owner,
        new_owner: message_transmitter.pending_owner
    });

    Ok(())
}
