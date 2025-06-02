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

import { bs58 } from "@coral-xyz/anchor/dist/cjs/utils/bytes";
import { ethers, hexlify, ZeroHash } from "ethers";

const APPROVE_EVM_ABI = [
  "function approve(address spender, uint256 amount) public returns (bool)",
];
const TOKEN_MESSENGER_V2_EVM_ABI = [
  "function depositForBurn(uint256 amount, uint32 destinationDomain, bytes32 mintRecipient, address burnToken, bytes32 destinationCaller, uint256 maxFee, uint32 minFinalityThreshold) public",
  "function depositForBurnWithHook(uint256 amount, uint32 destinationDomain, bytes32 mintRecipient, address burnToken, bytes32 destinationCaller, uint256 maxFee, uint32 minFinalityThreshold, bytes hookData) public",
];
const MESSAGE_TRANSMITTER_V2_EVM_ABI = [
  "function receiveMessage(bytes message, bytes attestation) public returns (bool)",
];

const destinationCaller = process.env.DESTINATION_CALLER ?? ZeroHash;

const getContracts = () => {
  const provider = new ethers.JsonRpcProvider(process.env.REMOTE_EVM_RPC_URL);
  const wallet = new ethers.Wallet(
    process.env.REMOTE_EVM_PRIVATE_KEY,
    provider
  );
  const usdcApproveContract = new ethers.Contract(
    process.env.REMOTE_TOKEN_HEX,
    APPROVE_EVM_ABI,
    wallet
  );
  const tokenMessengerV2Contract = new ethers.Contract(
    process.env.REMOTE_EVM_TOKEN_MESSENGER_ADDRESS,
    TOKEN_MESSENGER_V2_EVM_ABI,
    wallet
  );
  const messageTransmitterV2Contract = new ethers.Contract(
    process.env.REMOTE_EVM_MESSAGE_TRANSMITTER_ADDRESS,
    MESSAGE_TRANSMITTER_V2_EVM_ABI,
    wallet
  );
  return {
    usdcApproveContract,
    tokenMessengerV2Contract,
    messageTransmitterV2Contract,
  };
};

const approve = async (usdcApproveContract: ethers.Contract, amount: number) => {
  console.log("Approving USDC spend on EVM...");
  const approveTx = await usdcApproveContract.approve(
    process.env.REMOTE_EVM_TOKEN_MESSENGER_ADDRESS,
    amount
  );
  const approveTxReceipt = await approveTx.wait();
  if (approveTxReceipt.status === 1) {
    console.log("USDC spend approved", approveTxReceipt.hash);
  } else {
    console.error("Failed to approve USDC spend", approveTxReceipt);
    throw new Error("Failed to approve USDC spend");
  }
}

export const depositForBurnEvm = async (
  amount: number,
  maxFee: number,
  minFinalityThreshold: number
) => {
  const { usdcApproveContract, tokenMessengerV2Contract } = getContracts();

  await approve(usdcApproveContract, amount);

  console.log("Depositing for burn on EVM...");
  const depositForBurnTx = await tokenMessengerV2Contract.depositForBurn(
    amount,
    5, // Remote domain
    hexlify(bs58.decode(process.env.USER_TOKEN_ACCOUNT)), // Solana token account
    process.env.REMOTE_TOKEN_HEX,
    destinationCaller,
    maxFee,
    minFinalityThreshold
  );
  const depositForBurnTxReceipt = await depositForBurnTx.wait();
  if (depositForBurnTxReceipt.status != 1) {
    console.error("Failed to deposit for burn", depositForBurnTxReceipt);
    throw new Error("Failed to deposit for burn");
  }
  return depositForBurnTxReceipt.hash;
};

export const depositForBurnEvmWithHook = async (
  amount: number,
  maxFee: number,
  minFinalityThreshold: number,
  hookData: string
) => {
  const { usdcApproveContract, tokenMessengerV2Contract } = getContracts();

  await approve(usdcApproveContract, amount);

  console.log("Depositing for burn on EVM with hook...");
  const depositForBurnTx = await tokenMessengerV2Contract.depositForBurnWithHook(
    amount,
    5, // Remote domain
    hexlify(bs58.decode(process.env.USER_TOKEN_ACCOUNT)), // Solana token account
    process.env.REMOTE_TOKEN_HEX,
    destinationCaller,
    maxFee,
    minFinalityThreshold,
    hookData
  );
  const depositForBurnTxReceipt = await depositForBurnTx.wait();
  if (depositForBurnTxReceipt.status != 1) {
    console.error("Failed to deposit for burn", depositForBurnTxReceipt);
    throw new Error("Failed to deposit for burn");
  }
  return depositForBurnTxReceipt.hash;
};

export const receiveMessageEvm = async (
  message: string,
  attestation: string
) => {
  console.log("Receiving message on EVM...");
  const { messageTransmitterV2Contract } = getContracts();
  const receiveMessageTx = await messageTransmitterV2Contract.receiveMessage(
    message,
    attestation
  );
  const receiveMessageTxReceipt = await receiveMessageTx.wait();
  if (receiveMessageTxReceipt.status != 1) {
    console.error("Failed to receive message", receiveMessageTxReceipt);
    throw new Error("Failed to receive message");
  }
  return receiveMessageTxReceipt.hash;
};
