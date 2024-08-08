/*
 * Copyright (c) 2024, Circle Internet Financial LTD All rights reserved.
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

import 'dotenv/config';
import { SystemProgram } from '@solana/web3.js';
import { decodeEventNonceFromMessage, getAnchorConnection, getRawMsgPrograms, getReceiveRawMessagePdas } from './utils';

const main = async () => {
    const provider = getAnchorConnection();

    const { messageTransmitterProgram, solanaMessengerProgram } = getRawMsgPrograms(provider);

    // Init needed variables
    const remoteDomain = process.env.REMOTE_DOMAIN!;
    const messageHex = process.env.MESSAGE_HEX!;
    const attestationHex = process.env.ATTESTATION_HEX!;
    const nonce = decodeEventNonceFromMessage(messageHex);

    // Get PDAs
    const pdas = await getReceiveRawMessagePdas(
        {messageTransmitterProgram, solanaMessengerProgram},
        remoteDomain,
        nonce
    )

    const receiveMessageTx = await messageTransmitterProgram.methods
        .receiveMessage({
            message: Buffer.from(messageHex.replace("0x", ""), "hex"),
            attestation: Buffer.from(attestationHex.replace("0x", ""), "hex"),
        })
        .accounts({
            payer: provider.wallet.publicKey,
            caller: provider.wallet.publicKey,
            authorityPda: pdas.authorityPda,
            messageTransmitter: pdas.messageTransmitterAccount.publicKey,
            usedNonces: pdas.usedNonces,
            receiver: solanaMessengerProgram.programId,
            systemProgram: SystemProgram.programId,
        })
        .rpc();
    
    console.log("\n\nreceiveMessage Tx: ", receiveMessageTx);
}

main();
