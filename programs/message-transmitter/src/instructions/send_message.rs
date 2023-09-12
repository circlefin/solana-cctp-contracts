//! SendMessage instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::MessageSent, message::Message,
        state::MessageTransmitter, utils,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct SendMessageContext<'info> {
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
pub struct SendMessageParams {
    pub destination_domain: u32,
    pub recipient: Pubkey,
    pub message_body: Vec<u8>,
}

// Instruction handler
pub fn send_message(ctx: Context<SendMessageContext>, params: &SendMessageParams) -> Result<u64> {
    send_message_helper(
        ctx.accounts.message_transmitter.as_mut(),
        params.destination_domain,
        &params.recipient,
        &Pubkey::default(),
        &ctx.accounts.sender_program.key(),
        None,
        &params.message_body,
    )
}

/// Validates and formats message and emits MessageSent event
pub fn send_message_helper(
    message_transmitter: &mut MessageTransmitter,
    destination_domain: u32,
    recipient: &Pubkey,
    destination_caller: &Pubkey,
    sender: &Pubkey,
    nonce: Option<u64>,
    message_body: &Vec<u8>,
) -> Result<u64> {
    require!(
        !message_transmitter.paused,
        MessageTransmitterError::ProgramPaused
    );

    require_gte!(
        message_transmitter.max_message_body_size as usize,
        message_body.len(),
        MessageTransmitterError::MessageBodyLimitExceeded
    );

    require_keys_neq!(
        *recipient,
        Pubkey::default(),
        MessageTransmitterError::InvalidRecipient
    );

    // increase next_available_nonce
    let nonce = if let Some(nonce_value) = nonce {
        nonce_value
    } else {
        let nonce_value = message_transmitter.next_available_nonce;
        message_transmitter.next_available_nonce =
            utils::checked_add(message_transmitter.next_available_nonce, 1)?;
        nonce_value
    };

    // format message
    let message = Message::format_message(
        message_transmitter.version,
        message_transmitter.local_domain,
        destination_domain,
        nonce,
        sender,
        recipient,
        destination_caller,
        message_body,
    )?;

    // emit event
    emit!(MessageSent { message });

    Ok(nonce)
}
