//! EnableAttester instruction handler

use {
    crate::{error::MessageTransmitterError, events::AttesterEnabled, state::MessageTransmitter},
    anchor_lang::prelude::*,
    solana_program::pubkey::PUBKEY_BYTES,
};

// Instruction accounts
#[derive(Accounts)]
pub struct EnableAttesterContext<'info> {
    #[account(mut)]
    pub payer: Signer<'info>,

    #[account()]
    pub attester_manager: Signer<'info>,

    // MessageTransmitter::LEN includes one attester and reallocation happens before
    // the attester is added to "enabled_attesters" this is why the logic below uses
    // "enabled_attesters.len()" and not +/-1
    #[account(
        mut,
        has_one = attester_manager @ MessageTransmitterError::InvalidAuthority,
        realloc = MessageTransmitter::LEN + message_transmitter.enabled_attesters.len() * PUBKEY_BYTES,
        realloc::payer = payer,
        realloc::zero = false
    )]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,

    system_program: Program<'info, System>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct EnableAttesterParams {
    new_attester: Pubkey,
}

// Instruction handler
pub fn enable_attester(
    ctx: Context<EnableAttesterContext>,
    params: &EnableAttesterParams,
) -> Result<()> {
    require_keys_neq!(
        params.new_attester,
        Pubkey::default(),
        MessageTransmitterError::InvalidAttester
    );

    require!(
        !ctx.accounts
            .message_transmitter
            .is_enabled_attester(&params.new_attester),
        MessageTransmitterError::AttesterAlreadyEnabled
    );

    // enable the attester
    ctx.accounts
        .message_transmitter
        .enabled_attesters
        .push(params.new_attester);

    emit!(AttesterEnabled {
        attester: params.new_attester
    });

    Ok(())
}
