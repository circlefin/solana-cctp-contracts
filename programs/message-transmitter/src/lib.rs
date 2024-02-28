//! MessageTransmitter program entrypoint

#![allow(clippy::result_large_err)]

pub mod error;
pub mod events;
pub mod instructions;
pub mod message;
pub mod state;
pub mod utils;

use {anchor_lang::prelude::*, instructions::*};

#[cfg(not(feature = "no-entrypoint"))]
solana_security_txt::security_txt! {
    name: "Message Transmitter for CCTP",
    project_url: "https://github.com/circlefin/solana-cctp-contracts",
    contacts: "security@circle.com",
    policy: "",
    preferred_languages: "en",
    auditors: "Halborn"
}

declare_id!("CCTPmbSD7gX1bxKPAmg77w8oFzNFpaQiQUWD43TKaecd");

#[program]
pub mod message_transmitter {
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

    pub fn send_message(
        ctx: Context<SendMessageContext>,
        params: SendMessageParams,
    ) -> Result<u64> {
        instructions::send_message(ctx, &params)
    }

    pub fn send_message_with_caller(
        ctx: Context<SendMessageContext>,
        params: SendMessageWithCallerParams,
    ) -> Result<u64> {
        instructions::send_message_with_caller(ctx, &params)
    }

    pub fn replace_message(
        ctx: Context<ReplaceMessageContext>,
        params: ReplaceMessageParams,
    ) -> Result<u64> {
        instructions::replace_message(ctx, &params)
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

    pub fn get_nonce_pda(
        ctx: Context<GetNoncePDAContext>,
        params: GetNoncePDAParams,
    ) -> Result<Pubkey> {
        instructions::get_nonce_pda(ctx, &params)
    }

    pub fn is_nonce_used(
        ctx: Context<IsNonceUsedContext>,
        params: IsNonceUsedParams,
    ) -> Result<bool> {
        instructions::is_nonce_used(ctx, &params)
    }
}
