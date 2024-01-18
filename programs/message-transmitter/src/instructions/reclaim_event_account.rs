//! ReclaimEventAccount instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::MessageSent, message::Message,
        state::MessageTransmitter,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct ReclaimEventAccountContext<'info> {
    /// rent SOL receiver, should match original rent payer
    #[account(mut)]
    pub payee: Signer<'info>,

    #[account(mut)]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,

    #[account(
        mut,
        constraint = message_sent_event_data.rent_payer == payee.key(),
        close = payee,
    )]
    pub message_sent_event_data: Box<Account<'info, MessageSent>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct ReclaimEventAccountParams {
    pub attestation: Vec<u8>,
}

// Instruction handler
pub fn reclaim_event_account(
    ctx: Context<ReclaimEventAccountContext>,
    params: &ReclaimEventAccountParams,
) -> Result<()> {
    let message_transmitter = ctx.accounts.message_transmitter.as_mut();

    require!(
        !message_transmitter.paused,
        MessageTransmitterError::ProgramPaused
    );

    let event_data = ctx.accounts.message_sent_event_data.as_ref();

    let message = Message::new(message_transmitter.version, &event_data.message)?;

    message_transmitter.verify_attestation_signatures(&message.hash(), &params.attestation)?;

    require_eq!(
        message.source_domain()?,
        message_transmitter.local_domain,
        MessageTransmitterError::InvalidSourceDomain
    );

    Ok(())
}
