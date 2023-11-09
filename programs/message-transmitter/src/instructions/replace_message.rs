//! ReplaceMessage instruction handler

use {
    crate::{error::MessageTransmitterError, message::Message, state::MessageTransmitter},
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct ReplaceMessageContext<'info> {
    #[account(
        seeds = [b"sender_authority"],
        bump,
        seeds::program = sender_program.key()
    )]
    pub sender_authority_pda: Signer<'info>,

    #[account(mut)]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,

    ///CHECK: Sender program address, e.g. TokenMessenger
    #[account(
        constraint = sender_program.executable
    )]
    pub sender_program: UncheckedAccount<'info>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct ReplaceMessageParams {
    pub original_message: Vec<u8>,
    pub original_attestation: Vec<u8>,
    pub new_message_body: Vec<u8>,
    pub new_destination_caller: Pubkey,
}

// Instruction handler
pub fn replace_message(
    ctx: Context<ReplaceMessageContext>,
    params: &ReplaceMessageParams,
) -> Result<u64> {
    let message_transmitter = ctx.accounts.message_transmitter.as_mut();

    require!(
        !message_transmitter.paused,
        MessageTransmitterError::ProgramPaused
    );

    let message = Message::new(message_transmitter.version, &params.original_message)?;

    message_transmitter
        .verify_attestation_signatures(&message.hash(), &params.original_attestation)?;

    require_keys_eq!(
        message.sender()?,
        ctx.accounts.sender_program.key(),
        MessageTransmitterError::SenderNotPermitted
    );

    require_eq!(
        message.source_domain()?,
        message_transmitter.local_domain,
        MessageTransmitterError::InvalidSourceDomain
    );

    // send updated message
    crate::instructions::send_message_helper(
        message_transmitter,
        message.destination_domain()?,
        &message.recipient()?,
        &params.new_destination_caller,
        &ctx.accounts.sender_program.key(),
        Some(message.nonce()?),
        &params.new_message_body,
    )
}
