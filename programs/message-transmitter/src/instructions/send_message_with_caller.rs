//! SendMessageWithCaller instruction handler

use {
    crate::{error::MessageTransmitterError, instructions::SendMessageContext},
    anchor_lang::prelude::*,
};

// Instruction accounts are the same as for SendMessage instruction

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct SendMessageWithCallerParams {
    pub destination_domain: u32,
    pub recipient: Pubkey,
    pub destination_caller: Pubkey,
    pub message_body: Vec<u8>,
}

// Instruction handler
pub fn send_message_with_caller(
    ctx: Context<SendMessageContext>,
    params: &SendMessageWithCallerParams,
) -> Result<u64> {
    require_keys_neq!(
        params.destination_caller,
        Pubkey::default(),
        MessageTransmitterError::InvalidDestinationCaller
    );

    // send message
    crate::instructions::send_message_helper(
        ctx.accounts.message_transmitter.as_mut(),
        params.destination_domain,
        &params.recipient,
        &params.destination_caller,
        &ctx.accounts.sender_program.key(),
        None,
        &params.message_body,
    )
}
