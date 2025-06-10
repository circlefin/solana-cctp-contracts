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

//! HandleReceiveFinalizedMessage instruction handler

use {
    crate::{
        token_messenger_v2::{
            burn_message::BurnMessage,
            error::TokenMessengerError,
            events::MintAndWithdraw,
            state::{RemoteTokenMessenger, TokenMessenger},
        },
        token_minter_v2::state::{LocalToken, TokenMinter, TokenPair},
    },
    anchor_lang::prelude::*,
    anchor_lang::solana_program::sysvar::clock::Clock,
    anchor_spl::token::{Token, TokenAccount},
};

/////////////////////////////////////////////////////////////////////////////
/// IMPORTANT!
/// If you modify this instruction to allow further arbitrary CPI calls,
/// make sure to forbid self-reentrancy. Otherwise, handle_receive_message
/// can be called again with intact signatures and data that can lead to
/// loss of funds. An example of a reentrancy check would be adding a
/// constraint to the callee program account:
/// constraint = callee.key() != crate::ID
/// /////////////////////////////////////////////////////////////////////////

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
#[instruction(params: HandleReceiveMessageParams)]
pub struct HandleReceiveMessageContext<'info> {
    // authority_pda is a Signer to ensure that this instruction
    // can only be called by Message Transmitter
    #[account(
        seeds = [b"message_transmitter_authority", crate::ID.as_ref()],
        bump = params.authority_bump,
        seeds::program = message_transmitter_v2::ID
    )]
    pub authority_pda: Signer<'info>,

    #[account()]
    pub token_messenger: Box<Account<'info, TokenMessenger>>,

    #[account(
        constraint = params.remote_domain == remote_token_messenger.domain @ TokenMessengerError::InvalidDestinationDomain
    )]
    pub remote_token_messenger: Box<Account<'info, RemoteTokenMessenger>>,

    #[account()]
    pub token_minter: Box<Account<'info, TokenMinter>>,

    #[account(
        mut,
        seeds = [
            b"local_token",
            local_token.mint.key().as_ref()
        ],
        bump = local_token.bump
    )]
    pub local_token: Box<Account<'info, LocalToken>>,

    #[account(
        constraint = token_pair.local_token == local_token.key() @ TokenMessengerError::InvalidTokenPair,
        seeds = [
            b"token_pair",
            params.remote_domain.to_string().as_bytes(),
            &BurnMessage::new(token_messenger.message_body_version, &params.message_body)?.burn_token_bytes()?
        ],
        bump = token_pair.bump,
    )]
    pub token_pair: Box<Account<'info, TokenPair>>,

    // Fee recipient's ATA
    #[account(
        mut,
        associated_token::authority = token_messenger.fee_recipient,
        associated_token::mint = local_token.mint,
    )]
    pub fee_recipient_token_account: Box<Account<'info, TokenAccount>>,

    // Recipient's token account
    #[account(
        mut,
        constraint = recipient_token_account.mint == local_token.mint
    )]
    pub recipient_token_account: Box<Account<'info, TokenAccount>>,

    // Custody token account (could be changed to token mint)
    #[account(
        mut,
        constraint = custody_token_account.mint == local_token.mint,
        seeds = [
            b"custody",
            local_token.mint.as_ref()
        ],
        bump = local_token.custody_bump
    )]
    pub custody_token_account: Box<Account<'info, TokenAccount>>,

    // Token program to be used by the Receiver
    pub token_program: Program<'info, Token>,
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct HandleReceiveMessageParams {
    pub remote_domain: u32,
    pub sender: Pubkey,
    pub finality_threshold_executed: u32,
    pub message_body: Vec<u8>,
    pub authority_bump: u8,
}

// Instruction handler
pub fn handle_receive_finalized_message(
    ctx: Context<HandleReceiveMessageContext>,
    params: &HandleReceiveMessageParams,
) -> Result<()> {
    handle_receive_message(ctx, params)
}

// Extracted common processing function also used by handle_receive_unfinalized_message.
pub(crate) fn handle_receive_message(
    ctx: Context<HandleReceiveMessageContext>,
    params: &HandleReceiveMessageParams,
) -> Result<()> {
    // Ensure the sender matches the expected token messenger
    require_eq!(
        params.sender,
        ctx.accounts.remote_token_messenger.token_messenger,
        TokenMessengerError::InvalidTokenMessenger
    );

    // Initialize burn message from the message_body while checking
    // for length and message version
    let burn_message = BurnMessage::new(
        ctx.accounts.token_messenger.message_body_version,
        &params.message_body,
    )?;

    // Extract details from the burn message
    let mint_recipient = burn_message.mint_recipient()?;
    let amount = burn_message.amount()?;
    let fee_executed = burn_message.fee_executed()?;
    let expiration_block = burn_message.expiration_block()?;
    let max_fee = burn_message.max_fee()?;

    // Validate expiration_block
    let current_block = Clock::get()?.slot;
    require!(
        expiration_block == 0 || expiration_block > current_block,
        TokenMessengerError::MessageExpired
    );

    // Validate fee_executed
    require!(fee_executed < amount, TokenMessengerError::FeeExceedsAmount);
    require!(
        fee_executed <= max_fee,
        TokenMessengerError::FeeExceedsMaxFee
    );

    // Validate mint recipient
    require_keys_eq!(
        ctx.accounts.recipient_token_account.key(),
        mint_recipient,
        TokenMessengerError::InvalidMintRecipient
    );

    let amount_less_fees = amount - fee_executed;

    // transfer tokens
    if fee_executed > 0 {
        ctx.accounts.token_minter.transfer_fee(
            ctx.accounts.custody_token_account.to_account_info(),
            ctx.accounts.fee_recipient_token_account.to_account_info(),
            ctx.accounts.token_minter.to_account_info(),
            ctx.accounts.token_program.to_account_info(),
            ctx.accounts.local_token.as_mut(),
            fee_executed,
        )?;
    }
    ctx.accounts.token_minter.transfer(
        ctx.accounts.custody_token_account.to_account_info(),
        ctx.accounts.recipient_token_account.to_account_info(),
        ctx.accounts.token_minter.to_account_info(),
        ctx.accounts.token_program.to_account_info(),
        ctx.accounts.local_token.as_mut(),
        amount_less_fees,
    )?;

    // Emit MintAndWithdraw event
    emit_cpi!(MintAndWithdraw {
        mint_recipient,
        amount: amount_less_fees,
        mint_token: ctx.accounts.local_token.mint,
        fee_collected: fee_executed
    });

    Ok(())
}
