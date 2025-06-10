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

import { BN } from "@coral-xyz/anchor";
import * as spl from "@solana/spl-token";
import { Keypair, PublicKey, SystemProgram } from "@solana/web3.js";
import { getBytes } from "ethers";
import {
  evmAddressToBytes32,
  getAnchorConnection,
} from "../utils";
import { decodeEventNonceFromMessageV2, getDepositForBurnPdasV2, getMessageTransmitterAccount, getProgramsV2, getReceiveMessagePdasV2 } from "./utilsV2";

export const SOLANA_SRC_DOMAIN_ID = 5;
export const SOLANA_USDC_ADDRESS =
  process.env.SOLANA_USDC_ADDRESS ??
  "4zMMC9srt5Ri5X14GAgXhaHii3GnPAEERYPJgZJDncDU";
const destinationCaller = new PublicKey(
  process.env.DESTINATION_CALLER ?? PublicKey.default.toString()
);

const provider = getAnchorConnection();
const { messageTransmitterProgram, tokenMessengerMinterProgram } =
  getProgramsV2(provider);
const usdcAddress = new PublicKey(SOLANA_USDC_ADDRESS);
const userTokenAccount = new PublicKey(process.env.USER_TOKEN_ACCOUNT);

export const depositForBurnSol = async (
  amount: BN,
  maxFee: BN,
  minFinalityThreshold: number
): Promise<string> => {
  console.log("Depositing for burn on Solana...");
  const destinationDomain = Number(process.env.REMOTE_EVM_DOMAIN);
  const mintRecipient = new PublicKey(
    getBytes(evmAddressToBytes32(process.env.REMOTE_EVM_ADDRESS))
  );
  const pdas = getDepositForBurnPdasV2(
    {
      messageTransmitterProgram,
      tokenMessengerMinterProgram,
    },
    usdcAddress,
    destinationDomain
  );
  // Generate a new keypair for the MessageSent event account.
  const messageSentEventAccountKeypair = Keypair.generate();

  return await tokenMessengerMinterProgram.methods
    .depositForBurn({
      amount,
      destinationDomain,
      mintRecipient,
      maxFee,
      minFinalityThreshold,
      destinationCaller,
    })
    .accounts({
      owner: provider.wallet.publicKey,
      eventRentPayer: provider.wallet.publicKey,
      senderAuthorityPda: pdas.authorityPda.publicKey,
      burnTokenAccount: userTokenAccount,
      messageTransmitter: pdas.messageTransmitterAccount.publicKey,
      tokenMessenger: pdas.tokenMessengerAccount.publicKey,
      remoteTokenMessenger: pdas.remoteTokenMessengerKey.publicKey,
      tokenMinter: pdas.tokenMinterAccount.publicKey,
      localToken: pdas.localToken.publicKey,
      burnTokenMint: usdcAddress,
      messageSentEventData: messageSentEventAccountKeypair.publicKey,
      messageTransmitterProgram: messageTransmitterProgram.programId,
      tokenMessengerMinterProgram: tokenMessengerMinterProgram.programId,
      tokenProgram: spl.TOKEN_PROGRAM_ID,
      systemProgram: SystemProgram.programId,
    })
    .signers([messageSentEventAccountKeypair])
    .rpc();
};

export const depositForBurnSolWithHook = async (
  amount: BN,
  maxFee: BN,
  minFinalityThreshold: number,
  hookData: Buffer
): Promise<string> => {
  console.log("Depositing for burn on Solana with hook...");
  const destinationDomain = Number(process.env.REMOTE_EVM_DOMAIN);
  const mintRecipient = new PublicKey(
    getBytes(evmAddressToBytes32(process.env.REMOTE_EVM_ADDRESS))
  );
  const pdas = getDepositForBurnPdasV2(
    {
      messageTransmitterProgram,
      tokenMessengerMinterProgram,
    },
    usdcAddress,
    destinationDomain
  );
  // Generate a new keypair for the MessageSent event account.
  const messageSentEventAccountKeypair = Keypair.generate();

  return await tokenMessengerMinterProgram.methods
    .depositForBurnWithHook({
      amount,
      destinationDomain,
      mintRecipient,
      maxFee,
      minFinalityThreshold,
      destinationCaller,
      hookData,
    })
    .accounts({
      owner: provider.wallet.publicKey,
      eventRentPayer: provider.wallet.publicKey,
      senderAuthorityPda: pdas.authorityPda.publicKey,
      burnTokenAccount: userTokenAccount,
      messageTransmitter: pdas.messageTransmitterAccount.publicKey,
      tokenMessenger: pdas.tokenMessengerAccount.publicKey,
      remoteTokenMessenger: pdas.remoteTokenMessengerKey.publicKey,
      tokenMinter: pdas.tokenMinterAccount.publicKey,
      localToken: pdas.localToken.publicKey,
      burnTokenMint: usdcAddress,
      messageSentEventData: messageSentEventAccountKeypair.publicKey,
      messageTransmitterProgram: messageTransmitterProgram.programId,
      tokenMessengerMinterProgram: tokenMessengerMinterProgram.programId,
      tokenProgram: spl.TOKEN_PROGRAM_ID,
      systemProgram: SystemProgram.programId,
    })
    .signers([messageSentEventAccountKeypair])
    .rpc();
};

