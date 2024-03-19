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
 
 //! TokenMessenger and TokenMinter program entrypoint

#![allow(clippy::result_large_err)]

pub mod token_messenger;
pub mod token_minter;

use {anchor_lang::prelude::*, token_messenger::*, token_minter::*};

solana_security_txt::security_txt! {
    name: "Token Messenger and Minter for CCTP",
    project_url: "https://github.com/circlefin/solana-cctp-contracts",
    contacts: "security@circle.com",
    policy: "",
    preferred_languages: "en",
    auditors: "Halborn"
}

declare_id!("CCTPiPYPc6AsJuwueEnWgSgucamXDZwBd53dQ11YiKX3");

#[program]
pub mod token_messenger_minter {
    use super::*;

    // token_messenger instructions

    pub fn initialize(ctx: Context<InitializeContext>, params: InitializeParams) -> Result<()> {
        token_messenger::instructions::initialize(ctx, &params)
    }

    pub fn transfer_ownership(
        ctx: Context<TransferOwnershipContext>,
        params: TransferOwnershipParams,
    ) -> Result<()> {
        token_messenger::instructions::transfer_ownership(ctx, &params)
    }

    pub fn accept_ownership(
        ctx: Context<AcceptOwnershipContext>,
        params: AcceptOwnershipParams,
    ) -> Result<()> {
        token_messenger::instructions::accept_ownership(ctx, &params)
    }

    pub fn add_remote_token_messenger(
        ctx: Context<AddRemoteTokenMessengerContext>,
        params: AddRemoteTokenMessengerParams,
    ) -> Result<()> {
        token_messenger::instructions::add_remote_token_messenger(ctx, &params)
    }

    pub fn remove_remote_token_messenger(
        ctx: Context<RemoveRemoteTokenMessengerContext>,
        params: RemoveRemoteTokenMessengerParams,
    ) -> Result<()> {
        token_messenger::instructions::remove_remote_token_messenger(ctx, &params)
    }

    pub fn deposit_for_burn(
        ctx: Context<DepositForBurnContext>,
        params: DepositForBurnParams,
    ) -> Result<u64> {
        token_messenger::instructions::deposit_for_burn(ctx, &params)
    }

    pub fn deposit_for_burn_with_caller(
        ctx: Context<DepositForBurnContext>,
        params: DepositForBurnWithCallerParams,
    ) -> Result<u64> {
        token_messenger::instructions::deposit_for_burn_with_caller(ctx, &params)
    }

    pub fn replace_deposit_for_burn(
        ctx: Context<ReplaceDepositForBurnContext>,
        params: ReplaceDepositForBurnParams,
    ) -> Result<u64> {
        token_messenger::instructions::replace_deposit_for_burn(ctx, &params)
    }

    pub fn handle_receive_message(
        ctx: Context<HandleReceiveMessageContext>,
        params: HandleReceiveMessageParams,
    ) -> Result<()> {
        token_messenger::instructions::handle_receive_message(ctx, &params)
    }

    // token_minter instructions

    pub fn set_token_controller(
        ctx: Context<SetTokenControllerContext>,
        params: SetTokenControllerParams,
    ) -> Result<()> {
        token_minter::instructions::set_token_controller(ctx, &params)
    }

    pub fn pause(ctx: Context<PauseContext>, params: PauseParams) -> Result<()> {
        token_minter::instructions::pause(ctx, &params)
    }

    pub fn unpause(ctx: Context<UnpauseContext>, params: UnpauseParams) -> Result<()> {
        token_minter::instructions::unpause(ctx, &params)
    }

    pub fn update_pauser(
        ctx: Context<UpdatePauserContext>,
        params: UpdatePauserParams,
    ) -> Result<()> {
        token_minter::instructions::update_pauser(ctx, &params)
    }

    pub fn set_max_burn_amount_per_message(
        ctx: Context<SetMaxBurnAmountPerMessageContext>,
        params: SetMaxBurnAmountPerMessageParams,
    ) -> Result<()> {
        token_minter::instructions::set_max_burn_amount_per_message(ctx, &params)
    }

    pub fn add_local_token(
        ctx: Context<AddLocalTokenContext>,
        params: AddLocalTokenParams,
    ) -> Result<()> {
        token_minter::instructions::add_local_token(ctx, &params)
    }

    pub fn remove_local_token(
        ctx: Context<RemoveLocalTokenContext>,
        params: RemoveLocalTokenParams,
    ) -> Result<()> {
        token_minter::instructions::remove_local_token(ctx, &params)
    }

    pub fn link_token_pair(
        ctx: Context<LinkTokenPairContext>,
        params: LinkTokenPairParams,
    ) -> Result<()> {
        token_minter::instructions::link_token_pair(ctx, &params)
    }

    pub fn unlink_token_pair(
        ctx: Context<UnlinkTokenPairContext>,
        params: UninkTokenPairParams,
    ) -> Result<()> {
        token_minter::instructions::unlink_token_pair(ctx, &params)
    }

    pub fn burn_token_custody(
        ctx: Context<BurnTokenCustodyContext>,
        params: BurnTokenCustodyParams,
    ) -> Result<()> {
        token_minter::instructions::burn_token_custody(ctx, &params)
    }
}
