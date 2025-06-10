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

//! TokenMessengerMinterV2 program entrypoint

#![allow(unexpected_cfgs)]

pub mod token_messenger_v2;
pub mod token_minter_v2;

use {anchor_lang::prelude::*, token_messenger_v2::*, token_minter_v2::*};

#[cfg(not(feature = "no-entrypoint"))]
solana_security_txt::security_txt! {
    name: "Token Messenger Minter for CCTP V2",
    project_url: "https://github.com/circlefin/solana-cctp-contracts",
    contacts: "link:https://github.com/circlefin/solana-cctp-contracts/blob/master/SECURITY.md",
    policy: "https://github.com/circlefin/solana-cctp-contracts/blob/master/SECURITY.md"
}

declare_id!("CCTPV2vPZJS2u2BBsUoscuikbYjnpFmbFsvVuJdgUMQe");

#[program]
pub mod token_messenger_minter_v2 {
    use super::*;

    // Minimum fee multiplier to support 1/1000 basis point precision
    pub const MIN_FEE_MULTIPLIER: u64 = 10_000_000;

    // token_messenger_v2 instructions

    pub fn initialize(ctx: Context<InitializeContext>, params: InitializeParams) -> Result<()> {
        token_messenger_v2::instructions::initialize(ctx, &params)
    }

    pub fn denylist_account(ctx: Context<DenylistContext>, params: DenylistParams) -> Result<()> {
        token_messenger_v2::instructions::denylist_account(ctx, &params)
    }

    pub fn undenylist_account(
        ctx: Context<UndenylistContext>,
        params: UndenylistParams,
    ) -> Result<()> {
        token_messenger_v2::instructions::undenylist_account(ctx, &params)
    }

    pub fn update_denylister(
        ctx: Context<UpdateDenylisterContext>,
        params: UpdateDenylisterParams,
    ) -> Result<()> {
        token_messenger_v2::instructions::update_denylister(ctx, &params)
    }

    pub fn transfer_ownership(
        ctx: Context<TransferOwnershipContext>,
        params: TransferOwnershipParams,
    ) -> Result<()> {
        token_messenger_v2::instructions::transfer_ownership(ctx, &params)
    }

    pub fn accept_ownership(
        ctx: Context<AcceptOwnershipContext>,
        params: AcceptOwnershipParams,
    ) -> Result<()> {
        token_messenger_v2::instructions::accept_ownership(ctx, &params)
    }

    pub fn add_remote_token_messenger(
        ctx: Context<AddRemoteTokenMessengerContext>,
        params: AddRemoteTokenMessengerParams,
    ) -> Result<()> {
        token_messenger_v2::instructions::add_remote_token_messenger(ctx, &params)
    }

    pub fn remove_remote_token_messenger(
        ctx: Context<RemoveRemoteTokenMessengerContext>,
        params: RemoveRemoteTokenMessengerParams,
    ) -> Result<()> {
        token_messenger_v2::instructions::remove_remote_token_messenger(ctx, &params)
    }

    pub fn set_fee_recipient(
        ctx: Context<SetFeeRecipientContext>,
        params: SetFeeRecipientParams,
    ) -> Result<()> {
        token_messenger_v2::instructions::set_fee_recipient(ctx, &params)
    }

    pub fn set_min_fee_controller(
        ctx: Context<SetMinFeeControllerContext>,
        params: SetMinFeeControllerParams,
    ) -> Result<()> {
        token_messenger_v2::instructions::set_min_fee_controller(ctx, &params)
    }

    pub fn set_min_fee(ctx: Context<SetMinFeeContext>, params: SetMinFeeParams) -> Result<()> {
        token_messenger_v2::instructions::set_min_fee(ctx, &params)
    }

    pub fn deposit_for_burn(
        ctx: Context<DepositForBurnContext>,
        params: DepositForBurnParams,
    ) -> Result<()> {
        token_messenger_v2::instructions::deposit_for_burn(ctx, &params)
    }

    pub fn deposit_for_burn_with_hook(
        ctx: Context<DepositForBurnContext>,
        params: DepositForBurnWithHookParams,
    ) -> Result<()> {
        token_messenger_v2::instructions::deposit_for_burn_with_hook(ctx, &params)
    }

    pub fn handle_receive_finalized_message(
        ctx: Context<HandleReceiveMessageContext>,
        params: HandleReceiveMessageParams,
    ) -> Result<()> {
        token_messenger_v2::instructions::handle_receive_finalized_message(ctx, &params)
    }

    pub fn handle_receive_unfinalized_message(
        ctx: Context<HandleReceiveMessageContext>,
        params: HandleReceiveMessageParams,
    ) -> Result<()> {
        token_messenger_v2::instructions::handle_receive_unfinalized_message(ctx, &params)
    }

    // token_minter_v2 instructions

    pub fn set_token_controller(
        ctx: Context<SetTokenControllerContext>,
        params: SetTokenControllerParams,
    ) -> Result<()> {
        token_minter_v2::instructions::set_token_controller(ctx, &params)
    }

    pub fn pause(ctx: Context<PauseContext>, params: PauseParams) -> Result<()> {
        token_minter_v2::instructions::pause(ctx, &params)
    }

    pub fn unpause(ctx: Context<UnpauseContext>, params: UnpauseParams) -> Result<()> {
        token_minter_v2::instructions::unpause(ctx, &params)
    }

    pub fn update_pauser(
        ctx: Context<UpdatePauserContext>,
        params: UpdatePauserParams,
    ) -> Result<()> {
        token_minter_v2::instructions::update_pauser(ctx, &params)
    }

    pub fn set_max_burn_amount_per_message(
        ctx: Context<SetMaxBurnAmountPerMessageContext>,
        params: SetMaxBurnAmountPerMessageParams,
    ) -> Result<()> {
        token_minter_v2::instructions::set_max_burn_amount_per_message(ctx, &params)
    }

    pub fn add_local_token(
        ctx: Context<AddLocalTokenContext>,
        params: AddLocalTokenParams,
    ) -> Result<()> {
        token_minter_v2::instructions::add_local_token(ctx, &params)
    }

    pub fn remove_local_token(
        ctx: Context<RemoveLocalTokenContext>,
        params: RemoveLocalTokenParams,
    ) -> Result<()> {
        token_minter_v2::instructions::remove_local_token(ctx, &params)
    }

    pub fn link_token_pair(
        ctx: Context<LinkTokenPairContext>,
        params: LinkTokenPairParams,
    ) -> Result<()> {
        token_minter_v2::instructions::link_token_pair(ctx, &params)
    }

    pub fn unlink_token_pair(
        ctx: Context<UnlinkTokenPairContext>,
        params: UninkTokenPairParams,
    ) -> Result<()> {
        token_minter_v2::instructions::unlink_token_pair(ctx, &params)
    }

    pub fn burn_token_custody(
        ctx: Context<BurnTokenCustodyContext>,
        params: BurnTokenCustodyParams,
    ) -> Result<()> {
        token_minter_v2::instructions::burn_token_custody(ctx, &params)
    }
}
