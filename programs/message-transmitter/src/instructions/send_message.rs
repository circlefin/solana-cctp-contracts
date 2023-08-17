//! SendMessage instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::MessageSent, message::Message,
        state::MessageTransmitter, utils,
    },
    anchor_lang::prelude::*,
    solana_program::sysvar::instructions,
};

// Instruction accounts
#[derive(Accounts)]
pub struct SendMessageContext<'info> {
    #[account()]
    pub sender: Signer<'info>,

    #[account(mut)]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,

    ///CHECK: instructions sysvar account, address is checked in constraints
    #[account(address = instructions::id())]
    pub instruction_sysvar_account: UncheckedAccount<'info>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct SendMessageParams {
    destination_domain: u32,
    recipient: Pubkey,
    message_body: Vec<u8>,
}

// Instruction handler
pub fn send_message(ctx: Context<SendMessageContext>, params: &SendMessageParams) -> Result<u64> {
    // get instruction sender
    let current_ix = instructions::get_instruction_relative(
        0,
        &ctx.accounts.instruction_sysvar_account.to_account_info(),
    )?;
    let sender = if current_ix.program_id == crate::ID {
        ctx.accounts.sender.key()
    } else {
        current_ix.program_id
    };

    // send message
    send_message_helper(
        ctx.accounts.message_transmitter.as_mut(),
        params.destination_domain,
        &params.recipient,
        &Pubkey::default(),
        &sender,
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
