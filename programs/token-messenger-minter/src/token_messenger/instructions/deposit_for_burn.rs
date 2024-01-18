//! DepositForBurn instruction handler

use {
    crate::{
        program,
        token_messenger::{
            burn_message::BurnMessage,
            error::TokenMessengerError,
            events::DepositForBurn,
            state::{RemoteTokenMessenger, TokenMessenger},
        },
        token_minter::state::{LocalToken, TokenMinter},
    },
    anchor_lang::prelude::*,
    anchor_spl::token::{Mint, Token, TokenAccount},
    message_transmitter::{
        cpi::accounts::SendMessageContext,
        instructions::{SendMessageParams, SendMessageWithCallerParams},
        state::MessageTransmitter,
    },
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
#[instruction(params: DepositForBurnParams)]
pub struct DepositForBurnContext<'info> {
    #[account()]
    pub owner: Signer<'info>,

    #[account(mut)]
    pub event_rent_payer: Signer<'info>,

    /// CHECK: empty PDA, used to check that sendMessage was called by TokenMessenger
    #[account(
        seeds = [b"sender_authority"],
        bump = token_messenger.authority_bump,
    )]
    pub sender_authority_pda: UncheckedAccount<'info>,

    #[account(
        mut,
        constraint = burn_token_account.mint == burn_token_mint.key(),
        has_one = owner
    )]
    pub burn_token_account: Box<Account<'info, TokenAccount>>,

    #[account(mut)]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,

    #[account()]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,

    #[account(
        constraint = params.destination_domain == remote_token_messenger.domain @ TokenMessengerError::InvalidDestinationDomain
    )]
    pub remote_token_messenger: Box<Account<'info, RemoteTokenMessenger>>,

    #[account()]
    pub token_minter: Box<Account<'info, TokenMinter>>,

    #[account(
        mut,
        seeds = [
            b"local_token",
            burn_token_mint.key().as_ref(),
        ],
        bump = local_token.bump,
    )]
    pub local_token: Box<Account<'info, LocalToken>>,

    #[account(mut)]
    pub burn_token_mint: Box<Account<'info, Mint>>,

    /// CHECK: Account to store MessageSent event data in. Any non-PDA uninitialized address.
    #[account(mut)]
    pub message_sent_event_data: Signer<'info>,

    pub message_transmitter_program:
        Program<'info, message_transmitter::program::MessageTransmitter>,

    pub token_messenger_minter_program: Program<'info, program::TokenMessengerMinter>,

    pub token_program: Program<'info, Token>,

    pub system_program: Program<'info, System>,
}

// Instruction parameters
// NOTE: Do not reorder parameters fields. repr(C) is used to fix the layout of the struct
// so DepositForBurnWithCallerParams can be deserialized as DepositForBurnParams.
#[repr(C)]
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct DepositForBurnParams {
    pub amount: u64,
    pub destination_domain: u32,
    pub mint_recipient: Pubkey,
}

// Instruction handler
pub fn deposit_for_burn(
    ctx: Context<DepositForBurnContext>,
    params: &DepositForBurnParams,
) -> Result<u64> {
    deposit_for_burn_helper(
        ctx,
        params.amount,
        params.destination_domain,
        &params.mint_recipient,
        &Pubkey::default(),
    )
}

/// Deposits and burns tokens from sender to be minted on destination domain
pub fn deposit_for_burn_helper(
    ctx: Context<DepositForBurnContext>,
    amount: u64,
    destination_domain: u32,
    mint_recipient: &Pubkey,
    destination_caller: &Pubkey,
) -> Result<u64> {
    require_gt!(amount, 0, TokenMessengerError::InvalidAmount);

    require_keys_neq!(
        *mint_recipient,
        Pubkey::default(),
        TokenMessengerError::InvalidMintRecipient
    );

    ctx.accounts.token_minter.burn(
        ctx.accounts.burn_token_mint.to_account_info(),
        ctx.accounts.burn_token_account.to_account_info(),
        ctx.accounts.owner.to_account_info(),
        ctx.accounts.token_program.to_account_info(),
        ctx.accounts.local_token.as_mut(),
        amount,
    )?;

    let burn_message = BurnMessage::format_message(
        ctx.accounts.token_messenger.message_body_version,
        &ctx.accounts.burn_token_mint.key(),
        mint_recipient,
        amount,
        &ctx.accounts.owner.key(),
    )?;

    // CPI into Message Transmitter
    let cpi_program = ctx.accounts.message_transmitter_program.to_account_info();
    let cpi_accounts = SendMessageContext {
        event_rent_payer: ctx.accounts.event_rent_payer.to_account_info(),
        sender_authority_pda: ctx.accounts.sender_authority_pda.to_account_info(),
        message_transmitter: ctx.accounts.message_transmitter.to_account_info(),
        message_sent_event_data: ctx.accounts.message_sent_event_data.to_account_info(),
        sender_program: ctx
            .accounts
            .token_messenger_minter_program
            .to_account_info(),
        system_program: ctx.accounts.system_program.to_account_info(),
    };
    let authority_seeds: &[&[&[u8]]] = &[&[
        b"sender_authority",
        &[ctx.accounts.token_messenger.authority_bump],
    ]];
    let cpi_ctx = CpiContext::new_with_signer(cpi_program, cpi_accounts, authority_seeds);

    let nonce = if destination_caller == &Pubkey::default() {
        let cpi_params = SendMessageParams {
            destination_domain,
            recipient: ctx.accounts.remote_token_messenger.token_messenger,
            message_body: burn_message,
        };
        message_transmitter::cpi::send_message(cpi_ctx, cpi_params)?.get()
    } else {
        let cpi_params = SendMessageWithCallerParams {
            destination_domain,
            recipient: ctx.accounts.remote_token_messenger.token_messenger,
            destination_caller: *destination_caller,
            message_body: burn_message,
        };
        message_transmitter::cpi::send_message_with_caller(cpi_ctx, cpi_params)?.get()
    };

    emit_cpi!(DepositForBurn {
        nonce,
        burn_token: ctx.accounts.burn_token_mint.key(),
        amount,
        depositor: ctx.accounts.owner.key(),
        mint_recipient: *mint_recipient,
        destination_domain,
        destination_token_messenger: ctx.accounts.remote_token_messenger.token_messenger,
        destination_caller: *destination_caller,
    });

    Ok(nonce)
}
