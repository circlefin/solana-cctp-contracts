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

import { TestClient } from "./test_client";
import { PublicKey, Keypair } from "@solana/web3.js";
import { expect, assert } from "chai";
import * as ethutil from "ethereumjs-util";
import BN from "bn.js";
import * as spl from "@solana/spl-token";
import { padStartZero } from "../utils";

describe("token_messenger_minter_v2", () => {
  let tc = new TestClient();

  let tokenMessengerExpected;
  let remoteTokenMessengerExpected;
  let tokenMinterExpected;
  let localTokenExpected;
  let tokenPairExpected;

  const messageBodyVersion = 0;
  const remoteDomain = 123;
  const remoteToken = new PublicKey("1111111111113EsMD5n1VA94D2fALdb1SAKLam8j");
  let mintRecipient;
  let destinationCaller;
  let message;
  const messageVersion = 0;
  let messageNonce = Buffer.from("a87ca1348591db5efaafe71d20f08bc97f4ca01c2dec23a94736a0bb9f21c3f0", "hex");
  const messageAmount = BigInt(200000000);
  const maxFee = BigInt(200000);
  const minFinalityThreshold = 0;
  const messageSourceDomain = 123;
  const hookData = Buffer.from("");
  let sender;
  let recipient;
  let depositor;

  // Attester key values are copied from message-transmitter/tests.ts.
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
    await tc.initialize(tc.tokenController.publicKey, tc.denylister.publicKey, messageBodyVersion);

    destinationCaller = tc.provider.wallet.publicKey;
    mintRecipient = tc.userTokenAccount;
    depositor = tc.user.publicKey;
    sender = tc.program.programId;
    recipient = tc.program.programId;

    message = tc.createBurnMessage(
      messageVersion,
      messageSourceDomain,
      remoteDomain,
      messageNonce,
      sender,
      recipient,
      destinationCaller,
      minFinalityThreshold,
      messageBodyVersion,
      remoteToken,
      mintRecipient,
      depositor,
      messageAmount,
      maxFee,
      hookData,
    );

    const err = await tc.ensureFails(
      tc.initialize(tc.tokenController.publicKey, tc.denylister.publicKey, messageBodyVersion)
    );
    assert(err.logs[3].includes("already in use"));

    tokenMessengerExpected = {
      denylister: tc.denylister.publicKey,
      owner: tc.provider.wallet.publicKey,
      pendingOwner: PublicKey.default,
      localMessageTransmitter: tc.messageTransmitterProgram.programId,
      messageBodyVersion,
      authorityBump: tc.authorityPda.bump,
      denylist: []
    };
    const tokenMessenger = await tc.program.account.tokenMessenger.fetch(
      tc.tokenMessenger.publicKey
    );
    expect(JSON.stringify(tokenMessenger)).to.equal(
      JSON.stringify(tokenMessengerExpected)
    );

    const tokenMinter = await tc.program.account.tokenMinter.fetch(
      tc.tokenMinter.publicKey
    );
    tokenMinterExpected = {
      tokenController: tc.tokenController.publicKey,
      pauser: tc.provider.wallet.publicKey,
      paused: false,
      bump: tokenMinter.bump,
    };
    expect(JSON.stringify(tokenMinter)).to.equal(
      JSON.stringify(tokenMinterExpected)
    );
  });

  describe("Denylist", async() => {
    it("should succeed adding on multiple accounts to denylist", async () => {
      const signature = await tc.denylistAccount(tc.denylistedAccount.publicKey);
      const secondaryDenylistedAccount = Keypair.generate();
      await tc.denylistAccount(secondaryDenylistedAccount.publicKey);

      const events = await tc.readEvents(signature, [tc.program]);
      const denylistedEvent = tc.getEvent(
        events,
        tc.program.programId,
        "denylisted"
      );

      tokenMessengerExpected.denylist = [tc.denylistedAccount.publicKey, secondaryDenylistedAccount.publicKey];

      const tokenMessenger = await tc.program.account.tokenMessenger.fetch(
        tc.tokenMessenger.publicKey
      );
      expect(JSON.stringify(tokenMessenger)).to.equal(
        JSON.stringify(tokenMessengerExpected)
      );

      const expectedEvent = {
        account: tc.denylistedAccount.publicKey,
      };
      expect(JSON.stringify(denylistedEvent)).to.equal(
        JSON.stringify(expectedEvent)
      );

      await tc.undenylistAccount(secondaryDenylistedAccount.publicKey);
    });

    it("should fail on adding same account to denylist", async () => {
      await tc.ensureFails(
        tc.denylistAccount(tc.denylistedAccount.publicKey)
      );
    });

    it("should succeed on removing account from denylist", async () => {
      const signature = await tc.undenylistAccount(tc.denylistedAccount.publicKey);

      const events = await tc.readEvents(signature, [tc.program]);
      const unDenylistedEvent = tc.getEvent(
        events,
        tc.program.programId,
        "unDenylisted"
      );

      tokenMessengerExpected.denylist = [];

      const tokenMessenger = await tc.program.account.tokenMessenger.fetch(
        tc.tokenMessenger.publicKey
      );
      expect(JSON.stringify(tokenMessenger)).to.equal(
        JSON.stringify(tokenMessengerExpected)
      );

      const expectedEvent = {
        account: tc.denylistedAccount.publicKey,
      };
      expect(JSON.stringify(unDenylistedEvent)).to.equal(
        JSON.stringify(expectedEvent)
      );
    });

    it("should fail on removing non existing account from denylist", async () => {
      await tc.ensureFails(
        tc.undenylistAccount(tc.denylistedAccount.publicKey)
      );
    });

    it("should fail on updating the denylister to the same account", async () => {
      await tc.ensureFails(
        tc.updateDenylister(tc.denylister.publicKey)
      );
    });

    it("should succeed on updating denylister", async () => {
      const newDenylister = Keypair.generate().publicKey;
      const signature = await tc.updateDenylister(newDenylister);

      const events = await tc.readEvents(signature, [tc.program]);
      const updatedDenylistedEvent = tc.getEvent(
        events,
        tc.program.programId,
        "denylisterChanged"
      );

      tokenMessengerExpected.denylister = newDenylister;

      const tokenMessenger = await tc.program.account.tokenMessenger.fetch(
        tc.tokenMessenger.publicKey
      );
      expect(JSON.stringify(tokenMessenger)).to.equal(
        JSON.stringify(tokenMessengerExpected)
      );

      const expectedEvent = {
        oldDenylister: tc.denylister.publicKey,
        newDenylister: newDenylister
      };
      expect(JSON.stringify(updatedDenylistedEvent)).to.equal(
        JSON.stringify(expectedEvent)
      );

      await tc.updateDenylister(tc.denylister.publicKey)
    });

    it("should fail on executing depositForBurn with denylisted account", async () => {
      await tc.denylistAccount(tc.denylistedAccount.publicKey)
      await tc.ensureFails(
        tc.depositForBurn(
          new BN(20),
          remoteDomain,
          mintRecipient,
          Keypair.generate(),
          undefined,
          undefined,
          undefined,
          tc.denylistedAccount.publicKey
        )
      )
      await tc.ensureFails(
        tc.depositForBurnWithHook(
          new BN(20),
          remoteDomain,
          mintRecipient,
          Keypair.generate(),
          Buffer.from([1,2,3]),
          undefined,
          undefined,
          undefined,
          tc.denylistedAccount.publicKey
        )
      )
      await tc.undenylistAccount(tc.denylistedAccount.publicKey)
    })
  })

  it("transferOwnership", async () => {
    const signature = await tc.transferOwnership(tc.owner.publicKey);

    const events = await tc.readEvents(signature, [tc.program]);
    const ownershipTransferStarted = tc.getEvent(
      events,
      tc.program.programId,
      "ownershipTransferStarted"
    );

    tokenMessengerExpected.pendingOwner = tc.owner.publicKey;

    const tokenMessenger = await tc.program.account.tokenMessenger.fetch(
      tc.tokenMessenger.publicKey
    );
    expect(JSON.stringify(tokenMessenger)).to.equal(
      JSON.stringify(tokenMessengerExpected)
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
      "ownershipTransferred"
    );

    tokenMessengerExpected.owner = tc.owner.publicKey;
    tokenMessengerExpected.pendingOwner = PublicKey.default;

    const tokenMessenger = await tc.program.account.tokenMessenger.fetch(
      tc.tokenMessenger.publicKey
    );
    expect(JSON.stringify(tokenMessenger)).to.equal(
      JSON.stringify(tokenMessengerExpected)
    );

    const eventExpected = {
      previousOwner: tc.provider.wallet.publicKey,
      newOwner: tc.owner.publicKey,
    };
    expect(JSON.stringify(ownershipTransferred)).to.equal(
      JSON.stringify(eventExpected)
    );
  });

  it("addRemoteTokenMessenger", async () => {
    await tc.addRemoteTokenMessenger(remoteDomain, recipient);

    remoteTokenMessengerExpected = {
      domain: remoteDomain,
      tokenMessenger: recipient,
    };

    const remoteTokenMessenger = tc.findProgramAddress(
      "remote_token_messenger",
      [remoteDomain.toString()]
    ).publicKey;
    const remoteTokenMessengerState =
      await tc.program.account.remoteTokenMessenger.fetch(remoteTokenMessenger);
    expect(JSON.stringify(remoteTokenMessengerState)).to.equal(
      JSON.stringify(remoteTokenMessengerExpected)
    );
  });

  it("removeRemoteTokenMessenger", async () => {
    await tc.removeRemoteTokenMessenger(remoteDomain);
    const remoteTokenMessenger = tc.findProgramAddress(
      "remote_token_messenger",
      [remoteDomain.toString()]
    ).publicKey;
    await tc.ensureFails(
      tc.program.account.remoteTokenMessenger.fetch(remoteTokenMessenger)
    );

    await tc.addRemoteTokenMessenger(remoteDomain, recipient);
  });

  it("updatePauser", async () => {
    await tc.updatePauser(tc.pauser.publicKey);

    tokenMinterExpected.pauser = tc.pauser.publicKey;

    const tokenMinter = await tc.program.account.tokenMinter.fetch(
      tc.tokenMinter.publicKey
    );
    expect(JSON.stringify(tokenMinter)).to.equal(
      JSON.stringify(tokenMinterExpected)
    );
  });

  it("setTokenController", async () => {
    await tc.setTokenController(tc.tokenController.publicKey);

    tokenMinterExpected.tokenController = tc.tokenController.publicKey;

    const tokenMinter = await tc.program.account.tokenMinter.fetch(
      tc.tokenMinter.publicKey
    );
    expect(JSON.stringify(tokenMinter)).to.equal(
      JSON.stringify(tokenMinterExpected)
    );
  });

  it("pause", async () => {
    await tc.pause();

    tokenMinterExpected.paused = true;

    const tokenMinter = await tc.program.account.tokenMinter.fetch(
      tc.tokenMinter.publicKey
    );
    expect(JSON.stringify(tokenMinter)).to.equal(
      JSON.stringify(tokenMinterExpected)
    );
  });

  it("unpause", async () => {
    await tc.unpause();

    tokenMinterExpected.paused = false;

    const tokenMinter = await tc.program.account.tokenMinter.fetch(
      tc.tokenMinter.publicKey
    );
    expect(JSON.stringify(tokenMinter)).to.equal(
      JSON.stringify(tokenMinterExpected)
    );
  });

  it("addLocalToken", async () => {
    await tc.addLocalToken();

    localTokenExpected = {
      custody: tc.custodyTokenAccount.publicKey,
      mint: tc.localTokenMint.publicKey,
      burnLimitPerMessage: new BN(0),
      messagesSent: "0",
      messagesReceived: "0",
      amountSent: "0",
      amountReceived: "0",
      bump: tc.localToken.bump,
      custodyBump: tc.custodyTokenAccount.bump,
    };

    const localTokenState = await tc.program.account.localToken.fetch(
      tc.localToken.publicKey
    );

    expect(JSON.stringify(localTokenState)).to.equal(
      JSON.stringify(localTokenExpected)
    );
  });

  it("removeLocalToken", async () => {
    await tc.removeLocalToken();
    await tc.ensureFails(
      tc.program.account.localToken.fetch(tc.localToken.publicKey)
    );

    await tc.addLocalToken();
  });

  it("setMaxBurnAmountPerMessage", async () => {
    await tc.setMaxBurnAmountPerMessage(new BN(100));

    localTokenExpected.burnLimitPerMessage = new BN(100);

    const localToken = await tc.program.account.localToken.fetch(
      tc.localToken.publicKey
    );
    expect(JSON.stringify(localToken)).to.equal(
      JSON.stringify(localTokenExpected)
    );
  });

  it("linkTokenPair", async () => {
    await tc.linkTokenPair(remoteDomain, remoteToken);

    const tokenPair = tc.findProgramAddress("token_pair", [
      remoteDomain.toString(),
      tc.tokenMinter.bump,
      remoteToken,
    ]);

    tokenPairExpected = {
      remoteDomain,
      remoteToken: remoteToken,
      localToken: tc.localToken.publicKey,
      bump: tokenPair.bump,
    };

    const tokenPairState = await tc.program.account.tokenPair.fetch(
      tokenPair.publicKey
    );

    expect(JSON.stringify(tokenPairState)).to.equal(
      JSON.stringify(tokenPairExpected)
    );
  });

  it("unlinkTokenPair", async () => {
    await tc.unlinkTokenPair(remoteDomain, remoteToken);

    const tokenPair = tc.findProgramAddress("token_pair", [
      remoteDomain.toString(),
      tc.tokenMinter.bump,
      remoteToken,
    ]);
    await tc.ensureFails(
      tc.program.account.tokenPair.fetch(tokenPair.publicKey)
    );

    await tc.linkTokenPair(remoteDomain, remoteToken);
  });

  it("depositForBurn", async () => {
    const response = await tc.isNonceUsed(messageNonce);
    expect(response).to.be.false;

    // MessageSent event data is stored in a stand-alone account.
    // A random Keypair needs to be provided so the account can be initialized by the contract.
    // After the transaction is executed, the keypair is no longer needed and can be tossed away.
    const messageSentEventAccountKeypair = Keypair.generate();

    const signature = await tc.depositForBurn(
      new BN(20),
      remoteDomain,
      mintRecipient,
      messageSentEventAccountKeypair,
    );

    const events = await tc.readEvents(signature, [
      tc.program,
      tc.messageTransmitterProgram,
    ]);

    const depositForBurn = tc.getEvent(
      events,
      tc.program.programId,
      "depositForBurn"
    );
    const depositForBurnExpected = {
      burnToken: tc.localTokenMint.publicKey,
      amount: "20",
      depositor,
      mintRecipient,
      destinationDomain: remoteDomain,
      destinationTokenMessenger: recipient,
      destinationCaller: PublicKey.default,
      maxFee: "0",
      minFinalityThreshold: 2000,
      hookData: Buffer.from([]),
    };
    expect(JSON.stringify(depositForBurn)).to.equal(
      JSON.stringify(depositForBurnExpected)
    );

    const messageSent =
      await tc.messageTransmitterProgram.account.messageSent.fetch(
        messageSentEventAccountKeypair.publicKey
      );
    expect(messageSent.message.length).to.equal(376);

    const accountInfo = await tc.program.provider.connection.getAccountInfo(
      messageSentEventAccountKeypair.publicKey
    );
    expect(JSON.stringify(accountInfo.owner)).to.equal(
      JSON.stringify(tc.messageTransmitterProgram.programId)
    );
    expect(accountInfo.data.length).to.equal(420);

    expect(await tc.isNonceUsed(messageNonce)).to.be.false;
  });

  it("depositForBurnWithCaller", async () => {
    const messageSentEventAccountKeypair = Keypair.generate();

    const signature = await tc.depositForBurn(
      new BN(20),
      remoteDomain,
      mintRecipient,
      messageSentEventAccountKeypair,
      undefined,
      undefined,
      destinationCaller,
    );

    const events = await tc.readEvents(signature, [
      tc.program,
      tc.messageTransmitterProgram,
    ]);

    const depositForBurn = tc.getEvent(
      events,
      tc.program.programId,
      "depositForBurn"
    );
    const depositForBurnExpected = {
      burnToken: tc.localTokenMint.publicKey,
      amount: "20",
      depositor,
      mintRecipient,
      destinationDomain: remoteDomain,
      destinationTokenMessenger: recipient,
      destinationCaller,
      maxFee: "0",
      minFinalityThreshold: 2000,
      hookData: Buffer.from([]),
    };
    expect(JSON.stringify(depositForBurn)).to.equal(
      JSON.stringify(depositForBurnExpected)
    );

    const messageSent =
      await tc.messageTransmitterProgram.account.messageSent.fetch(
        messageSentEventAccountKeypair.publicKey
      );
    expect(messageSent.message.length).to.equal(376);
  });

  it("depositForBurnWithHook", async () => {
    const messageSentEventAccountKeypair = Keypair.generate();
    const hookData = Buffer.from("example hook data");

    const signature = await tc.depositForBurnWithHook(
      new BN(20),
      remoteDomain,
      mintRecipient,
      messageSentEventAccountKeypair,
      hookData,
    );

    const events = await tc.readEvents(signature, [
      tc.program,
      tc.messageTransmitterProgram,
    ]);

    const depositForBurn = tc.getEvent(
      events,
      tc.program.programId,
      "depositForBurn"
    );
    const depositForBurnExpected = {
      burnToken: tc.localTokenMint.publicKey,
      amount: "20",
      depositor,
      mintRecipient,
      destinationDomain: remoteDomain,
      destinationTokenMessenger: recipient,
      destinationCaller: PublicKey.default,
      maxFee: "0",
      minFinalityThreshold: 2000,
      hookData,
    };
    expect(JSON.stringify(depositForBurn)).to.equal(
      JSON.stringify(depositForBurnExpected)
    );

    const messageSent =
      await tc.messageTransmitterProgram.account.messageSent.fetch(
        messageSentEventAccountKeypair.publicKey
      );
    expect(messageSent.message.length).to.equal(393);
  });

  it("receiveMessage - finalized", async () => {
    // fund custody
    await spl.mintToChecked(
      tc.provider.connection,
      tc.owner,
      tc.localTokenMint.publicKey,
      tc.custodyTokenAccount.publicKey,
      tc.owner,
      messageAmount,
      9
    );

    const signature = await tc.receiveMessage(
      remoteDomain,
      remoteToken,
      messageNonce,
      message,
      tc.attest(message, [attesterPrivateKey1, attesterPrivateKey2])
    );

    // Receiving the same message should fail as nonce is already used
    await tc.ensureFails(
      tc.receiveMessage(
        remoteDomain,
        remoteToken,
        messageNonce,
        message,
        tc.attest(message, [attesterPrivateKey1, attesterPrivateKey2])
      )
    )

    const events = await tc.readEvents(signature, [
      tc.program,
      tc.messageTransmitterProgram,
    ]);

    const messageReceived = tc.getEvent(
      events,
      tc.messageTransmitterProgram.programId,
      "messageReceived"
    );

    const messageReceivedExpected = {
      caller: tc.provider.wallet.publicKey,
      sourceDomain: messageSourceDomain,
      nonce: Array.from(messageNonce),
      sender,
      finalityThresholdExecuted: 2000,
      messageBody: tc.createBurnMessageBody(
        messageBodyVersion,
        remoteToken,
        mintRecipient,
        depositor,
        messageAmount,
        maxFee,
        hookData
      ),
    };
    expect(JSON.stringify(messageReceived)).to.equal(
      JSON.stringify(messageReceivedExpected)
    );

    const mintAndWithdraw = tc.getEvent(
      events,
      tc.program.programId,
      "mintAndWithdraw"
    );
    const mintAndWithdrawExpected = {
      mintRecipient,
      amount: messageAmount.toString(),
      mintToken: tc.localTokenMint.publicKey,
    };
    expect(JSON.stringify(mintAndWithdraw)).to.equal(
      JSON.stringify(mintAndWithdrawExpected)
    );

    localTokenExpected = {
      custody: tc.custodyTokenAccount.publicKey,
      mint: tc.localTokenMint.publicKey,
      burnLimitPerMessage: "100",
      messagesSent: "3",
      messagesReceived: "1",
      amountSent: "60",
      amountReceived: "200000000",
      bump: tc.localToken.bump,
      custodyBump: tc.custodyTokenAccount.bump,
    };

    const localTokenState = await tc.program.account.localToken.fetch(
      tc.localToken.publicKey
    );

    expect(JSON.stringify(localTokenState)).to.equal(
      JSON.stringify(localTokenExpected)
    );
  });

  it("receiveMessage - unfinalized", async () => {
    // fund custody
    await spl.mintToChecked(
      tc.provider.connection,
      tc.owner,
      tc.localTokenMint.publicKey,
      tc.custodyTokenAccount.publicKey,
      tc.owner,
      messageAmount,
      9
    );

    const finalityThresholdExecuted = 1000;
    let messageNonce2 = Buffer.from("a99ca1348591db5efaafe71d20f08bc97f4ca01c2dec23a94736a0bb9f21c3f0", "hex");
    const unfinalizedMessage = tc.createBurnMessage(
      messageVersion,
      messageSourceDomain,
      remoteDomain,
      messageNonce2,
      sender,
      recipient,
      destinationCaller,
      minFinalityThreshold,
      messageBodyVersion,
      remoteToken,
      mintRecipient,
      depositor,
      messageAmount,
      maxFee,
      hookData,
      finalityThresholdExecuted
    );

    const signature = await tc.receiveMessage(
      remoteDomain,
      remoteToken,
      messageNonce2,
      unfinalizedMessage,
      tc.attest(unfinalizedMessage, [attesterPrivateKey1, attesterPrivateKey2])
    );

    // Receiving the same message should fail as nonce is already used
    await tc.ensureFails(
      tc.receiveMessage(
        remoteDomain,
        remoteToken,
        messageNonce2,
        unfinalizedMessage,
        tc.attest(unfinalizedMessage, [attesterPrivateKey1, attesterPrivateKey2])
      )
    );

    const events = await tc.readEvents(signature, [
      tc.program,
      tc.messageTransmitterProgram,
    ]);

    const messageReceived = tc.getEvent(
      events,
      tc.messageTransmitterProgram.programId,
      "messageReceived"
    );

    const messageReceivedExpected = {
      caller: tc.provider.wallet.publicKey,
      sourceDomain: messageSourceDomain,
      nonce: Array.from(messageNonce2),
      sender,
      finalityThresholdExecuted,
      messageBody: tc.createBurnMessageBody(
        messageBodyVersion,
        remoteToken,
        mintRecipient,
        depositor,
        messageAmount,
        maxFee,
        hookData
      ),
    };
    expect(JSON.stringify(messageReceived)).to.equal(
      JSON.stringify(messageReceivedExpected)
    );

    const mintAndWithdraw = tc.getEvent(
      events,
      tc.program.programId,
      "mintAndWithdraw"
    );
    const mintAndWithdrawExpected = {
      mintRecipient,
      amount: messageAmount.toString(),
      mintToken: tc.localTokenMint.publicKey,
    };
    expect(JSON.stringify(mintAndWithdraw)).to.equal(
      JSON.stringify(mintAndWithdrawExpected)
    );

    localTokenExpected = {
      custody: tc.custodyTokenAccount.publicKey,
      mint: tc.localTokenMint.publicKey,
      burnLimitPerMessage: "100",
      messagesSent: "3",
      messagesReceived: "2",
      amountSent: "60",
      amountReceived: "400000000",
      bump: tc.localToken.bump,
      custodyBump: tc.custodyTokenAccount.bump,
    };

    const localTokenState = await tc.program.account.localToken.fetch(
      tc.localToken.publicKey
    );

    expect(JSON.stringify(localTokenState)).to.equal(
      JSON.stringify(localTokenExpected)
    );
  });

  it("endToEnd", async () => {
    // update attesters
    const privateKey1 = Keypair.generate().publicKey.toBuffer();
    const publicKey1 = ethutil.privateToAddress(privateKey1);
    const privateKey2 = Keypair.generate().publicKey.toBuffer();
    const publicKey2 = ethutil.privateToAddress(privateKey2);
    const newAttester1 = new PublicKey(publicKey1);
    const newAttester2 = new PublicKey(publicKey2);

    await tc.enableAttester(newAttester1);
    await tc.enableAttester(newAttester2);
    await tc.disableAttester(attester1);
    await tc.disableAttester(attester2);

    // deposit for burn
    const messageNonce = Buffer.from("1c8aff950685c2ed4bc3174f3472287b56d9517b9c948127319a09a7a36deac8", "hex");
    expect(await tc.isNonceUsed(messageNonce)).to.be.false;
    const messageAmount = 20;
    const messageSentEventAccountKeypair = Keypair.generate();

    let signature = await tc.depositForBurn(
      new BN(messageAmount),
      remoteDomain,
      mintRecipient,
      messageSentEventAccountKeypair,
      undefined,
      new BN(1),
      destinationCaller,
    );

    let events = await tc.readEvents(signature, [
      tc.program,
      tc.messageTransmitterProgram,
    ]);

    // validate deposit for burn
    const depositForBurn = tc.getEvent(
      events,
      tc.program.programId,
      "depositForBurn"
    );
    const depositForBurnExpected = {
      burnToken: tc.localTokenMint.publicKey,
      amount: messageAmount.toString(),
      depositor,
      mintRecipient,
      destinationDomain: remoteDomain,
      destinationTokenMessenger: recipient,
      destinationCaller,
      maxFee: "1",
      minFinalityThreshold: 2000,
      hookData: Buffer.from([]),
    };
    expect(JSON.stringify(depositForBurn)).to.equal(
      JSON.stringify(depositForBurnExpected)
    );

    const messageSent =
      await tc.messageTransmitterProgram.account.messageSent.fetch(
        messageSentEventAccountKeypair.publicKey
      );

    expect(messageSent.message.length).to.equal(376);
    const messageBytes = messageSent.message;
    // Replace 32 bytes in messageBytes starting at index 12 with messageNonce
    messageNonce.copy(messageBytes, 12, 0, 32);
    // write extra fields to message 
    const finalityThresholdExecuted = 2000;
    const feeExecuted = 1;
    const expirationBlock = 0;
    messageBytes.writeUInt32BE(finalityThresholdExecuted, 144);
    messageBytes.write(
      padStartZero(BigInt(feeExecuted).toString(16), 64),
        148 + 164,
        32,
        "hex",
    );
    messageBytes.write(
      padStartZero(BigInt(expirationBlock).toString(16), 64),
        148 + 196,
        32,
        "hex",
    );

    // sign the message
    const messageHash = ethutil.keccak256(messageBytes);
    const signedMessage1 = ethutil.ecsign(messageHash, privateKey1);
    const signedMessageBytes1 = tc.hexToBytes(
      ethutil
        .toRpcSig(signedMessage1.v, signedMessage1.r, signedMessage1.s)
        .slice(2)
    );

    const signedMessage2 = ethutil.ecsign(messageHash, privateKey2);
    const signedMessageBytes2 = tc.hexToBytes(
      ethutil
        .toRpcSig(signedMessage2.v, signedMessage2.r, signedMessage2.s)
        .slice(2)
    );

    // contract expects pubkeys to be ordered
    let combinedSignedMessageBytes;
    let flip = false;
    for (let i = 0; i < Math.min(publicKey1.length, publicKey2.length); ++i) {
      if (publicKey2[i] < publicKey1[i]) {
        flip = true;
        break;
      } else if (publicKey2[i] > publicKey1[i]) {
        break;
      }
    }
    if (flip) {
      combinedSignedMessageBytes =
        signedMessageBytes2.concat(signedMessageBytes1);
    } else {
      combinedSignedMessageBytes =
        signedMessageBytes1.concat(signedMessageBytes2);
    }

    // fund custody
    await tc.linkTokenPair(remoteDomain, tc.localTokenMint.publicKey);
    await spl.mintToChecked(
      tc.provider.connection,
      tc.owner,
      tc.localTokenMint.publicKey,
      tc.custodyTokenAccount.publicKey,
      tc.owner,
      messageAmount,
      9
    );

    // receive message
    signature = await tc.receiveMessage(
      remoteDomain,
      tc.localTokenMint.publicKey,
      messageNonce,
      messageBytes,
      combinedSignedMessageBytes
    );

    events = await tc.readEvents(signature, [
      tc.program,
      tc.messageTransmitterProgram,
    ]);

    // validate received message
    const messageReceived = tc.getEvent(
      events,
      tc.messageTransmitterProgram.programId,
      "messageReceived"
    );
    const messageReceivedExpected = {
      caller: tc.provider.wallet.publicKey,
      sourceDomain: remoteDomain,
      nonce: Array.from(messageNonce),
      sender,
      finalityThresholdExecuted: 2000,
      messageBody: messageReceived.messageBody,
    };
    expect(JSON.stringify(messageReceived)).to.equal(
      JSON.stringify(messageReceivedExpected)
    );

    const mintAndWithdraw = tc.getEvent(
      events,
      tc.program.programId,
      "mintAndWithdraw"
    );
    const mintAndWithdrawExpected = {
      mintRecipient,
      amount: messageAmount.toString(),
      mintToken: tc.localTokenMint.publicKey,
    };
    expect(JSON.stringify(mintAndWithdraw)).to.equal(
      JSON.stringify(mintAndWithdrawExpected)
    );

    localTokenExpected = {
      custody: tc.custodyTokenAccount.publicKey,
      mint: tc.localTokenMint.publicKey,
      burnLimitPerMessage: "100",
      messagesSent: "4",
      messagesReceived: "3",
      amountSent: "80",
      amountReceived: "400000020",
      bump: tc.localToken.bump,
      custodyBump: tc.custodyTokenAccount.bump,
    };

    const localTokenState = await tc.program.account.localToken.fetch(
      tc.localToken.publicKey
    );

    expect(JSON.stringify(localTokenState)).to.equal(
      JSON.stringify(localTokenExpected)
    );

    // check if nonce flagged as used
    expect(await tc.isNonceUsed(messageNonce)).to.be.true;

    // reclaim rent SOL
    const initialBalance = await tc.provider.connection.getBalance(
      tc.user.publicKey
    );

    await tc.ensureFails(
      tc.reclaimEventAccount(
        tc.owner,
        combinedSignedMessageBytes,
        messageBytes,
        messageSentEventAccountKeypair.publicKey
      )
    );
    await tc.reclaimEventAccount(
      tc.user,
      combinedSignedMessageBytes,
      messageBytes,
      messageSentEventAccountKeypair.publicKey
    );

    await tc.ensureFails(
      tc.messageTransmitterProgram.account.messageSent.fetch(
        messageSentEventAccountKeypair.publicKey
      )
    );

    expect(
      await tc.provider.connection.getBalance(tc.user.publicKey)
    ).to.greaterThan(initialBalance);
  });

  it("burnTokenCustody", async () => {
    expect(await tc.getBalance(tc.custodyTokenAccount.publicKey)).to.be.equal(
      0
    );

    // fund custody
    await spl.mintToChecked(
      tc.provider.connection,
      tc.owner,
      tc.localTokenMint.publicKey,
      tc.custodyTokenAccount.publicKey,
      tc.owner,
      1000,
      9
    );

    const initialBalance = await tc.getBalance(
      tc.custodyTokenAccount.publicKey
    );
    expect(initialBalance).to.be.equal(1000);

    await tc.burnTokenCustody(new BN(initialBalance / 2));

    let newBalance = await tc.getBalance(tc.custodyTokenAccount.publicKey);
    expect(newBalance).to.be.equal(initialBalance - initialBalance / 2);

    let u64Max = new BN(2).pow(new BN(64)).sub(new BN(1)); // u64::MAX
    await tc.burnTokenCustody(u64Max);

    newBalance = await tc.getBalance(tc.custodyTokenAccount.publicKey);
    expect(newBalance).to.be.equal(0);
  });
});
