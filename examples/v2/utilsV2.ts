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

import * as anchor from "@coral-xyz/anchor";
import { MessageTransmitterV2 } from "../target/types/message_transmitter_v2";
import { TokenMessengerMinterV2 } from "../target/types/token_messenger_minter_v2";
import MESSAGE_TRANSMITTER_V2_IDL from "../target/idl/message_transmitter_v2.json";
import TOKEN_MESSENGER_MINTER_V2_IDL from "../target/idl/token_messenger_minter_v2.json";
import {
  findProgramAddress,
  getDepositForBurnPdas,
  hexToBytes,
} from "../utils";
import { getAssociatedTokenAddress } from "@solana/spl-token";
import { PublicKey } from "@solana/web3.js";

export const getProgramsV2 = (provider: anchor.AnchorProvider) => {
  const messageTransmitterProgram = new anchor.Program<MessageTransmitterV2>(
    MESSAGE_TRANSMITTER_V2_IDL as MessageTransmitterV2,
    provider
  );
  const tokenMessengerMinterProgram =
    new anchor.Program<TokenMessengerMinterV2>(
      TOKEN_MESSENGER_MINTER_V2_IDL as TokenMessengerMinterV2,
      provider
    );
  return { messageTransmitterProgram, tokenMessengerMinterProgram };
};

export const getDepositForBurnPdasV2 = (
  {
    messageTransmitterProgram,
    tokenMessengerMinterProgram,
  }: ReturnType<typeof getProgramsV2>,
  usdcAddress: PublicKey,
  destinationDomain: Number
) => {
  return getDepositForBurnPdas(
    { messageTransmitterProgram, tokenMessengerMinterProgram } as unknown as {
      messageTransmitterProgram: anchor.Program<anchor.Idl>;
      tokenMessengerMinterProgram: anchor.Program<anchor.Idl>;
    },
    usdcAddress,
    destinationDomain
  );
};

export const getReceiveMessagePdasV2 = async (
  {
    messageTransmitterProgram,
    tokenMessengerMinterProgram,
  }: ReturnType<typeof getProgramsV2>,
  solUsdcAddress: PublicKey,
  remoteUsdcAddressHex: string,
  remoteDomain: string,
  nonce: Buffer
) => {
  const tokenMessengerAccount = findProgramAddress(
    "token_messenger",
    tokenMessengerMinterProgram.programId
  );
  const messageTransmitterAccount = findProgramAddress(
    "message_transmitter",
    messageTransmitterProgram.programId
  );
  const tokenMinterAccount = findProgramAddress(
    "token_minter",
    tokenMessengerMinterProgram.programId
  );
  const localToken = findProgramAddress(
    "local_token",
    tokenMessengerMinterProgram.programId,
    [solUsdcAddress]
  );
  const remoteTokenMessengerKey = findProgramAddress(
    "remote_token_messenger",
    tokenMessengerMinterProgram.programId,
    [remoteDomain]
  );
  const remoteTokenKey = new PublicKey(hexToBytes(remoteUsdcAddressHex));
  const tokenPair = findProgramAddress(
    "token_pair",
    tokenMessengerMinterProgram.programId,
    [remoteDomain, remoteTokenKey]
  );
  const custodyTokenAccount = findProgramAddress(
    "custody",
    tokenMessengerMinterProgram.programId,
    [solUsdcAddress]
  );
  const authorityPda = findProgramAddress(
    "message_transmitter_authority",
    messageTransmitterProgram.programId,
    [tokenMessengerMinterProgram.programId]
  ).publicKey;
  const tokenMessengerEventAuthority = findProgramAddress(
    "__event_authority",
    tokenMessengerMinterProgram.programId
  );
  const usedNonce = findProgramAddress(
    "used_nonce",
    messageTransmitterProgram.programId,
    [nonce]
  ).publicKey;

  const tokenMessengerAccounts =
    await tokenMessengerMinterProgram.account.tokenMessenger.fetch(
      tokenMessengerAccount.publicKey
    );
  const feeRecipientTokenAccount = await getAssociatedTokenAddress(
    solUsdcAddress,
    tokenMessengerAccounts.feeRecipient
  );

  return {
    messageTransmitterAccount,
    tokenMessengerAccount,
    tokenMinterAccount,
    localToken,
    remoteTokenMessengerKey,
    remoteTokenKey,
    tokenPair,
    custodyTokenAccount,
    authorityPda,
    tokenMessengerEventAuthority,
    usedNonce,
    feeRecipientTokenAccount,
  };
};

export const getMessageTransmitterAccount = async (
  messageTransmitterProgramV2: anchor.Program<MessageTransmitterV2>
) => {
  const messageTransmitterAccount = findProgramAddress(
    "message_transmitter",
    messageTransmitterProgramV2.programId
  );

  return messageTransmitterAccount;
};

export const decodeEventNonceFromMessageV2 = (messageHex: string): Buffer => {
  const nonceIndex = 12;
  const nonceBytesLength = 32;
  const message = hexToBytes(messageHex);
  const eventNonceBytes = message.subarray(
    nonceIndex,
    nonceIndex + nonceBytesLength
  );
  return eventNonceBytes;
};
