//! CCTP program entrypoint

#![allow(clippy::result_large_err)]

pub mod error;
pub mod events;
pub mod instructions;
pub mod state;

use {anchor_lang::prelude::*, instructions::*};

solana_security_txt::security_txt! {
    name: "Message Transmitter for CCTP",
    project_url: "https://github.com/circlefin/solana-cctp-contracts",
    contacts: "email:defi@solana.com",
    policy: "",
    preferred_languages: "en",
    auditors: ""
}

declare_id!("Fg6PaFpoGXkYsidMpWTK6W2BeZ7FEfcYkg476zPFsLnS");

#[program]
pub mod message_transmitter {
    use super::*;

    pub fn initialize(ctx: Context<Initialize>) -> Result<()> {
        Ok(())
    }
}
