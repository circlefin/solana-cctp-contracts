/*
 * Copyright (c) 2024, Circle Internet Financial Limited All Rights Reserved.
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

import { TestClient } from "./test_client";
import { PublicKey } from "@solana/web3.js";
import { expect, assert } from "chai";
import * as ethutil from "ethereumjs-util";
import BN from "bn.js";

describe("message_transmitter", () => {
  let tc = new TestClient();

  let messageTransmitterExpected;

  const localDomain = 123;
  const version = 0;

  const attesterPrivateKey1 = Buffer.from(
    "160bb136f958af14b6abc453ed1cefd323fb7c13c3d753788471a75c44127fbc",
    "hex"
  );
  const attester1 = new PublicKey(
    ethutil.privateToAddress(attesterPrivateKey1)
  );
  const attesterPrivateKey2 = Buffer.from(
    "dbdcf3e6a58e4c03f4e2c68721e2f0d3ee246482cf13edb1533a547490feea9c",
    "hex"
  );
  const attester2 = new PublicKey(
    ethutil.privateToAddress(attesterPrivateKey2)
  );

  it("initialize", async () => {
    await tc.initFixture();
    await tc.initialize(localDomain, attester1, new BN(200), version);

    const err = await tc.ensureFails(
      tc.initialize(localDomain, attester1, new BN(200), version)
    );
    assert(err.logs[3].includes("already in use"));

    messageTransmitterExpected = {
      owner: tc.provider.wallet.publicKey,
      pendingOwner: PublicKey.default,
      attesterManager: tc.provider.wallet.publicKey,
      pauser: tc.provider.wallet.publicKey,
      paused: false,
      localDomain: localDomain,
      version: version,
      signatureThreshold: 1,
      enabledAttesters: [attester1],
      maxMessageBodySize: "200",
      nextAvailableNonce: "1",
    };

    const messageTransmitter =
      await tc.program.account.messageTransmitter.fetch(
        tc.messageTransmitter.publicKey
      );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("transferOwnership", async () => {
    const signature = await tc.transferOwnership(tc.owner.publicKey);

    const events = await tc.readEvents(signature, [tc.program]);
    const ownershipTransferStarted = tc.getEvent(
      events,
      tc.program.programId,
      "OwnershipTransferStarted"
    );

    messageTransmitterExpected.pendingOwner = tc.owner.publicKey;

    const messageTransmitter =
      await tc.program.account.messageTransmitter.fetch(
        tc.messageTransmitter.publicKey
      );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );

    const eventExpected = {
      previousOwner: tc.provider.wallet.publicKey,
      newOwner: tc.owner.publicKey,
    };
    expect(JSON.stringify(ownershipTransferStarted)).to.equal(
      JSON.stringify(eventExpected)
    );
  });

  it("acceptOwnership", async () => {
    const signature = await tc.acceptOwnership(tc.owner);

    const events = await tc.readEvents(signature, [tc.program]);
    const ownershipTransferred = tc.getEvent(
      events,
      tc.program.programId,
      "OwnershipTransferred"
    );

    messageTransmitterExpected.owner = tc.owner.publicKey;
    messageTransmitterExpected.pendingOwner = PublicKey.default;

    const messageTransmitter =
      await tc.program.account.messageTransmitter.fetch(
        tc.messageTransmitter.publicKey
      );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );

    const eventExpected = {
      previousOwner: tc.provider.wallet.publicKey,
      newOwner: tc.owner.publicKey,
    };
    expect(JSON.stringify(ownershipTransferred)).to.equal(
      JSON.stringify(eventExpected)
    );
  });

  it("updatePauser", async () => {
    await tc.updatePauser(tc.pauser.publicKey);

    messageTransmitterExpected.pauser = tc.pauser.publicKey;

    const messageTransmitter =
      await tc.program.account.messageTransmitter.fetch(
        tc.messageTransmitter.publicKey
      );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("updateAttesterManager", async () => {
    await tc.updateAttesterManager(tc.attesterManager.publicKey);

    messageTransmitterExpected.attesterManager = tc.attesterManager.publicKey;

    const messageTransmitter =
      await tc.program.account.messageTransmitter.fetch(
        tc.messageTransmitter.publicKey
      );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("pause", async () => {
    await tc.pause();

    messageTransmitterExpected.paused = true;

    const messageTransmitter =
      await tc.program.account.messageTransmitter.fetch(
        tc.messageTransmitter.publicKey
      );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("unpause", async () => {
    await tc.unpause();

    messageTransmitterExpected.paused = false;

    const messageTransmitter =
      await tc.program.account.messageTransmitter.fetch(
        tc.messageTransmitter.publicKey
      );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("setMaxMessageBodySize", async () => {
    await tc.setMaxMessageBodySize(new BN(300));

    messageTransmitterExpected.maxMessageBodySize = new BN(300);

    const messageTransmitter =
      await tc.program.account.messageTransmitter.fetch(
        tc.messageTransmitter.publicKey
      );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("enableAttester", async () => {
    await tc.enableAttester(attester2);

    messageTransmitterExpected.enabledAttesters = [attester1, attester2];

    const messageTransmitter =
      await tc.program.account.messageTransmitter.fetch(
        tc.messageTransmitter.publicKey
      );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("setSignatureThreshold", async () => {
    await tc.setSignatureThreshold(2);

    messageTransmitterExpected.signatureThreshold = 2;

    const messageTransmitter =
      await tc.program.account.messageTransmitter.fetch(
        tc.messageTransmitter.publicKey
      );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("disableAttester", async () => {
    await tc.setSignatureThreshold(1);
    await tc.disableAttester(attester2);

    messageTransmitterExpected.signatureThreshold = 1;
    messageTransmitterExpected.enabledAttesters = [attester1];

    const messageTransmitter =
      await tc.program.account.messageTransmitter.fetch(
        tc.messageTransmitter.publicKey
      );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );

    await tc.enableAttester(attester2);
    await tc.setSignatureThreshold(2);
    await tc.updateAttesterManager(tc.provider.wallet.publicKey);
  });
});
