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

import * as anchor from "@coral-xyz/anchor";
import * as ethutil from "ethereumjs-util";
import * as utils from "../utils";
import { TokenMessengerMinter } from "../../target/types/token_messenger_minter";
import { MessageTransmitter } from "../../target/types/message_transmitter";
import { PublicKey, Keypair, SystemProgram } from "@solana/web3.js";
import * as spl from "@solana/spl-token";
import BN from "bn.js";

const SIGNATURE_LENGTH = 65;

export class TestClient {
  owner: Keypair;
  pauser: Keypair;
  tokenController: Keypair;
  localTokenMint: Keypair;
  user: Keypair;

  provider: anchor.AnchorProvider;
  program: anchor.Program<TokenMessengerMinter>;
  messageTransmitterProgram: anchor.Program<MessageTransmitter>;
  printErrors: boolean;

  authorityPda: { publicKey: PublicKey; bump: number };
  messageTransmitter: { publicKey: PublicKey; bump: number };
  messageTransmitterEventAuthority: { publicKey: PublicKey; bump: number };
  tokenMessenger: { publicKey: PublicKey; bump: number };
  tokenMessengerEventAuthority: { publicKey: PublicKey; bump: number };
  tokenMinter: { publicKey: PublicKey; bump: number };
  localToken: { publicKey: PublicKey; bump: number };
  custodyTokenAccount: { publicKey: PublicKey; bump: number };
  userTokenAccount: PublicKey;

  constructor() {
    this.provider = anchor.AnchorProvider.env();
    anchor.setProvider(this.provider);
    this.program = anchor.workspace
      .TokenMessengerMinter as anchor.Program<TokenMessengerMinter>;
    this.messageTransmitterProgram = anchor.workspace
      .MessageTransmitter as anchor.Program<MessageTransmitter>;
    this.printErrors = false;

    anchor.BN.prototype.toJSON = function () {
      return this.toString(10);
    };
  }

  initFixture = async () => {
    this.owner = Keypair.generate();
    this.pauser = Keypair.generate();
    this.tokenController = Keypair.generate();
    this.localTokenMint = Keypair.generate();
    this.user = Keypair.generate();

    // pdas
    this.authorityPda = this.findProgramAddress("sender_authority");
    this.messageTransmitter = this.findProgramAddress(
      "message_transmitter",
      null,
      this.messageTransmitterProgram.programId
    );
    this.messageTransmitterEventAuthority = this.findProgramAddress(
      "__event_authority",
      null,
      this.messageTransmitterProgram.programId
    );
    this.tokenMessenger = this.findProgramAddress("token_messenger");
    this.tokenMessengerEventAuthority =
      this.findProgramAddress("__event_authority");
    this.tokenMinter = this.findProgramAddress("token_minter");
    this.localToken = this.findProgramAddress("local_token", [
      this.localTokenMint.publicKey,
    ]);
    this.custodyTokenAccount = this.findProgramAddress("custody", [
      this.localTokenMint.publicKey,
    ]);

    await this.provider.connection.requestAirdrop(this.user.publicKey, 1e9);
    await this.provider.connection.confirmTransaction(
      await this.provider.connection.requestAirdrop(this.owner.publicKey, 1e9)
    );

    await spl.createMint(
      this.provider.connection,
      this.owner,
      this.owner.publicKey,
      null,
      9,
      this.localTokenMint
    );

    this.userTokenAccount = await spl.createAssociatedTokenAccount(
      this.provider.connection,
      this.user,
      this.localTokenMint.publicKey,
      this.user.publicKey
    );

    await spl.mintToChecked(
      this.provider.connection,
      this.owner,
      this.localTokenMint.publicKey,
      this.userTokenAccount,
      this.owner,
      1000,
      9
    );
  };

  findProgramAddress = (
    label: string,
    extraSeeds = null,
    program = this.program.programId
  ) => {
    return utils.findProgramAddress(label, program, extraSeeds);
  };

  ensureFails = async (promise, message = null) => {
    return utils.ensureFails(promise, message);
  };

  // Convert a hex string to a byte array
  hexToBytes = (hex: string) => {
    return utils.hexToBytes(hex);
  };

  readEvents = async (txSignature: string, programs) => {
    return utils.readEvents(
      this.program.provider.connection,
      txSignature,
      programs
    );
  };

