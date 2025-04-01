/*
 * Copyright (c) 2025, Circle Internet Financial LTD All Rights Reserved.
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

//! Undenylist instruction handler

use crate::token_messenger_v2::UnDenylisted;
use {
    crate::token_messenger_v2::{error::TokenMessengerError, state::TokenMessenger},
    anchor_lang::prelude::*,
    anchor_lang::solana_program::pubkey::PUBKEY_BYTES,
};

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
pub struct UndenylistContext<'info> {
    #[account(mut)]
    pub payer: Signer<'info>,

    #[account()]
    pub denylister: Signer<'info>,

    // Re allocate space based on the remaining accounts in the denylist after removal
    #[account(
        mut,
        has_one = denylister @ TokenMessengerError::InvalidAuthority,
        realloc = TokenMessenger::DISCRIMINATOR.len() + TokenMessenger::INIT_SPACE +
                    if token_messenger.denylist.len() == 0 {
                        0
                    } else {
                        (token_messenger.denylist.len() - 1) * PUBKEY_BYTES
                    },
        realloc::payer = payer,
        realloc::zero = false
    )]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,

    pub system_program: Program<'info, System>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Copy, Clone)]
pub struct UndenylistParams {
    pub account: Pubkey,
}

// Instruction handler
pub fn undenylist_account(
    ctx: Context<UndenylistContext>,
    params: &UndenylistParams,
) -> Result<()> {
    if let Some(pos) = ctx
        .accounts
        .token_messenger
        .denylist
        .iter()
        .position(|x| x == &params.account)
    {
        ctx.accounts.token_messenger.denylist.remove(pos);

        emit_cpi!(UnDenylisted {
            account: params.account
        });
    } else {
        return err!(TokenMessengerError::AccountNotInDenylist);
    }

    Ok(())
}
