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
import { MessageTransmitterV2 } from "../../target/types/message_transmitter_v2";
import * as utils from "../utils";
import { PublicKey, Keypair, SystemProgram } from "@solana/web3.js";
import BN from "bn.js";
import { expect } from "chai";

export class TestClient {
  owner: Keypair;
  pauser: Keypair;
  attesterManager: Keypair;

  provider: anchor.AnchorProvider;
  program: anchor.Program<MessageTransmitterV2>;
  printErrors: boolean;

  messageTransmitter: { publicKey: PublicKey; bump: number };

  constructor() {
    this.provider = anchor.AnchorProvider.env();
    anchor.setProvider(this.provider);
    this.program = anchor.workspace
      .MessageTransmitterV2 as anchor.Program<MessageTransmitterV2>;
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
    version: number,
    programData?: PublicKey,
    upgradeAuthority: Keypair = this.provider.wallet.payer!,
  ) => {
    programData = programData ?? PublicKey.findProgramAddressSync(
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
      .accountsPartial({
        upgradeAuthority: upgradeAuthority.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        messageTransmitterProgramData: programData,
        messageTransmitterProgram: this.program.programId,
        systemProgram: SystemProgram.programId,
      })
      .signers([upgradeAuthority])
      .rpc();
  };

  transferOwnership = async (newOwner: PublicKey, from?: Keypair) => {
    const signer = [from ?? this.owner];

    return await this.program.methods
      .transferOwnership({ newOwner })
      .accountsPartial({
        owner: signer[0].publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers(signer)
      .rpc();
  };

  acceptOwnership = async (newOwner: Keypair) => {
    return await this.program.methods
      .acceptOwnership({})
      .accountsPartial({
        pendingOwner: newOwner.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([newOwner])
      .rpc();
  };

  updatePauser = async (newPauser: PublicKey, signer = this.owner) => {
    return await this.program.methods
      .updatePauser({ newPauser })
      .accountsPartial({
        owner: signer.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([signer])
      .rpc();
  };

  updateAttesterManager = async (newAttesterManager: PublicKey, signer = this.owner) => {
    return await this.program.methods
      .updateAttesterManager({ newAttesterManager })
      .accountsPartial({
        owner: signer.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([signer])
      .rpc();
  };

  pause = async (signer = this.pauser) => {
    return await this.program.methods
      .pause({})
      .accountsPartial({
        pauser: signer.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([signer])
      .rpc();
  };

  unpause = async (signer = this.pauser) => {
    return await this.program.methods
      .unpause({})
      .accountsPartial({
        pauser: signer.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([signer])
      .rpc();
  };

  setMaxMessageBodySize = async (newMaxMessageBodySize: BN, signer = this.owner) => {
    return await this.program.methods
      .setMaxMessageBodySize({ newMaxMessageBodySize })
      .accountsPartial({
        owner: signer.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([signer])
      .rpc();
  };

  enableAttester = async (newAttester: PublicKey, signer = this.attesterManager) => {
    return await this.program.methods
      .enableAttester({ newAttester })
      .accountsPartial({
        attesterManager: signer.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        systemProgram: SystemProgram.programId,
      })
      .signers([signer])
      .rpc();
  };

  disableAttester = async (attester: PublicKey, signer = this.attesterManager) => {
    return await this.program.methods
      .disableAttester({ attester })
      .accountsPartial({
        attesterManager: signer.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        systemProgram: SystemProgram.programId,
      })
      .signers([signer])
      .rpc();
  };

  setSignatureThreshold = async (newSignatureThreshold: number, signer = this.attesterManager) => {
    return await this.program.methods
      .setSignatureThreshold({ newSignatureThreshold })
      .accountsPartial({
        attesterManager: signer.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([signer])
      .rpc();
  };

  verifyState = async (messageTransmitterExpected: ReturnType<typeof this.program.account.messageTransmitter.fetch>) => {
    const messageTransmitter =
      await this.program.account.messageTransmitter.fetch(
        this.messageTransmitter.publicKey
      );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  }
}
