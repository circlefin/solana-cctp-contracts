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

//! MessageTransmitterV2 program entrypoint

use {anchor_lang::prelude::*};

#[cfg(not(feature = "no-entrypoint"))]
solana_security_txt::security_txt! {
    name: "Message Transmitter for CCTP V2",
    project_url: "https://github.com/circlefin/solana-cctp-contracts",
    contacts: "link:https://github.com/circlefin/solana-cctp-contracts/blob/master/SECURITY.md",
    policy: "https://github.com/circlefin/solana-cctp-contracts/blob/master/SECURITY.md"
}

// TODO: update for v2
declare_id!("CCTPmbSD7gX1bxKPAmg77w8oFzNFpaQiQUWD43TKaecd");

#[program]
pub mod message_transmitter_v2 {
}
