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
    hexToBytes("E2fEfe09E74b921CbbFF229E7cD40009231501CA")
  );
  let attester2 = new PublicKey(
    hexToBytes("b0Ea8E1bE37F346C7EA7ec708834D0db18A17361")
  );

  let message = hexToBytes(
    "000000000000000000000003000000000000044a000000000000000000000000bd3fa81b58ba92a82136038b25adec7066af315500000000000000000000000019330d10d9cc8751218eaf51e8885d058642e08a0000000000000000000000001b067f9fdff92cc254afcf7f941617588116bd8100000000000000000000000000000000a0b86991c6218b36c1d19d4a2e9eb0ce3606eb48000000000000000000000000fb2bfc368a7edfd51aa2cbec513ad50edea74e84000000000000000000000000000000000000000000000000000000000bebc200000000000000000000000000fb2bfc368a7edfd51aa2cbec513ad50edea74e84"
  );
  let messageNonce = BigInt(5333387858713509888);
  let messageSourceDomain = 0;

  let attestation1 = hexToBytes(
    "2a23eed2170f3819542d465f33e0b1bdc925bc3fa8f4e3e7d0b6fc461528ad015513c8aaf8d5398c49eeee6b4160bd51f3e5cd056bef4e6fd222da2e20b7e5b01b"
  );
  let attestation2 = hexToBytes(
    "3a5deeba6e3a82a67a832114c8a588ab972445ed9c87bb22fd4a5792fd68ae102440cf49e09597cf1b4c48bdef8ad1f8e13929712ff9a84b31cd76971413ae2f1c2a23eed2170f3819542d465f33e0b1bdc925bc3fa8f4e3e7d0b6fc461528ad015513c8aaf8d5398c49eeee6b4160bd51f3e5cd056bef4e6fd222da2e20b7e5b01b"
  );

  it("initialize", async () => {
    await tc.initFixture();
    await tc.initialize(localDomain, attester1, new BN(100), version);

    let err = await tc.ensureFails(
      tc.initialize(localDomain, attester1, new BN(100), version)
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
      maxMessageBodySize: "100",
      nextAvailableNonce: "1",
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
    await tc.setMaxMessageBodySize(new BN(200));

    messageTransmitterExpected.maxMessageBodySize = new BN(200);

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

    messageTransmitterExpected.signatureThreshold = 1;
    await tc.setSignatureThreshold(1);
  });

  it("disableAttester", async () => {
    await tc.disableAttester(attester2);

    messageTransmitterExpected.enabledAttesters = [attester1];

    let messageTransmitter = await tc.program.account.messageTransmitter.fetch(
      tc.messageTransmitter.publicKey
    );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("sendMessage", async () => {
    let listener = null;
    let [event, _slot] = await new Promise((resolve, _reject) => {
      listener = tc.program.addEventListener("MessageSent", (event, slot) => {
        resolve([event, slot]);
      });
      tc.sendMessage(3, tc.provider.wallet.publicKey, new Array(20).fill(6));
    });
    await tc.program.removeEventListener(listener);

    messageTransmitterExpected.nextAvailableNonce = "2";

    let messageTransmitter = await tc.program.account.messageTransmitter.fetch(
      tc.messageTransmitter.publicKey
    );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );

    let eventExpected = {
      message: Buffer.from([
        0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 232, 151,
        251, 63, 185, 37, 88, 116, 25, 255, 179, 213, 45, 180, 15, 243, 215,
        123, 134, 166, 43, 171, 95, 119, 67, 185, 97, 174, 90, 64, 33, 100, 232,
        151, 251, 63, 185, 37, 88, 116, 25, 255, 179, 213, 45, 180, 15, 243,
        215, 123, 134, 166, 43, 171, 95, 119, 67, 185, 97, 174, 90, 64, 33, 100,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
        6, 6, 6, 6,
      ]),
    };
    expect(JSON.stringify(event)).to.equal(JSON.stringify(eventExpected));
  });

  it("sendMessageWithCaller", async () => {
    await tc.sendMessageWithCaller(
      3,
      tc.provider.wallet.publicKey,
      tc.provider.wallet.publicKey,
      new Array(200).fill(6)
    );

    messageTransmitterExpected.nextAvailableNonce = "3";

    let messageTransmitter = await tc.program.account.messageTransmitter.fetch(
      tc.messageTransmitter.publicKey
    );
    expect(JSON.stringify(messageTransmitter)).to.equal(
      JSON.stringify(messageTransmitterExpected)
    );
  });

  it("replaceMessage", async () => {
    // test with one attester
    await tc.replaceMessage(
      message,
      attestation1,
      new Array(200).fill(8),
      tc.provider.wallet.publicKey
    );

    // test with two attesters
    await tc.enableAttester(attester2);
    await tc.setSignatureThreshold(2);

    await tc.replaceMessage(
      message,
      attestation2,
      new Array(200).fill(8),
      tc.provider.wallet.publicKey
    );
  });

  it("receiveMessage", async () => {
    let listener = null;
    let [event, _slot] = await new Promise((resolve, _reject) => {
      listener = tc.program.addEventListener(
        "MessageReceived",
        (event, slot) => {
          resolve([event, slot]);
        }
      );
      tc.receiveMessage(
        messageSourceDomain,
        messageNonce,
        message,
        attestation2
      );
    });
    await tc.program.removeEventListener(listener);

    let eventExpected = {
      caller: tc.provider.wallet.publicKey,
      sourceDomain: messageSourceDomain,
      nonce: messageNonce.toString(),
      sender: "1111111111113dvMv4ZCzFdjMXrQ3mrKCG7cjKA4",
      messageBody: Buffer.from([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 4, 74, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 189, 63, 168, 27, 88, 186, 146, 168, 33, 54, 3,
        139, 37, 173, 236, 112, 102, 175, 49, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 25, 51, 13, 16, 217, 204, 135, 81, 33, 142, 175, 81, 232, 136, 93,
        5, 134, 66, 224, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 6, 127,
        159, 223, 249, 44, 194, 84, 175, 207, 127, 148, 22, 23, 88, 129, 22,
        189, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 160, 184, 105,
        145, 198, 33, 139, 54, 193, 209, 157, 74, 46, 158, 176, 206, 54, 6, 235,
        72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 251, 43, 252, 54, 138, 126, 223,
        213, 26, 162, 203, 236, 81, 58, 213, 14, 222, 167, 78, 132, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        11, 235, 194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 251, 43, 252, 54,
        138, 126, 223, 213, 26, 162, 203, 236, 81, 58, 213, 14, 222, 167, 78,
        132,
      ]),
    };
    expect(JSON.stringify(event)).to.equal(JSON.stringify(eventExpected));
  });

  // Convert a hex string to a byte array
  function hexToBytes(hex) {
    let bytes = [];
    for (let c = 0; c < hex.length; c += 2)
      bytes.push(parseInt(hex.substr(c, 2), 16));
    return bytes;
  }
});
