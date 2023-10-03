import * as anchor from "@coral-xyz/anchor";
import { TestClient } from "./test_client";
import { PublicKey } from "@solana/web3.js";
import { expect, assert } from "chai";
import BN from "bn.js";

describe("message_transmitter", () => {
  let tc = new TestClient();

  let messageTransmitterExpected;

  let localDomain = 0;
  let version = 0;

  let attester1 = new PublicKey(
    tc.hexToBytes("E2fEfe09E74b921CbbFF229E7cD40009231501CA")
  );
  let attester2 = new PublicKey(
    tc.hexToBytes("b0Ea8E1bE37F346C7EA7ec708834D0db18A17361")
  );

  it("initialize", async () => {
    await tc.initFixture();
    await tc.initialize(localDomain, attester1, new BN(200), version);

    let err = await tc.ensureFails(
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
      authorityBump: tc.authorityPda.bump,
    };

    let messageTransmitter = await tc.program.account.messageTransmitter.fetch(
      tc.messageTransmitter.publicKey
    );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("transferOwnership", async () => {
    let listener = null;
    let [event, _slot] = await new Promise((resolve, _reject) => {
      listener = tc.program.addEventListener(
        "OwnershipTransferStarted",
        (event, slot) => {
          resolve([event, slot]);
        }
      );
      tc.transferOwnership(tc.owner.publicKey);
    });
    await tc.program.removeEventListener(listener);

    messageTransmitterExpected.pendingOwner = tc.owner.publicKey;

    let messageTransmitter = await tc.program.account.messageTransmitter.fetch(
      tc.messageTransmitter.publicKey
    );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );

    let eventExpected = {
      previousOwner: tc.provider.wallet.publicKey,
      newOwner: tc.owner.publicKey,
    };
    expect(JSON.stringify(event)).to.equal(JSON.stringify(eventExpected));
  });

  it("acceptOwnership", async () => {
    await tc.acceptOwnership(tc.owner);

    messageTransmitterExpected.owner = tc.owner.publicKey;
    messageTransmitterExpected.pendingOwner = PublicKey.default;

    let messageTransmitter = await tc.program.account.messageTransmitter.fetch(
      tc.messageTransmitter.publicKey
    );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("updatePauser", async () => {
    await tc.updatePauser(tc.pauser.publicKey);

    messageTransmitterExpected.pauser = tc.pauser.publicKey;

    let messageTransmitter = await tc.program.account.messageTransmitter.fetch(
      tc.messageTransmitter.publicKey
    );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("updateAttesterManager", async () => {
    await tc.updateAttesterManager(tc.attesterManager.publicKey);

    messageTransmitterExpected.attesterManager = tc.attesterManager.publicKey;

    let messageTransmitter = await tc.program.account.messageTransmitter.fetch(
      tc.messageTransmitter.publicKey
    );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("pause", async () => {
    await tc.pause();

    messageTransmitterExpected.paused = true;

    let messageTransmitter = await tc.program.account.messageTransmitter.fetch(
      tc.messageTransmitter.publicKey
    );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("unpause", async () => {
    await tc.unpause();

    messageTransmitterExpected.paused = false;

    let messageTransmitter = await tc.program.account.messageTransmitter.fetch(
      tc.messageTransmitter.publicKey
    );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("setMaxMessageBodySize", async () => {
    await tc.setMaxMessageBodySize(new BN(300));

    messageTransmitterExpected.maxMessageBodySize = new BN(300);

    let messageTransmitter = await tc.program.account.messageTransmitter.fetch(
      tc.messageTransmitter.publicKey
    );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("enableAttester", async () => {
    await tc.enableAttester(attester2);

    messageTransmitterExpected.enabledAttesters = [attester1, attester2];

    let messageTransmitter = await tc.program.account.messageTransmitter.fetch(
      tc.messageTransmitter.publicKey
    );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("setSignatureThreshold", async () => {
    await tc.setSignatureThreshold(2);

    messageTransmitterExpected.signatureThreshold = 2;

    let messageTransmitter = await tc.program.account.messageTransmitter.fetch(
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

    let messageTransmitter = await tc.program.account.messageTransmitter.fetch(
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
