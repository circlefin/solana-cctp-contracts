//! ReplaceMessage instruction handler

use {
    crate::{error::MessageTransmitterError, message::Message, state::MessageTransmitter},
    anchor_lang::prelude::*,
    solana_program::sysvar::instructions,
};

// Instruction accounts
#[derive(Accounts)]
pub struct ReplaceMessageContext<'info> {
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
pub struct ReplaceMessageParams {
    original_message: Vec<u8>,
    original_attestation: Vec<u8>,
    new_message_body: Vec<u8>,
    new_destination_caller: Pubkey,
}

// Instruction handler
pub fn replace_message(
    ctx: Context<ReplaceMessageContext>,
    params: &ReplaceMessageParams,
) -> Result<u64> {
    let message_transmitter = ctx.accounts.message_transmitter.as_mut();
    let message = Message::new(&params.original_message)?;

    require_eq!(
        message.version()?,
        message_transmitter.version,
        MessageTransmitterError::InvalidMessageVersion
    );

    message_transmitter
        .verify_attestation_signatures(&message.hash(), &params.original_attestation)?;

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

    //TODO: generate better test
    #[cfg(not(feature = "test"))]
    require_keys_eq!(
        message.sender()?,
        sender,
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
        &ctx.accounts.sender.key(),
        Some(message.nonce()?),
        &params.new_message_body,
    )
}
