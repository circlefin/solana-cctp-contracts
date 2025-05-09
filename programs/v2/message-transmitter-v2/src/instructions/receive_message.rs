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

//! ReceiveMessage instruction handler

use {
    crate::{
        error::MessageTransmitterError,
        events::MessageReceived,
        message::Message,
        state::{MessageTransmitter, UsedNonce},
        utils,
    },
    anchor_lang::prelude::*,
    anchor_lang::solana_program::{
        instruction::{AccountMeta, Instruction},
        program,
    },
};

const FINALITY_THRESHOLD_FINALIZED: u32 = 2000;

// Instruction accounts
#[event_cpi]
#[derive(Accounts)]
#[instruction(params: ReceiveMessageParams)]
pub struct ReceiveMessageContext<'info> {
    #[account(mut)]
    pub payer: Signer<'info>,

    #[account()]
    pub caller: Signer<'info>,

    /// CHECK: empty PDA, used to check that handleReceiveFinalizedMessage or handleReceiveUnfinalizedMessage was called by MessageTransmitter
    #[account(
        seeds = [b"message_transmitter_authority", receiver.key().as_ref()],
        bump,
    )]
    pub authority_pda: UncheckedAccount<'info>,

    #[account()]
    pub message_transmitter: Box<Account<'info, MessageTransmitter>>,

    /// Each nonce is stored in a separate PDA
    #[account(
        init,
        payer = payer,
        space = utils::DISCRIMINATOR_SIZE + UsedNonce::INIT_SPACE,
        seeds = [
            b"used_nonce",
            &params.message[Message::NONCE_INDEX..Message::SENDER_INDEX] // Using message nonce as seed to create a unique nonce account.
        ],
        bump
    )]
    pub used_nonce: Box<Account<'info, UsedNonce>>,

    ///CHECK: Receiver program address, e.g. TokenMessenger
    #[account(
        constraint = receiver.executable,
        constraint = receiver.key() != crate::ID
    )]
    pub receiver: UncheckedAccount<'info>,

    pub system_program: Program<'info, System>,
    // remaining accounts: additional accounts to be passed to the receiver
}

// Instruction parameters
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct ReceiveMessageParams {
    pub message: Vec<u8>,
    pub attestation: Vec<u8>,
}

// Same message params for both HandleReceiveFinalizedMessage and HandleReceiveUnFinalizedMessage
#[derive(AnchorSerialize, AnchorDeserialize, Clone)]
pub struct HandleReceiveMessageParams {
    pub remote_domain: u32,
    pub sender: Pubkey,
    pub finality_threshold_executed: u32,
    pub message_body: Vec<u8>,
    pub authority_bump: u8,
}

// Instruction handler
pub fn receive_message<'info>(
    ctx: Context<'_, '_, '_, 'info, ReceiveMessageContext<'info>>,
    params: &ReceiveMessageParams,
) -> Result<()> {
    let message_transmitter = ctx.accounts.message_transmitter.as_ref();

    require!(
        !message_transmitter.paused,
        MessageTransmitterError::ProgramPaused
    );

    let message = Message::new(message_transmitter.version, &params.message)?;

    message_transmitter.verify_attestation_signatures(&message.hash(), &params.attestation)?;

    require!(
        message.destination_domain()? == message_transmitter.local_domain,
        MessageTransmitterError::InvalidDestinationDomain
    );

    let destination_caller = message.destination_caller()?;
    if destination_caller != Pubkey::default() {
        require_keys_eq!(
            destination_caller,
            ctx.accounts.caller.key(),
            MessageTransmitterError::InvalidDestinationCaller
        );
    }

    let source_domain = message.source_domain()?;
    let sender = message.sender()?;
    let nonce = message.nonce()?;
    ctx.accounts.used_nonce.is_used = true;

    // CPI into recipient
    let receiver_key = ctx.accounts.receiver.key();
    require_keys_eq!(
        message.recipient()?,
        receiver_key,
        MessageTransmitterError::InvalidRecipientProgram
    );

    let authority_bump = ctx.bumps.authority_pda;
    let authority_seeds: &[&[&[u8]]] = &[&[
        b"message_transmitter_authority",
        receiver_key.as_ref(),
        &[authority_bump],
    ]];

    let mut accounts = Vec::with_capacity(2 + ctx.remaining_accounts.len());
    accounts.push(AccountMeta::new_readonly(
        ctx.accounts.authority_pda.key(),
        true,
    ));

    for acc in ctx.remaining_accounts {
        if acc.is_writable {
            accounts.push(AccountMeta::new(acc.key(), acc.is_signer));
        } else {
            accounts.push(AccountMeta::new_readonly(acc.key(), acc.is_signer));
        }
    }

    let finality_threshold_executed = message.finality_threshold_executed()?;

    let params = HandleReceiveMessageParams {
        remote_domain: source_domain,
        sender,
        finality_threshold_executed,
        message_body: message.message_body().to_vec(),
        authority_bump,
    };

    let handler_name = if finality_threshold_executed < FINALITY_THRESHOLD_FINALIZED {
        "global:handle_receive_unfinalized_message"
    } else {
        "global:handle_receive_finalized_message"
    };

    let serialized_cpi_data_size = 53;
    let mut data = Vec::with_capacity(serialized_cpi_data_size + message.message_body().len());
    data.extend_from_slice(
        &anchor_lang::solana_program::hash::hash(handler_name.as_bytes()).to_bytes()[..8],
    );
    data.extend_from_slice(&params.try_to_vec()?);

    let instruction = Instruction {
        program_id: ctx.accounts.receiver.key(),
        accounts,
        data,
    };

    let mut account_infos = vec![ctx.accounts.authority_pda.to_account_info()];
    account_infos.extend(
        ctx.remaining_accounts
            .iter()
            .map(|acc| acc.to_account_info()),
    );

    program::invoke_signed(&instruction, &account_infos, authority_seeds)?;

    emit_cpi!(MessageReceived {
        caller: ctx.accounts.caller.key(),
        source_domain,
        nonce,
        sender,
        finality_threshold_executed,
        message_body: message.message_body().to_vec()
    });

    Ok(())
}
