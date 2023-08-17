//! ReceiveMessage instruction handler

use {
    crate::{
        error::MessageTransmitterError,
        events::MessageReceived,
        message::Message,
        state::{MessageTransmitter, UsedNonces},
    },
    anchor_lang::prelude::*,
    solana_program::sysvar::instructions,
};

// Instruction accounts
#[derive(Accounts)]
#[instruction(message: Vec<u8>)]
pub struct ReceiveMessageContext<'info> {
    #[account(mut)]
    pub payer: Signer<'info>,

    #[account()]
    pub caller: Signer<'info>,

    #[account()]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,

    // Used nonces state, see UsedNonces struct for more details
    #[account(
        init_if_needed,
        payer = payer,
        space = UsedNonces::LEN,
        seeds = [
            b"used_nonces", 
            Message::new(&message)?.source_domain()?.to_be_bytes().as_slice(),
            UsedNonces::first_nonce(Message::new(&message)?.nonce()?)?.to_be_bytes().as_slice()
        ],
        bump
    )]
    pub used_nonces: Box<Account<'info, UsedNonces>>,

    ///CHECK: recipient's token account
    #[account(mut)]
    pub recipient_token_account: UncheckedAccount<'info>,

    ///CHECK: custody token account or token mint to be used by the Receiver
    #[account(mut)]
    pub custody_token_account: UncheckedAccount<'info>,

    ///CHECK: instructions sysvar account, address is checked in constraints
    #[account(address = instructions::id())]
    pub instruction_sysvar_account: UncheckedAccount<'info>,

    ///CHECK: Receiver program address, e.g. TokenMessenger
    #[account()]
    receiver: UncheckedAccount<'info>,

    ///CHECK: Token program (potentially non-SPL) to be used by the Receiver
    token_program: UncheckedAccount<'info>,

    system_program: Program<'info, System>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct ReceiveMessageParams {
    message: Vec<u8>,
    attestation: Vec<u8>,
}

// Instruction handler
pub fn receive_message(
    ctx: Context<ReceiveMessageContext>,
    params: &ReceiveMessageParams,
) -> Result<()> {
    let message_transmitter = ctx.accounts.message_transmitter.as_ref();
    let message = Message::new(&params.message)?;

    require_eq!(
        message.version()?,
        message_transmitter.version,
        MessageTransmitterError::InvalidMessageVersion
    );

    message_transmitter.verify_attestation_signatures(&message.hash(), &params.attestation)?;

    //TODO: generate better test
    #[cfg(not(feature = "test"))]
    require!(
        message.destination_domain()? == message_transmitter.local_domain,
        MessageTransmitterError::InvalidDestinationDomain
    );

    let destination_caller = message.destination_caller()?;
    //TODO: generate better test
    #[cfg(not(feature = "test"))]
    if destination_caller != Pubkey::default() {
        require_keys_eq!(
            destination_caller,
            ctx.accounts.caller.key(),
            MessageTransmitterError::InvalidDestinationCaller
        );
    }

    let used_nonces = ctx.accounts.used_nonces.as_mut();
    let source_domain = message.source_domain()?;
    let nonce = message.nonce()?;
    let first_nonce = UsedNonces::first_nonce(nonce)?;

    if used_nonces.first_nonce == 0 {
        // initialize new UsedNonces account
        used_nonces.remote_domain = source_domain;
        used_nonces.first_nonce = first_nonce;
    } else {
        // validate existing UsedNonces account
        require_eq!(
            used_nonces.remote_domain,
            source_domain,
            MessageTransmitterError::InvalidUsedNoncesAccount
        );
        require_eq!(
            used_nonces.first_nonce,
            first_nonce,
            MessageTransmitterError::InvalidUsedNoncesAccount
        );
    }

    // record message nonce as used
    used_nonces.use_nonce(nonce)?;

    //TODO CPI into recipient
    /*require_keys_eq!(
        message.recipient()?,
        ctx.accounts.receiver.key(),
        MessageTransmitterError::InvalidRecipientProgram
    );*/
    let sender = message.sender()?;

    emit!(MessageReceived {
        caller: ctx.accounts.caller.key(),
        source_domain,
        nonce,
        sender,
        message_body: params.message.clone()
    });

    Ok(())
}