  getEvent = (events, program: PublicKey, eventName: string) => {
    return utils.getEvent(events, program, eventName);
  };

  getBalance = async (pubkey: PublicKey) => {
    return spl
      .getAccount(this.provider.connection, pubkey)
      .then((account) => Number(account.amount))
      .catch(() => 0);
  };

  createBurnMessageBody = (
    burnVersion: number,
    burnToken: PublicKey,
    mintRecipient: PublicKey,
    depositor: PublicKey,
    amount: bigint
  ) => {
    return Buffer.concat([
      new BN(burnVersion).toArrayLike(Buffer, "be", 4),
      burnToken.toBytes(),
      mintRecipient.toBytes(),
      // Encoding for amount starts with mandatory 24 zero-bytes.
      new BN(0).toArrayLike(Buffer, "be", 24),
      new BN(amount).toArrayLike(Buffer, "be", 8),
      depositor.toBytes(),
    ]);
  };

  createBurnMessage = (
    version: number,
    sourceDomain: number,
    destinationDomain: number,
    nonce: number,
    sender: PublicKey,
    recipient: PublicKey,
    destinationCaller: PublicKey,
    // The below params are burn_message specific.
    burnVersion: number,
    burnToken: PublicKey,
    mintRecipient: PublicKey,
    depositor: PublicKey,
    amount: bigint
  ) => {
    const burnMessageBuffer = this.createBurnMessageBody(
      burnVersion,
      burnToken,
      mintRecipient,
      depositor,
      amount
    );
    return Buffer.concat([
      new BN(version).toArrayLike(Buffer, "be", 4),
      new BN(sourceDomain).toArrayLike(Buffer, "be", 4),
      new BN(destinationDomain).toArrayLike(Buffer, "be", 4),
      new BN(nonce).toArrayLike(Buffer, "be", 8),
      sender.toBytes(),
      recipient.toBytes(),
      destinationCaller.toBytes(),
      burnMessageBuffer,
    ]);
  };

  attest = (message: Buffer, attesterPrivateKeys: Buffer[]) => {
    // Order the attesters by increasing pubkey.
    attesterPrivateKeys.sort((key1, key2) => {
      const publicKey1 = ethutil.privateToAddress(key1);
      const publicKey2 = ethutil.privateToAddress(key2);
      for (let i = 0; i < publicKey1.length; ++i) {
        if (publicKey1[i] < publicKey2[i]) {
          return -1;
        }
        if (publicKey1[i] > publicKey2[i]) {
          return 1;
        }
      }
      return 0;
    });
    const messageHash = ethutil.keccak256(message);
    const attestation = Buffer.alloc(
      SIGNATURE_LENGTH * attesterPrivateKeys.length
    );
    let writeOffset = 0;
    for (const attesterPrivateKey of attesterPrivateKeys) {
      const ecdsaSignature = ethutil.ecsign(messageHash, attesterPrivateKey);
      const signatureBytes = Buffer.from(
        ethutil
          .toRpcSig(ecdsaSignature.v, ecdsaSignature.r, ecdsaSignature.s)
          .slice(2),
        "hex"
      );
      writeOffset += signatureBytes.copy(
        attestation,
        writeOffset,
        0,
        SIGNATURE_LENGTH
      );
    }
    return attestation;
  };

  ///////
  // instructions

  initialize = async (
    tokenController: PublicKey,
    messageBodyVersion: number
  ) => {
    const programData = PublicKey.findProgramAddressSync(
      [this.program.programId.toBuffer()],
      new PublicKey("BPFLoaderUpgradeab1e11111111111111111111111")
    )[0];

    return await this.program.methods
      .initialize({
        tokenController,
        localMessageTransmitter: this.messageTransmitterProgram.programId,
        messageBodyVersion,
      })
      .accounts({
        upgradeAuthority: this.provider.wallet.publicKey,
        authorityPda: this.authorityPda.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
        tokenMessengerMinterProgramData: programData,
        tokenMessengerMinterProgram: this.program.programId,
        systemProgram: SystemProgram.programId,
      })
      .rpc();
  };

