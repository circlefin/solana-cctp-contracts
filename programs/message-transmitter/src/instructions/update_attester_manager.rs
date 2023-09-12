//! UpdateAttesterManager instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::AttesterManagerUpdated, state::MessageTransmitter,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct UpdateAttesterManagerContext<'info> {
    #[account()]
    pub owner: Signer<'info>,

    #[account(
        mut,
        has_one = owner @ MessageTransmitterError::InvalidAuthority
    )]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct UpdateAttesterManagerParams {
    pub new_attester_manager: Pubkey,
}

// Instruction handler
pub fn update_attester_manager(
    ctx: Context<UpdateAttesterManagerContext>,
    params: &UpdateAttesterManagerParams,
) -> Result<()> {
    require_keys_neq!(
        params.new_attester_manager,
        Pubkey::default(),
        MessageTransmitterError::InvalidAttesterManager
    );

    let previous_attester_manager = ctx.accounts.message_transmitter.attester_manager;

    ctx.accounts.message_transmitter.attester_manager = params.new_attester_manager;

    emit!(AttesterManagerUpdated {
        previous_attester_manager,
        new_attester_manager: params.new_attester_manager
    });

    Ok(())
}
