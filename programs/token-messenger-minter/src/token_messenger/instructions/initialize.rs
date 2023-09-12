//! Initialize instruction handler

use {
    crate::{
        program,
        token_messenger::{error::TokenMessengerError, state::TokenMessenger},
        token_minter::{error::TokenMinterError, events::SetTokenController, state::TokenMinter},
    },
    anchor_lang::prelude::*,
    message_transmitter::utils,
};

// Instruction accounts
#[derive(Accounts)]
pub struct InitializeContext<'info> {
    #[account(mut)]
    pub payer: Signer<'info>,

    #[account()]
    pub upgrade_authority: Signer<'info>,

    /// CHECK: empty PDA, used to check that sendMessage was called by TokenMessenger
    #[account(
        seeds = [b"sender_authority"],
        bump
    )]
    pub authority_pda: AccountInfo<'info>,

    // TokenMessenger state account
    #[account(
        init,
        payer = payer,
        space = utils::DISCRIMINATOR_SIZE + TokenMessenger::INIT_SPACE,
        seeds = [b"token_messenger"],
        bump
    )]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,

    // TokenMinter state account
    #[account(
        init,
        payer = payer,
        space = utils::DISCRIMINATOR_SIZE + TokenMinter::INIT_SPACE,
        seeds = [b"token_minter"],
        bump
    )]
    pub token_minter: Box<Account<'info, TokenMinter>>,

    /// CHECK: ProgramData account, not used for anchor tests
    #[account()]
    pub token_messenger_minter_program_data: AccountInfo<'info /*, ProgramData*/>,

    pub token_messenger_minter_program: Program<'info, program::TokenMessengerMinter>,

    pub system_program: Program<'info, System>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct InitializeParams {
    pub token_controller: Pubkey,
    pub local_message_transmitter: Pubkey,
    pub message_body_version: u32,
}

// Instruction handler
pub fn initialize(ctx: Context<InitializeContext>, params: &InitializeParams) -> Result<()> {
    crate::utils::validate_upgrade_authority(
        ctx.accounts.upgrade_authority.key(),
        &ctx.accounts
            .token_messenger_minter_program_data
            .to_account_info(),
        &ctx.accounts
            .token_messenger_minter_program
            .to_account_info(),
    )?;

    // record token_messenger state
    let authority = ctx.accounts.upgrade_authority.key();
    let token_messenger = ctx.accounts.token_messenger.as_mut();
    token_messenger.owner = authority;
    token_messenger.pending_owner = Pubkey::default();
    token_messenger.local_message_transmitter = params.local_message_transmitter;
    token_messenger.message_body_version = params.message_body_version;
    token_messenger.authority_bump = *ctx
        .bumps
        .get("authority_pda")
        .ok_or(ProgramError::InvalidSeeds)?;

    // validate the state
    require!(
        token_messenger.validate(),
        TokenMessengerError::InvalidTokenMessengerState
    );

    // record token_minter state
    let token_minter = ctx.accounts.token_minter.as_mut();
    token_minter.token_controller = params.token_controller;
    token_minter.pauser = authority;
    token_minter.paused = false;
    token_minter.bump = *ctx
        .bumps
        .get("token_minter")
        .ok_or(ProgramError::InvalidSeeds)?;

    // validate the state
    require!(
        token_minter.validate(),
        TokenMinterError::InvalidTokenMinterState
    );

    emit!(SetTokenController {
        token_controller: params.token_controller
    });

    Ok(())
}
