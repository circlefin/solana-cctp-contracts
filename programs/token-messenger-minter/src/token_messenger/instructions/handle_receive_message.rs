//! HandleReceiveMessage instruction handler

use {
    crate::{
        token_messenger::{
            burn_message::BurnMessage,
            error::TokenMessengerError,
            events::MintAndWithdraw,
            state::{RemoteTokenMessenger, TokenMessenger},
        },
        token_minter::state::{LocalToken, TokenMinter, TokenPair},
    },
    anchor_lang::prelude::*,
    anchor_spl::token::{Token, TokenAccount},
    message_transmitter::state::MessageTransmitter,
};

// Instruction accounts
#[derive(Accounts)]
#[instruction(remote_domain: u32, sender: Pubkey, message_body: Vec<u8>)]
pub struct HandleReceiveMessageContext<'info> {
    #[account(
        seeds = [b"message_transmitter_authority"],
        bump = message_transmitter.authority_bump,
        seeds::program = message_transmitter::ID
    )]
    pub authority_pda: Signer<'info>,

    #[account()]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,

    #[account()]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,

    #[account(
        constraint = remote_domain == remote_token_messenger.domain @ TokenMessengerError::InvalidDestinationDomain
    )]
    pub remote_token_messenger: Box<Account<'info, RemoteTokenMessenger>>,

    #[account()]
    pub token_minter: Box<Account<'info, TokenMinter>>,

    #[account(
        mut,
        seeds = [
            b"local_token",
            local_token.mint.key().as_ref()
        ],
        bump = local_token.bump
    )]
    pub local_token: Box<Account<'info, LocalToken>>,

    #[account(
        constraint = token_pair.local_token == local_token.key() @ TokenMessengerError::InvalidTokenPair,
        seeds = [
            b"token_pair",
            remote_domain.to_string().as_bytes(),
            BurnMessage::new(token_messenger.message_body_version, &message_body)?.burn_token()?.as_ref()
        ],
        bump = token_pair.bump,
    )]
    pub token_pair: Box<Account<'info, TokenPair>>,

    ///CHECK: recipient's token account
    #[account(
        mut,
        constraint = recipient_token_account.mint == local_token.mint
    )]
    pub recipient_token_account: Box<Account<'info, TokenAccount>>,

    ///CHECK: custody token account (could be changed to token mint)
    #[account(
        mut,
        constraint = custody_token_account.mint == local_token.mint,
        seeds = [
            b"custody",
            local_token.mint.as_ref()
        ],
        bump = local_token.custody_bump
    )]
    pub custody_token_account: Box<Account<'info, TokenAccount>>,

    ///CHECK: Token program to be used by the Receiver
    pub token_program: Program<'info, Token>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct HandleReceiveMessageParams {
    pub remote_domain: u32,
    pub sender: Pubkey,
    pub message_body: Vec<u8>,
}

// Instruction handler
pub fn handle_receive_message(
    ctx: Context<HandleReceiveMessageContext>,
    params: &HandleReceiveMessageParams,
) -> Result<()> {
    //TODO: generate better test
    #[cfg(not(feature = "test"))]
    require_eq!(
        params.sender,
        ctx.accounts.remote_token_messenger.token_messenger,
        TokenMessengerError::InvalidTokenMessenger
    );

    let burn_message = BurnMessage::new(
        ctx.accounts.token_messenger.message_body_version,
        &params.message_body,
    )?;

    let mint_recipient = burn_message.mint_recipient()?;
    let amount = burn_message.amount()?;

    ctx.accounts.token_minter.transfer(
        ctx.accounts.custody_token_account.to_account_info(),
        ctx.accounts.recipient_token_account.to_account_info(),
        ctx.accounts.token_minter.to_account_info(),
        ctx.accounts.token_program.to_account_info(),
        ctx.accounts.local_token.as_mut(),
        amount,
    )?;

    emit!(MintAndWithdraw {
        mint_recipient,
        amount,
        mint_token: ctx.accounts.local_token.mint
    });

    Ok(())
}
