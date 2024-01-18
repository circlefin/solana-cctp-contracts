//! RemoveRemoteTokenMessenger instruction handler

use {
    crate::token_messenger::{
        error::TokenMessengerError,
        events::RemoteTokenMessengerRemoved,
        state::{RemoteTokenMessenger, TokenMessenger},
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct RemoveRemoteTokenMessengerContext<'info> {
    #[account(mut)]
    pub payee: Signer<'info>,

    #[account()]
    pub owner: Signer<'info>,

    #[account(
        has_one = owner @ TokenMessengerError::InvalidAuthority
    )]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,

    #[account(
        mut,
        seeds = [
            b"remote_token_messenger",
            remote_token_messenger.domain.to_string().as_bytes(),
        ],
        bump,
        close = payee
    )]
    pub remote_token_messenger: Box<Account<'info, RemoteTokenMessenger>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct RemoveRemoteTokenMessengerParams {}

// Instruction handler
pub fn remove_remote_token_messenger(
    ctx: Context<RemoveRemoteTokenMessengerContext>,
    _params: &RemoveRemoteTokenMessengerParams,
) -> Result<()> {
    emit_cpi!(RemoteTokenMessengerRemoved {
        domain: ctx.accounts.remote_token_messenger.domain,
        token_messenger: ctx.accounts.remote_token_messenger.token_messenger
    });

    Ok(())
}
