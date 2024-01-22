//! IsNonceUsed instruction handler

use {crate::state::UsedNonces, anchor_lang::prelude::*};

// Instruction accounts
#[derive(Accounts)]
pub struct IsNonceUsedContext<'info> {
    /// CHECK: Used nonces state
    /// Account will be explicitly loaded to avoid error when it's not initialized
    #[account()]
    pub used_nonces: UncheckedAccount<'info>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct IsNonceUsedParams {
    pub nonce: u64,
}

// Instruction handler
pub fn is_nonce_used(ctx: Context<IsNonceUsedContext>, params: &IsNonceUsedParams) -> Result<bool> {
    match Account::<UsedNonces>::try_from(&ctx.accounts.used_nonces) {
        Ok(used_nonces) => {
            require_keys_eq!(*ctx.accounts.used_nonces.owner, crate::ID);
            used_nonces.is_nonce_used(params.nonce)
        }
        Err(err) => {
            if ctx.accounts.used_nonces.data_is_empty() {
                Ok(false)
            } else {
                Err(err)
            }
        }
    }
}
