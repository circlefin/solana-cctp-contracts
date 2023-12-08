//! ReplaceDepositForBurn instruction handler

use {
    crate::{
        program,
        token_messenger::{
            burn_message::BurnMessage, error::TokenMessengerError, events::DepositForBurn,
            state::TokenMessenger,
        },
    },
    anchor_lang::prelude::*,
    message_transmitter::{
        cpi::accounts::ReplaceMessageContext, instructions::ReplaceMessageParams, message::Message,
        state::MessageTransmitter,
    },
};

// Instruction accounts
#[derive(Accounts)]
pub struct ReplaceDepositForBurnContext<'info> {
    #[account()]
    pub owner: Signer<'info>,

    /// CHECK: empty PDA, used to check that replaceMessage was called by TokenMessenger
    #[account(
        seeds = [b"sender_authority"],
        bump = token_messenger.authority_bump,
    )]
    pub sender_authority_pda: UncheckedAccount<'info>,

    #[account(mut)]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,

    #[account()]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,

    pub message_transmitter_program:
        Program<'info, message_transmitter::program::MessageTransmitter>,

    pub token_messenger_minter_program: Program<'info, program::TokenMessengerMinter>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct ReplaceDepositForBurnParams {
    pub original_message: Vec<u8>,
    pub original_attestation: Vec<u8>,
    pub new_destination_caller: Pubkey,
    pub new_mint_recipient: Pubkey,
}

// Instruction handler
pub fn replace_deposit_for_burn(
    ctx: Context<ReplaceDepositForBurnContext>,
    params: &ReplaceDepositForBurnParams,
) -> Result<u64> {
    let message_transmitter = ctx.accounts.message_transmitter.as_ref();
    let token_messenger = ctx.accounts.token_messenger.as_ref();

    let message = Message::new(message_transmitter.version, &params.original_message)?;
    let burn_message =
        BurnMessage::new(token_messenger.message_body_version, message.message_body())?;

    let original_message_sender = burn_message.message_sender()?;
    require_keys_eq!(
        original_message_sender,
        ctx.accounts.owner.key(),
        TokenMessengerError::InvalidSender
    );

    require_keys_neq!(
        params.new_mint_recipient,
        Pubkey::default(),
        TokenMessengerError::InvalidMintRecipient
    );

    let burn_token = burn_message.burn_token()?;
    let amount = burn_message.amount()?;

    let new_message_body = BurnMessage::format_message(
        token_messenger.message_body_version,
        &burn_token,
        &params.new_mint_recipient,
        amount,
        &original_message_sender,
    )?;

    // CPI into Message Transmitter
    let cpi_program = ctx.accounts.message_transmitter_program.to_account_info();
    let cpi_accounts = ReplaceMessageContext {
        sender_authority_pda: ctx.accounts.sender_authority_pda.to_account_info(),
        message_transmitter: ctx.accounts.message_transmitter.to_account_info(),
        sender_program: ctx
            .accounts
            .token_messenger_minter_program
            .to_account_info(),
    };
    let authority_seeds: &[&[&[u8]]] = &[&[
        b"sender_authority",
        &[ctx.accounts.token_messenger.authority_bump],
    ]];
    let cpi_ctx = CpiContext::new_with_signer(cpi_program, cpi_accounts, authority_seeds);

    let cpi_params = ReplaceMessageParams {
        original_message: params.original_message.clone(),
        original_attestation: params.original_attestation.clone(),
        new_message_body,
        new_destination_caller: params.new_destination_caller,
    };
    let nonce = message_transmitter::cpi::replace_message(cpi_ctx, cpi_params)?.get();

    emit!(DepositForBurn {
        nonce,
        burn_token,
        amount,
        depositor: original_message_sender,
        mint_recipient: params.new_mint_recipient,
        destination_domain: message.destination_domain()?,
        destination_token_messenger: message.recipient()?,
        destination_caller: params.new_destination_caller,
    });

    Ok(nonce)
}