  transferOwnership = async (newOwner: PublicKey) => {
    const currentOwner = (
      await this.program.account.tokenMessenger.fetch(
        this.tokenMessenger.publicKey
      )
    ).owner;

    return await this.program.methods
      .transferOwnership({ newOwner })
      .accounts({
        owner: currentOwner,
        tokenMessenger: this.tokenMessenger.publicKey,
      })
      .signers(currentOwner == this.owner.publicKey ? [this.owner] : [])
      .rpc();
  };

  acceptOwnership = async (newOwner: Keypair) => {
    return await this.program.methods
      .acceptOwnership({})
      .accounts({
        pendingOwner: this.owner.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
      })
      .signers([newOwner])
      .rpc();
    this.owner = newOwner;
  };

  addRemoteTokenMessenger = async (
    domain: number,
    tokenMessenger: PublicKey
  ) => {
    const remoteTokenMessenger = this.findProgramAddress(
      "remote_token_messenger",
      [domain.toString()]
    ).publicKey;
    return await this.program.methods
      .addRemoteTokenMessenger({ domain, tokenMessenger })
      .accounts({
        owner: this.owner.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
        remoteTokenMessenger,
        systemProgram: SystemProgram.programId,
      })
      .signers([this.owner])
      .rpc();
  };

  removeRemoteTokenMessenger = async (domain: number) => {
    const remoteTokenMessenger = this.findProgramAddress(
      "remote_token_messenger",
      [domain.toString()]
    ).publicKey;
    return await this.program.methods
      .removeRemoteTokenMessenger({})
      .accounts({
        owner: this.owner.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
        remoteTokenMessenger,
      })
      .signers([this.owner])
      .rpc();
  };

  updatePauser = async (newPauser: PublicKey) => {
    return await this.program.methods
      .updatePauser({ newPauser })
      .accounts({
        owner: this.owner.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
      })
      .signers([this.owner])
      .rpc();
  };

  setTokenController = async (tokenController: PublicKey) => {
    return await this.program.methods
      .setTokenController({ tokenController })
      .accounts({
        owner: this.owner.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
      })
      .signers([this.owner])
      .rpc();
  };

  pause = async () => {
    return await this.program.methods
      .pause({})
      .accounts({
        pauser: this.pauser.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
      })
      .signers([this.pauser])
      .rpc();
  };

  unpause = async () => {
    return await this.program.methods
      .unpause({})
      .accounts({
        pauser: this.pauser.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
      })
      .signers([this.pauser])
      .rpc();
  };

  addLocalToken = async () => {
    return await this.program.methods
      .addLocalToken({})
      .accounts({
        tokenController: this.tokenController.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
        localToken: this.localToken.publicKey,
        custodyTokenAccount: this.custodyTokenAccount.publicKey,
        localTokenMint: this.localTokenMint.publicKey,
        tokenProgram: spl.TOKEN_PROGRAM_ID,
        systemProgram: SystemProgram.programId,
      })
      .signers([this.tokenController])
      .rpc();
  };

  removeLocalToken = async () => {
    return await this.program.methods
      .removeLocalToken({})
      .accounts({
        tokenController: this.tokenController.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
        localToken: this.localToken.publicKey,
        custodyTokenAccount: this.custodyTokenAccount.publicKey,
        tokenProgram: spl.TOKEN_PROGRAM_ID,
      })
      .signers([this.tokenController])
      .rpc();
  };

  setMaxBurnAmountPerMessage = async (burnLimitPerMessage: BN) => {
    return await this.program.methods
      .setMaxBurnAmountPerMessage({ burnLimitPerMessage })
      .accounts({
        tokenController: this.tokenController.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
        localToken: this.localToken.publicKey,
      })
      .signers([this.tokenController])
      .rpc();
  };

  linkTokenPair = async (remoteDomain: number, remoteToken: PublicKey) => {
    const tokenPair = this.findProgramAddress("token_pair", [
      remoteDomain.toString(),
      remoteToken,
    ]);

    return await this.program.methods
      .linkTokenPair({
        localToken: this.localToken.publicKey,
        remoteDomain,
        remoteToken,
      })
      .accounts({
        tokenController: this.tokenController.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
        tokenPair: tokenPair.publicKey,
        systemProgram: SystemProgram.programId,
      })
      .signers([this.tokenController])
      .rpc();
  };

