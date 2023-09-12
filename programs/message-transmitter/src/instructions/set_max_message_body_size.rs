//! SetMaxMessageBodySize instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::MaxMessageBodySizeUpdated,
        state::MessageTransmitter,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct SetMaxMessageBodySizeContext<'info> {
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
pub struct SetMaxMessageBodySizeParams {
    pub new_max_message_body_size: u64,
}

// Instruction handler
pub fn set_max_message_body_size(
    ctx: Context<SetMaxMessageBodySizeContext>,
    params: &SetMaxMessageBodySizeParams,
) -> Result<()> {
    ctx.accounts.message_transmitter.max_message_body_size = params.new_max_message_body_size;

    emit!(MaxMessageBodySizeUpdated {
        new_max_message_body_size: ctx.accounts.message_transmitter.max_message_body_size
    });

    Ok(())
}
