//! SendMessageWithCaller instruction handler

use {
    crate::error::MessageTransmitterError, anchor_lang::prelude::*,
    solana_program::sysvar::instructions,
};

// Instruction accounts are the same as for SendMessage instruction

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct SendMessageWithCallerParams {
    destination_domain: u32,
    recipient: Pubkey,
    destination_caller: Pubkey,
    message_body: Vec<u8>,
}

// Instruction handler
pub fn send_message_with_caller(
    ctx: Context<crate::instructions::SendMessageContext>,
    params: &SendMessageWithCallerParams,
) -> Result<u64> {
    require_keys_neq!(
        params.destination_caller,
        Pubkey::default(),
        MessageTransmitterError::InvalidDestinationCaller
    );

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
    crate::instructions::send_message_helper(
        ctx.accounts.message_transmitter.as_mut(),
        params.destination_domain,
        &params.recipient,
        &params.destination_caller,
        &sender,
        None,
        &params.message_body,
    )
}
