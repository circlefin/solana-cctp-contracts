/*
 * Copyright (c) 2024, Circle Internet Financial LTD All Rights Reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
 
 //! State

use {
    crate::token_minter::error::TokenMinterError,
    anchor_lang::prelude::*,
    anchor_spl::token::{Burn, Transfer},
};

#[account]
#[derive(Debug, InitSpace)]
pub struct TokenMinter {
    pub token_controller: Pubkey,
    pub pauser: Pubkey,
    pub paused: bool,
    pub bump: u8,
}

#[account]
#[derive(Debug, InitSpace)]
pub struct TokenPair {
    pub remote_domain: u32,
    pub remote_token: Pubkey,
    pub local_token: Pubkey,
    pub bump: u8,
}

#[account]
#[derive(Debug, InitSpace)]
pub struct LocalToken {
    pub custody: Pubkey,
    pub mint: Pubkey,
    pub burn_limit_per_message: u64,
    pub messages_sent: u64,
    pub messages_received: u64,
    pub amount_sent: u128,
    pub amount_received: u128,
    pub bump: u8,
    pub custody_bump: u8,
}

impl TokenMinter {
    pub fn validate(&self) -> bool {
        self.token_controller != Pubkey::default() && self.pauser != Pubkey::default()
    }

    pub fn burn<'info>(
        &self,
        mint: AccountInfo<'info>,
        from: AccountInfo<'info>,
        authority: AccountInfo<'info>,
        token_program: AccountInfo<'info>,
        local_token: &mut LocalToken,
        amount: u64,
    ) -> Result<()> {
        require!(!self.paused, TokenMinterError::ProgramPaused);
        require_gte!(
            local_token.burn_limit_per_message,
            amount,
            TokenMinterError::BurnAmountExceeded
        );

        local_token.messages_sent = local_token.messages_sent.saturating_add(1);
        local_token.amount_sent = local_token.amount_sent.saturating_add(amount as u128);

        let context: CpiContext<'_, '_, '_, '_, Burn<'_>> = CpiContext::new(
            token_program,
            Burn {
                mint,
                from,
                authority,
            },
        );

        anchor_spl::token::burn(context, amount)
    }

    pub fn transfer<'info>(
        &self,
        from: AccountInfo<'info>,
        to: AccountInfo<'info>,
        authority: AccountInfo<'info>,
        token_program: AccountInfo<'info>,
        local_token: &mut LocalToken,
        amount: u64,
    ) -> Result<()> {
        require!(!self.paused, TokenMinterError::ProgramPaused);

        local_token.messages_received = local_token.messages_received.saturating_add(1);
        local_token.amount_received = local_token.amount_received.saturating_add(amount as u128);

        let authority_seeds: &[&[&[u8]]] = &[&[b"token_minter", &[self.bump]]];

        let context = CpiContext::new(
            token_program,
            Transfer {
                from,
                to,
                authority,
            },
        )
        .with_signer(authority_seeds);

        anchor_spl::token::transfer(context, amount)
    }

    pub fn close_token_account<'info>(
        &self,
        receiver: AccountInfo<'info>,
        token_account: AccountInfo<'info>,
        token_program: AccountInfo<'info>,
        authority: AccountInfo<'info>,
    ) -> Result<()> {
        require!(!self.paused, TokenMinterError::ProgramPaused);

        let authority_seeds: &[&[&[u8]]] = &[&[b"token_minter", &[self.bump]]];

        let cpi_accounts = anchor_spl::token::CloseAccount {
            account: token_account,
            destination: receiver,
            authority,
        };
        let cpi_context = anchor_lang::context::CpiContext::new(token_program, cpi_accounts);

        anchor_spl::token::close_account(cpi_context.with_signer(authority_seeds))
    }
}

impl TokenPair {
    pub fn validate(&self) -> bool {
        self.remote_token != Pubkey::default() && self.local_token != Pubkey::default()
    }
}

impl LocalToken {
    pub fn validate(&self) -> bool {
        self.custody != Pubkey::default() && self.mint != Pubkey::default()
    }
}
