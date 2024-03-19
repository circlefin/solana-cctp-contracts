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
import { MessageTransmitter } from "../../target/types/message_transmitter";
import * as utils from "../utils";
import { PublicKey, Keypair, SystemProgram } from "@solana/web3.js";
import BN from "bn.js";

export class TestClient {
  owner: Keypair;
  pauser: Keypair;
  attesterManager: Keypair;

  provider: anchor.AnchorProvider;
  program: anchor.Program<MessageTransmitter>;
  printErrors: boolean;

  messageTransmitter: { publicKey: PublicKey; bump: number };

  constructor() {
    this.provider = anchor.AnchorProvider.env();
    anchor.setProvider(this.provider);
    this.program = anchor.workspace
      .MessageTransmitter as anchor.Program<MessageTransmitter>;
    this.printErrors = false;

    anchor.BN.prototype.toJSON = function () {
      return this.toString(10);
    };
  }

  initFixture = async () => {
    this.owner = Keypair.generate();
    this.pauser = Keypair.generate();
    this.attesterManager = Keypair.generate();

    // pdas
    this.messageTransmitter = this.findProgramAddress("message_transmitter");
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

  ///////
  // instructions

  initialize = async (
    localDomain: number,
    attester: PublicKey,
    maxMessageBodySize: BN,
    version: number
  ) => {
    const programData = PublicKey.findProgramAddressSync(
      [this.program.programId.toBuffer()],
      new PublicKey("BPFLoaderUpgradeab1e11111111111111111111111")
    )[0];

    return await this.program.methods
      .initialize({
        localDomain,
        attester,
        maxMessageBodySize,
        version,
      })
      .accounts({
        upgradeAuthority: this.provider.wallet.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        messageTransmitterProgramData: programData,
        messageTransmitterProgram: this.program.programId,
        systemProgram: SystemProgram.programId,
      })
      .rpc();
  };

  transferOwnership = async (newOwner: PublicKey) => {
    const currentOwner = (
      await this.program.account.messageTransmitter.fetch(
        this.messageTransmitter.publicKey
      )
    ).owner;

    return await this.program.methods
      .transferOwnership({ newOwner })
      .accounts({
        owner: currentOwner,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers(currentOwner == this.owner.publicKey ? [this.owner] : [])
      .rpc();
  };

  acceptOwnership = async (newOwner: Keypair) => {
    return await this.program.methods
      .acceptOwnership({})
      .accounts({
        pendingOwner: this.owner.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([newOwner])
      .rpc();
    this.owner = newOwner;
  };

  updatePauser = async (newPauser: PublicKey) => {
    return await this.program.methods
      .updatePauser({ newPauser })
      .accounts({
        owner: this.owner.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([this.owner])
      .rpc();
  };

  updateAttesterManager = async (newAttesterManager: PublicKey) => {
    return await this.program.methods
      .updateAttesterManager({ newAttesterManager })
      .accounts({
        owner: this.owner.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([this.owner])
      .rpc();
  };

  pause = async () => {
    return await this.program.methods
      .pause({})
      .accounts({
        pauser: this.pauser.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([this.pauser])
      .rpc();
  };

  unpause = async () => {
    return await this.program.methods
      .unpause({})
      .accounts({
        pauser: this.pauser.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([this.pauser])
      .rpc();
  };

  setMaxMessageBodySize = async (newMaxMessageBodySize: BN) => {
    return await this.program.methods
      .setMaxMessageBodySize({ newMaxMessageBodySize })
      .accounts({
        owner: this.owner.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([this.owner])
      .rpc();
  };

  enableAttester = async (newAttester: PublicKey) => {
    return await this.program.methods
      .enableAttester({ newAttester })
      .accounts({
        attesterManager: this.attesterManager.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        systemProgram: SystemProgram.programId,
      })
      .signers([this.attesterManager])
      .rpc();
  };

  disableAttester = async (attester: PublicKey) => {
    return await this.program.methods
      .disableAttester({ attester })
      .accounts({
        attesterManager: this.attesterManager.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        systemProgram: SystemProgram.programId,
      })
      .signers([this.attesterManager])
      .rpc();
  };

  setSignatureThreshold = async (newSignatureThreshold: number) => {
    return await this.program.methods
      .setSignatureThreshold({ newSignatureThreshold })
      .accounts({
        attesterManager: this.attesterManager.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([this.attesterManager])
      .rpc();
  };
}
