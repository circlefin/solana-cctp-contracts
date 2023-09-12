//! SetSignatureThreshold instruction handler

use {
    crate::{
        error::MessageTransmitterError, events::SignatureThresholdUpdated,
        state::MessageTransmitter,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts
#[derive(Accounts)]
pub struct SetSignatureThresholdContext<'info> {
    #[account()]
    pub attester_manager: Signer<'info>,

    #[account(
        mut,
        has_one = attester_manager @ MessageTransmitterError::InvalidAuthority
    )]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct SetSignatureThresholdParams {
    pub new_signature_threshold: u32,
}

// Instruction handler
pub fn set_signature_threshold(
    ctx: Context<SetSignatureThresholdContext>,
    params: &SetSignatureThresholdParams,
) -> Result<()> {
    let message_transmitter = ctx.accounts.message_transmitter.as_mut();

    require_gt!(
        params.new_signature_threshold,
        0,
        MessageTransmitterError::InvalidSignatureThreshold
    );

    require_gte!(
        message_transmitter.enabled_attesters.len(),
        params.new_signature_threshold as usize,
        MessageTransmitterError::InvalidSignatureThreshold
    );

    require_neq!(
        message_transmitter.signature_threshold,
        params.new_signature_threshold,
        MessageTransmitterError::SignatureThresholdAlreadySet
    );

    let old_signature_threshold = message_transmitter.signature_threshold;

    message_transmitter.signature_threshold = params.new_signature_threshold;

    emit!(SignatureThresholdUpdated {
        old_signature_threshold,
        new_signature_threshold: params.new_signature_threshold
    });

    Ok(())
}