  unlinkTokenPair = async (remoteDomain: number, remoteToken: PublicKey) => {
    const tokenPair = this.findProgramAddress("token_pair", [
      remoteDomain.toString(),
      remoteToken,
    ]);

    return await this.program.methods
      .unlinkTokenPair({ remoteDomain, remoteToken })
      .accounts({
        tokenController: this.tokenController.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
        tokenPair: tokenPair.publicKey,
      })
      .signers([this.tokenController])
      .rpc();
  };

  depositForBurn = async (
    amount: BN,
    destinationDomain: number,
    mintRecipient: PublicKey,
    messageSentEventAccountKeypair: Keypair
  ) => {
    const remoteTokenMessenger = this.findProgramAddress(
      "remote_token_messenger",
      [destinationDomain.toString()]
    ).publicKey;

    return await this.program.methods
      .depositForBurn({
        amount,
        destinationDomain,
        mintRecipient,
      })
      .accounts({
        owner: this.user.publicKey,
        eventRentPayer: this.user.publicKey,
        senderAuthorityPda: this.authorityPda.publicKey,
        burnTokenAccount: this.userTokenAccount,
        messageTransmitter: this.messageTransmitter.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
        remoteTokenMessenger,
        tokenMinter: this.tokenMinter.publicKey,
        localToken: this.localToken.publicKey,
        burnTokenMint: this.localTokenMint.publicKey,
        messageSentEventData: messageSentEventAccountKeypair.publicKey,
        messageTransmitterProgram: this.messageTransmitterProgram.programId,
        tokenMessengerMinterProgram: this.program.programId,
        tokenProgram: spl.TOKEN_PROGRAM_ID,
        systemProgram: SystemProgram.programId,
      })
      .signers([this.user, messageSentEventAccountKeypair])
      .rpc();
  };

  depositForBurnWithCaller = async (
    amount: BN,
    destinationDomain: number,
    mintRecipient: PublicKey,
    destinationCaller: PublicKey,
    messageSentEventAccountKeypair: Keypair
  ) => {
    const remoteTokenMessenger = this.findProgramAddress(
      "remote_token_messenger",
      [destinationDomain.toString()]
    ).publicKey;
    return await this.program.methods
      .depositForBurnWithCaller({
        amount,
        destinationDomain,
        mintRecipient,
        destinationCaller,
      })
      .accounts({
        owner: this.user.publicKey,
        eventRentPayer: this.user.publicKey,
        senderAuthorityPda: this.authorityPda.publicKey,
        burnTokenAccount: this.userTokenAccount,
        messageTransmitter: this.messageTransmitter.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
        remoteTokenMessenger,
        tokenMinter: this.tokenMinter.publicKey,
        localToken: this.localToken.publicKey,
        burnTokenMint: this.localTokenMint.publicKey,
        messageSentEventData: messageSentEventAccountKeypair.publicKey,
        messageTransmitterProgram: this.messageTransmitterProgram.programId,
        tokenMessengerMinterProgram: this.program.programId,
        tokenProgram: spl.TOKEN_PROGRAM_ID,
        systemProgram: SystemProgram.programId,
      })
      .signers([this.user, messageSentEventAccountKeypair])
      .rpc();
  };

  replaceDepositForBurn = async (
    originalMessage: number[],
    originalAttestation: number[],
    newDestinationCaller: PublicKey,
    newMintRecipient: PublicKey,
    messageSentEventAccountKeypair: Keypair
  ) => {
    return await this.program.methods
      .replaceDepositForBurn({
        originalMessage: Buffer.from(originalMessage),
        originalAttestation: Buffer.from(originalAttestation),
        newDestinationCaller,
        newMintRecipient,
      })
      .accounts({
        owner: this.user.publicKey,
        eventRentPayer: this.user.publicKey,
        senderAuthorityPda: this.authorityPda.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
        messageSentEventData: messageSentEventAccountKeypair.publicKey,
        messageTransmitterEventAuthority:
          this.messageTransmitterEventAuthority.publicKey,
        messageTransmitterProgram: this.messageTransmitterProgram.programId,
        tokenMessengerMinterProgram: this.program.programId,
        systemProgram: SystemProgram.programId,
      })
      .signers([this.user, messageSentEventAccountKeypair])
      .rpc();
  };

