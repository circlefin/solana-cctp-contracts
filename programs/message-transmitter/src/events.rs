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

//! Events

use {
    crate::{message::Message, utils},
    anchor_lang::prelude::*,
};

#[event]
pub struct OwnershipTransferStarted {
    pub previous_owner: Pubkey,
    pub new_owner: Pubkey,
}

#[event]
pub struct OwnershipTransferred {
    pub previous_owner: Pubkey,
    pub new_owner: Pubkey,
}

#[event]
pub struct PauserChanged {
    pub new_address: Pubkey,
}

#[event]
pub struct AttesterManagerUpdated {
    pub previous_attester_manager: Pubkey,
    pub new_attester_manager: Pubkey,
}

#[account]
#[derive(Debug, InitSpace)]
pub struct MessageSent {
    pub rent_payer: Pubkey,
    #[max_len(1)]
    pub message: Vec<u8>,
}

impl MessageSent {
    pub fn len(message_body_len: usize) -> Result<usize> {
        // MessageSent::INIT_SPACE returns serialized size of the MessageSent struct
        // assuming max len of MessageSent::message vector is 1 (as specified with #[max_len(1)]).
        // We subtract that 1 byte and add the full length of the message body instead.
        utils::checked_add(
            utils::checked_sub(
                utils::checked_add(utils::DISCRIMINATOR_SIZE, MessageSent::INIT_SPACE)?,
                1,
            )?,
            Message::serialized_len(message_body_len)?,
        )
    }
}

#[event]
pub struct MessageReceived {
    pub caller: Pubkey,
    pub source_domain: u32,
    pub nonce: u64,
    pub sender: Pubkey,
    pub message_body: Vec<u8>,
}

#[event]
pub struct SignatureThresholdUpdated {
    pub old_signature_threshold: u32,
    pub new_signature_threshold: u32,
}

#[event]
pub struct AttesterEnabled {
    pub attester: Pubkey,
}

#[event]
pub struct AttesterDisabled {
    pub attester: Pubkey,
}

#[event]
pub struct MaxMessageBodySizeUpdated {
    pub new_max_message_body_size: u64,
}

#[event]
pub struct Pause {}

#[event]
pub struct Unpause {}
