//! ReceiveMessage instruction handler

use {
    crate::{
        error::MessageTransmitterError,
        events::MessageReceived,
        message::Message,
        state::{MessageTransmitter, UsedNonces},
        utils,
    },
    anchor_lang::prelude::*,
    solana_program::{
        instruction::{AccountMeta, Instruction},
        program,
    },
};

// Instruction accounts
#[derive(Accounts)]
#[instruction(message: Vec<u8>)]
pub struct ReceiveMessageContext<'info> {
    #[account(mut)]
    pub payer: Signer<'info>,

    #[account()]
    pub caller: Signer<'info>,

    /// CHECK: empty PDA, used to check that handleReceiveMessage was called by MessageTransmitter
    #[account(
        seeds = [b"message_transmitter_authority"],
        bump = message_transmitter.authority_bump,
    )]
    pub authority_pda: AccountInfo<'info>,

    #[account()]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,

    // Used nonces state, see UsedNonces struct for more details
    #[account(
        init_if_needed,
        payer = payer,
        space = utils::DISCRIMINATOR_SIZE + UsedNonces::INIT_SPACE,
        seeds = [
            b"used_nonces", 
            Message::new(message_transmitter.version, &message)?.source_domain()?.to_string().as_bytes(),
            UsedNonces::first_nonce(Message::new(message_transmitter.version, &message)?.nonce()?)?.to_string().as_bytes()
        ],
        bump
    )]
    pub used_nonces: Box<Account<'info, UsedNonces>>,

    ///CHECK: Receiver program address, e.g. TokenMessenger
    #[account(
        constraint = receiver.executable
    )]
    pub receiver: UncheckedAccount<'info>,

    pub system_program: Program<'info, System>,
    // remaining accounts: additional accounts to be passed to the receiver
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct ReceiveMessageParams {
    pub message: Vec<u8>,
    pub attestation: Vec<u8>,
}

#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct HandleReceiveMessageParams {
    pub remote_domain: u32,
    pub sender: Pubkey,
    pub message_body: Vec<u8>,
}

// Instruction handler
pub fn receive_message<'info>(
    ctx: Context<'_, '_, '_, 'info, ReceiveMessageContext<'info>>,
    params: &ReceiveMessageParams,
) -> Result<()> {
    let message_transmitter = ctx.accounts.message_transmitter.as_ref();

    require!(
        !message_transmitter.paused,
        MessageTransmitterError::ProgramPaused
    );

    let message = Message::new(message_transmitter.version, &params.message)?;

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
    let sender = message.sender()?;
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

    // CPI into recipient
    //TODO: generate better test
    #[cfg(not(feature = "test"))]
    require_keys_eq!(
        message.recipient()?,
        ctx.accounts.receiver.key(),
        MessageTransmitterError::InvalidRecipientProgram
    );

    let authority_seeds: &[&[&[u8]]] = &[&[
        b"message_transmitter_authority",
        &[message_transmitter.authority_bump],
    ]];

    let mut accounts = Vec::with_capacity(2 + ctx.remaining_accounts.len());
    accounts.push(AccountMeta::new_readonly(
        ctx.accounts.authority_pda.key(),
        true,
    ));
    accounts.push(AccountMeta::new_readonly(
        ctx.accounts.message_transmitter.key(),
        false,
    ));

    for acc in ctx.remaining_accounts {
        if acc.is_writable {
            accounts.push(AccountMeta::new(acc.key(), acc.is_signer));
        } else {
            accounts.push(AccountMeta::new_readonly(acc.key(), acc.is_signer));
        }
    }

    let params = HandleReceiveMessageParams {
        remote_domain: source_domain,
        sender,
        message_body: message.message_body().to_vec(),
    };

    let mut data = Vec::with_capacity(52 + message.message_body().len());
    data.extend_from_slice(
        &anchor_lang::solana_program::hash::hash("global:handle_receive_message".as_bytes())
            .to_bytes()[..8],
    );
    data.extend_from_slice(&params.try_to_vec()?);

    let instruction = Instruction {
        program_id: ctx.accounts.receiver.key(),
        accounts,
        data,
    };

    program::invoke_signed(
        &instruction,
        &[
            &[ctx.accounts.authority_pda.to_account_info()],
            &[ctx.accounts.message_transmitter.to_account_info()],
            ctx.remaining_accounts,
        ]
        .concat(),
        authority_seeds,
    )?;

    emit!(MessageReceived {
        caller: ctx.accounts.caller.key(),
        source_domain,
        nonce,
        sender,
        message_body: message.message_body().to_vec()
    });

    Ok(())
}