  enableAttester = async (newAttester: PublicKey) => {
    return await this.messageTransmitterProgram.methods
      .enableAttester({ newAttester })
      .accounts({
        attesterManager: this.provider.wallet.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        systemProgram: SystemProgram.programId,
      })
      .rpc();
  };

  disableAttester = async (attester: PublicKey) => {
    return await this.messageTransmitterProgram.methods
      .disableAttester({ attester })
      .accounts({
        attesterManager: this.provider.wallet.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        systemProgram: SystemProgram.programId,
      })
      .rpc();
  };

  setSignatureThreshold = async (newSignatureThreshold: number) => {
    return await this.messageTransmitterProgram.methods
      .setSignatureThreshold({ newSignatureThreshold })
      .accounts({
        attesterManager: this.provider.wallet.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .rpc();
  };

  receiveMessage = async (
    remoteDomain: number,
    remoteToken: PublicKey,
    nonce: bigint,
    message: number[],
    attestation: number[]
  ) => {
    const usedNonces = await this.getNoncePDA(nonce, remoteDomain);

    const authorityPda = this.findProgramAddress(
      "message_transmitter_authority",
      [this.program.programId],
      this.messageTransmitterProgram.programId
    ).publicKey;

    const tokenPair = this.findProgramAddress("token_pair", [
      remoteDomain.toString(),
      remoteToken,
    ]).publicKey;

    const remoteTokenMessenger = this.findProgramAddress(
      "remote_token_messenger",
      [remoteDomain.toString()]
    ).publicKey;

    let accountMetas = [];
    accountMetas.push({
      isSigner: false,
      isWritable: false,
      pubkey: this.tokenMessenger.publicKey,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: false,
      pubkey: remoteTokenMessenger,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: true,
      pubkey: this.tokenMinter.publicKey,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: true,
      pubkey: this.localToken.publicKey,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: false,
      pubkey: tokenPair,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: true,
      pubkey: this.userTokenAccount,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: true,
      pubkey: this.custodyTokenAccount.publicKey,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: false,
      pubkey: spl.TOKEN_PROGRAM_ID,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: false,
      pubkey: this.tokenMessengerEventAuthority.publicKey,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: false,
      pubkey: this.program.programId,
    });

    return await this.messageTransmitterProgram.methods
      .receiveMessage({
        message: Buffer.from(message),
        attestation: Buffer.from(attestation),
      })
      .accounts({
        caller: this.provider.wallet.publicKey,
        authorityPda,
        messageTransmitter: this.messageTransmitter.publicKey,
        usedNonces,
        receiver: this.program.programId,
        systemProgram: SystemProgram.programId,
      })
      .remainingAccounts(accountMetas)
      .rpc();
  };

  reclaimEventAccount = async (
    payee: Keypair,
    attestation: number[],
    messageSentEventAccount: PublicKey
  ) => {
    return await this.messageTransmitterProgram.methods
      .reclaimEventAccount({
        attestation: Buffer.from(attestation),
      })
      .accounts({
        payee: payee.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        messageSentEventData: messageSentEventAccount,
      })
      .signers([payee])
      .rpc();
  };

  getNoncePDA = async (nonce: bigint, sourceDomain: number) => {
    return await this.messageTransmitterProgram.methods
      .getNoncePda({
        nonce: new BN(nonce),
        sourceDomain,
      })
      .accounts({
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .view();
  };

  isNonceUsed = async (nonce: bigint, sourceDomain: number) => {
    const usedNonces = await this.getNoncePDA(nonce, sourceDomain);

    return await this.messageTransmitterProgram.methods
      .isNonceUsed({
        nonce: new BN(nonce),
      })
      .accounts({
        usedNonces,
      })
      .view();
  };

  burnTokenCustody = async (amount: BN) => {
    return await this.program.methods
      .burnTokenCustody({ amount })
      .accounts({
        tokenController: this.tokenController.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
        localToken: this.localToken.publicKey,
        custodyTokenAccount: this.custodyTokenAccount.publicKey,
        custodyTokenMint: this.localTokenMint.publicKey,
        tokenProgram: spl.TOKEN_PROGRAM_ID,
      })
      .signers([this.tokenController])
      .rpc();
  };
}