export const receiveMessageSol = async (
  message: string,
  attestation: string
) => {
  console.log("Receiving message on Solana...");
  const provider = getAnchorConnection();

  const { messageTransmitterProgram, tokenMessengerMinterProgram } =
    getProgramsV2(provider);

  // Init needed variables
  const usdcAddress = new PublicKey(SOLANA_USDC_ADDRESS);
  const userTokenAccount = new PublicKey(process.env.USER_TOKEN_ACCOUNT);
  const remoteTokenAddressHex = process.env.REMOTE_TOKEN_HEX;
  const remoteDomain = process.env.REMOTE_EVM_DOMAIN;
  const messageHex = message;
  const attestationHex = attestation;
  const nonce = decodeEventNonceFromMessageV2(messageHex);

  // Get PDAs
  const pdas = await getReceiveMessagePdasV2(
    { messageTransmitterProgram, tokenMessengerMinterProgram },
    usdcAddress,
    remoteTokenAddressHex,
    remoteDomain,
    nonce
  );

  // accountMetas list to pass to remainingAccounts
  const accountMetas: any[] = [];
  accountMetas.push({
    isSigner: false,
    isWritable: false,
    pubkey: pdas.tokenMessengerAccount.publicKey,
  });
  accountMetas.push({
    isSigner: false,
    isWritable: false,
    pubkey: pdas.remoteTokenMessengerKey.publicKey,
  });
  accountMetas.push({
    isSigner: false,
    isWritable: true,
    pubkey: pdas.tokenMinterAccount.publicKey,
  });
  accountMetas.push({
    isSigner: false,
    isWritable: true,
    pubkey: pdas.localToken.publicKey,
  });
  accountMetas.push({
    isSigner: false,
    isWritable: false,
    pubkey: pdas.tokenPair.publicKey,
  });
  accountMetas.push({
    isSigner: false,
    isWritable: true,
    pubkey: pdas.feeRecipientTokenAccount,
  });
  accountMetas.push({
    isSigner: false,
    isWritable: true,
    pubkey: userTokenAccount,
  });
  accountMetas.push({
    isSigner: false,
    isWritable: true,
    pubkey: pdas.custodyTokenAccount.publicKey,
  });
  accountMetas.push({
    isSigner: false,
    isWritable: false,
    pubkey: spl.TOKEN_PROGRAM_ID,
  });
  accountMetas.push({
    isSigner: false,
    isWritable: false,
    pubkey: pdas.tokenMessengerEventAuthority.publicKey,
  });
  accountMetas.push({
    isSigner: false,
    isWritable: false,
    pubkey: tokenMessengerMinterProgram.programId,
  });

  return await messageTransmitterProgram.methods
    .receiveMessage({
      message: Buffer.from(messageHex.replace("0x", ""), "hex"),
      attestation: Buffer.from(attestationHex.replace("0x", ""), "hex"),
    })
    .accounts({
      payer: provider.wallet.publicKey,
      caller: provider.wallet.publicKey,
      authorityPda: pdas.authorityPda,
      messageTransmitter: pdas.messageTransmitterAccount.publicKey,
      usedNonce: pdas.usedNonce,
      receiver: tokenMessengerMinterProgram.programId,
      systemProgram: SystemProgram.programId,
    })
    .remainingAccounts(accountMetas)
    .rpc();
};

export const reclaimEventAccount = async (
  attestation: Buffer,
  destinationMessage: Buffer,
  messageSentEventData: PublicKey
) => {
  console.log("Reclaiming event account on Solana...");
  const provider = getAnchorConnection();
  const { messageTransmitterProgram } = getProgramsV2(provider);

  const messageTransmitter = await getMessageTransmitterAccount(messageTransmitterProgram);

  return await messageTransmitterProgram.methods
    .reclaimEventAccount({
      attestation,
      destinationMessage,
    })
    .accounts({
      payee: provider.wallet.publicKey,
      messageTransmitter: messageTransmitter.publicKey,
      messageSentEventData,
    })
    .rpc();
};
