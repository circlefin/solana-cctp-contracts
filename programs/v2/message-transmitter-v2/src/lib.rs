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

#![allow(unexpected_cfgs)]

//! MessageTransmitterV2 program entrypoint

pub mod error;
pub mod events;
pub mod instructions;
pub mod message;
pub mod state;
pub mod utils;

use {anchor_lang::prelude::*, instructions::*};

#[cfg(not(feature = "no-entrypoint"))]
solana_security_txt::security_txt! {
    name: "Message Transmitter for CCTP V2",
    project_url: "https://github.com/circlefin/solana-cctp-contracts",
    contacts: "link:https://github.com/circlefin/solana-cctp-contracts/blob/master/SECURITY.md",
    policy: "https://github.com/circlefin/solana-cctp-contracts/blob/master/SECURITY.md"
}
declare_id!("CCTPV2Sm4AdWt5296sk4P66VBZ7bEhcARwFaaS9YPbeC");

#[program]
pub mod message_transmitter_v2 {
    use super::*;

    pub fn initialize(ctx: Context<InitializeContext>, params: InitializeParams) -> Result<()> {
        instructions::initialize(ctx, &params)
    }

    pub fn transfer_ownership(
        ctx: Context<TransferOwnershipContext>,
        params: TransferOwnershipParams,
    ) -> Result<()> {
        instructions::transfer_ownership(ctx, &params)
    }

    pub fn accept_ownership(
        ctx: Context<AcceptOwnershipContext>,
        params: AcceptOwnershipParams,
    ) -> Result<()> {
        instructions::accept_ownership(ctx, &params)
    }

    pub fn update_pauser(
        ctx: Context<UpdatePauserContext>,
        params: UpdatePauserParams,
    ) -> Result<()> {
        instructions::update_pauser(ctx, &params)
    }

    pub fn update_attester_manager(
        ctx: Context<UpdateAttesterManagerContext>,
        params: UpdateAttesterManagerParams,
    ) -> Result<()> {
        instructions::update_attester_manager(ctx, &params)
    }

    pub fn pause(ctx: Context<PauseContext>, params: PauseParams) -> Result<()> {
        instructions::pause(ctx, &params)
    }

    pub fn unpause(ctx: Context<UnpauseContext>, params: UnpauseParams) -> Result<()> {
        instructions::unpause(ctx, &params)
    }

    pub fn set_max_message_body_size(
        ctx: Context<SetMaxMessageBodySizeContext>,
        params: SetMaxMessageBodySizeParams,
    ) -> Result<()> {
        instructions::set_max_message_body_size(ctx, &params)
    }

    pub fn enable_attester(
        ctx: Context<EnableAttesterContext>,
        params: EnableAttesterParams,
    ) -> Result<()> {
        instructions::enable_attester(ctx, &params)
    }

    pub fn disable_attester(
        ctx: Context<DisableAttesterContext>,
        params: DisableAttesterParams,
    ) -> Result<()> {
        instructions::disable_attester(ctx, &params)
    }

    pub fn set_signature_threshold(
        ctx: Context<SetSignatureThresholdContext>,
        params: SetSignatureThresholdParams,
    ) -> Result<()> {
        instructions::set_signature_threshold(ctx, &params)
    }

    pub fn send_message(ctx: Context<SendMessageContext>, params: SendMessageParams) -> Result<()> {
        instructions::send_message(ctx, &params)
    }

    pub fn receive_message<'info>(
        ctx: Context<'_, '_, '_, 'info, ReceiveMessageContext<'info>>,
        params: ReceiveMessageParams,
    ) -> Result<()> {
        instructions::receive_message(ctx, &params)
    }

    pub fn reclaim_event_account(
        ctx: Context<ReclaimEventAccountContext>,
        params: ReclaimEventAccountParams,
    ) -> Result<()> {
        instructions::reclaim_event_account(ctx, &params)
    }

    pub fn is_nonce_used(ctx: Context<IsNonceUsedContext>) -> Result<bool> {
        instructions::is_nonce_used(ctx)
    }
}
