//! TokenMessenger and TokenMinter program entrypoint

#![allow(clippy::result_large_err)]

pub mod token_messenger;
pub mod token_minter;

use {anchor_lang::prelude::*, token_messenger::*, token_minter::*};

solana_security_txt::security_txt! {
    name: "Token Messenger and Minter for CCTP",
    project_url: "https://github.com/circlefin/solana-cctp-contracts",
    contacts: "email:defi@solana.com",
    policy: "",
    preferred_languages: "en",
    auditors: ""
}

declare_id!("CCTPiPYPc6AsJuwueEnWgSgucamXDZwBd53dQ11YiKX3");

#[program]
pub mod token_messenger_minter {
    use super::*;

    /*pub fn initialize(ctx: Context<Initialize>) -> Result<()> {
        Ok(())
    }*/
}
