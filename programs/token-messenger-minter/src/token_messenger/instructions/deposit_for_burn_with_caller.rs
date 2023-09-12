//! DepositForBurnWithCaller instruction handler

use {
    crate::{
        token_messenger::error::TokenMessengerError,
        token_messenger::instructions::DepositForBurnContext,
    },
    anchor_lang::prelude::*,
};

// Instruction accounts are the same as for SendMessage instruction

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct DepositForBurnWithCallerParams {
    pub amount: u64,
    pub destination_domain: u32,
    pub mint_recipient: Pubkey,
    pub destination_caller: Pubkey,
}

// Instruction handler
pub fn deposit_for_burn_with_caller(
    ctx: Context<DepositForBurnContext>,
    params: &DepositForBurnWithCallerParams,
) -> Result<u64> {
    require_keys_neq!(
        params.destination_caller,
        Pubkey::default(),
        TokenMessengerError::InvalidDestinationCaller
    );

    crate::token_messenger::instructions::deposit_for_burn_helper(
        ctx,
        params.amount,
        params.destination_domain,
        &params.mint_recipient,
        &params.destination_caller,
    )
}
