import * as anchor from "@coral-xyz/anchor";
import { TestClient } from "./test_client";
import { PublicKey, Keypair } from "@solana/web3.js";
import { expect, assert } from "chai";
import * as ethutil from "ethereumjs-util";
import BN from "bn.js";
import * as spl from "@solana/spl-token";
import { publicKey } from "@coral-xyz/anchor/dist/cjs/utils";

describe("token_messenger_minter", () => {
  let tc = new TestClient();

  let tokenMessengerExpected;
  let remoteTokenMessengerExpected;
  let tokenMinterExpected;
  let localTokenExpected;
  let tokenPairExpected;

  let messageBodyVersion = 0;
  let remoteDomain = 123;
  let remoteToken = new PublicKey("1111111111113EsMD5n1VA94D2fALdb1SAKLam8j");
  let mintRecipient;
  let destinationCaller;
  let message;
  let messageVersion = 0;
  let messageNonce = BigInt(1098);
  let messageAmount = BigInt(200000000);
  let messageSourceDomain = 123;
  let sender;
  let recipient;
  let depositor;

  // Attester key values are copied from message-transmitter/tests.ts.
  let attesterPrivateKey1 = Buffer.from(
    "160bb136f958af14b6abc453ed1cefd323fb7c13c3d753788471a75c44127fbc",
    "hex"
  );
  let attester1 = new PublicKey(ethutil.privateToAddress(attesterPrivateKey1));
  let attesterPrivateKey2 = Buffer.from(
    "dbdcf3e6a58e4c03f4e2c68721e2f0d3ee246482cf13edb1533a547490feea9c",
    "hex"
  );
  let attester2 = new PublicKey(ethutil.privateToAddress(attesterPrivateKey2));

  it("initialize", async () => {
    await tc.initFixture();
    await tc.initialize(tc.tokenController.publicKey, messageBodyVersion);

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
      messageBodyVersion,
      remoteToken,
      mintRecipient,
      depositor,
      messageAmount
    );

    let err = await tc.ensureFails(
      tc.initialize(tc.tokenController.publicKey, messageBodyVersion)
    );
    assert(err.logs[3].includes("already in use"));

    tokenMessengerExpected = {
      owner: tc.provider.wallet.publicKey,
      pendingOwner: PublicKey.default,
      localMessageTransmitter: tc.messageTransmitterProgram.programId,
      messageBodyVersion,
      authorityBump: tc.authorityPda.bump,
    };
    let tokenMessenger = await tc.program.account.tokenMessenger.fetch(
      tc.tokenMessenger.publicKey
    );
    expect(JSON.stringify(tokenMessenger)).to.equal(
      JSON.stringify(tokenMessengerExpected)
    );

    let tokenMinter = await tc.program.account.tokenMinter.fetch(
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

    tokenMessengerExpected.pendingOwner = tc.owner.publicKey;

    let tokenMessenger = await tc.program.account.tokenMessenger.fetch(
      tc.tokenMessenger.publicKey
    );
    expect(JSON.stringify(tokenMessenger)).to.equal(
      JSON.stringify(tokenMessengerExpected)
    );

    let eventExpected = {
      previousOwner: tc.provider.wallet.publicKey,
      newOwner: tc.owner.publicKey,
    };
    expect(JSON.stringify(event)).to.equal(JSON.stringify(eventExpected));
  });

  it("acceptOwnership", async () => {
    await tc.acceptOwnership(tc.owner);

    tokenMessengerExpected.owner = tc.owner.publicKey;
    tokenMessengerExpected.pendingOwner = PublicKey.default;

    let tokenMessenger = await tc.program.account.tokenMessenger.fetch(
      tc.tokenMessenger.publicKey
    );
    expect(JSON.stringify(tokenMessenger)).to.equal(
      JSON.stringify(tokenMessengerExpected)
    );
  });

  it("addRemoteTokenMessenger", async () => {
    await tc.addRemoteTokenMessenger(remoteDomain, recipient);

    remoteTokenMessengerExpected = {
      domain: remoteDomain,
      tokenMessenger: recipient,
    };

    let remoteTokenMessenger = tc.findProgramAddress("remote_token_messenger", [
      remoteDomain.toString(),
    ]).publicKey;
    let remoteTokenMessengerState =
      await tc.program.account.remoteTokenMessenger.fetch(remoteTokenMessenger);
    expect(JSON.stringify(remoteTokenMessengerState)).to.equal(
      JSON.stringify(remoteTokenMessengerExpected)
    );
  });

  it("removeRemoteTokenMessenger", async () => {
    await tc.removeRemoteTokenMessenger(remoteDomain);
    let remoteTokenMessenger = tc.findProgramAddress("remote_token_messenger", [
      remoteDomain.toString(),
    ]).publicKey;
    await tc.ensureFails(
      tc.program.account.remoteTokenMessenger.fetch(remoteTokenMessenger)
    );

    await tc.addRemoteTokenMessenger(remoteDomain, recipient);
  });

  it("updatePauser", async () => {
    await tc.updatePauser(tc.pauser.publicKey);

    tokenMinterExpected.pauser = tc.pauser.publicKey;

    let tokenMinter = await tc.program.account.tokenMinter.fetch(
      tc.tokenMinter.publicKey
    );
    expect(JSON.stringify(tokenMinter)).to.equal(
      JSON.stringify(tokenMinterExpected)
    );
  });

  it("setTokenController", async () => {
    await tc.setTokenController(tc.tokenController.publicKey);

    tokenMinterExpected.tokenController = tc.tokenController.publicKey;

    let tokenMinter = await tc.program.account.tokenMinter.fetch(
      tc.tokenMinter.publicKey
    );
    expect(JSON.stringify(tokenMinter)).to.equal(
      JSON.stringify(tokenMinterExpected)
    );
  });

  it("pause", async () => {
    await tc.pause();

    tokenMinterExpected.paused = true;

    let tokenMinter = await tc.program.account.tokenMinter.fetch(
      tc.tokenMinter.publicKey
    );
    expect(JSON.stringify(tokenMinter)).to.equal(
      JSON.stringify(tokenMinterExpected)
    );
  });

  it("unpause", async () => {
    await tc.unpause();

    tokenMinterExpected.paused = false;

    let tokenMinter = await tc.program.account.tokenMinter.fetch(
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

    let localTokenState = await tc.program.account.localToken.fetch(
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

    let localToken = await tc.program.account.localToken.fetch(
      tc.localToken.publicKey
    );
    expect(JSON.stringify(localToken)).to.equal(
      JSON.stringify(localTokenExpected)
    );
  });

  it("linkTokenPair", async () => {
    await tc.linkTokenPair(remoteDomain, remoteToken);

    let tokenPair = tc.findProgramAddress("token_pair", [
      remoteDomain.toString(),
      remoteToken,
    ]);

    tokenPairExpected = {
      remoteDomain,
      remoteToken: remoteToken,
      localToken: tc.localToken.publicKey,
      bump: tokenPair.bump,
    };

    let tokenPairState = await tc.program.account.tokenPair.fetch(
      tokenPair.publicKey
    );

    expect(JSON.stringify(tokenPairState)).to.equal(
      JSON.stringify(tokenPairExpected)
    );
  });

  it("unlinkTokenPair", async () => {
    await tc.unlinkTokenPair(remoteDomain, remoteToken);

    let tokenPair = tc.findProgramAddress("token_pair", [
      remoteDomain.toString(),
      remoteToken,
    ]);
    await tc.ensureFails(
      tc.program.account.tokenPair.fetch(tokenPair.publicKey)
    );

    await tc.linkTokenPair(remoteDomain, remoteToken);
  });

  it("depositForBurn", async () => {
    let [event1, listener1] = tc.scheduleEvent("DepositForBurn");
    let [event2, listener2] = tc.scheduleEvent(
      "MessageSent",
      tc.messageTransmitterProgram
    );

    await tc.depositForBurn(new BN(20), remoteDomain, mintRecipient);

    let depositForBurn = await event1;
    let depositForBurnExpected = {
      nonce: "1",
      burnToken: tc.localTokenMint.publicKey,
      amount: "20",
      depositor,
      mintRecipient,
      destinationDomain: remoteDomain,
      destinationTokenMessenger: recipient,
      destinationCaller: PublicKey.default,
    };
    expect(JSON.stringify(depositForBurn)).to.equal(
      JSON.stringify(depositForBurnExpected)
    );

    let messageSent = await event2;
    expect(messageSent.message.length).to.equal(248);

    await tc.program.removeEventListener(listener1);
    await tc.messageTransmitterProgram.removeEventListener(listener2);
  });

  it("depositForBurnWithCaller", async () => {
    let [event1, listener1] = tc.scheduleEvent("DepositForBurn");
    let [event2, listener2] = tc.scheduleEvent(
      "MessageSent",
      tc.messageTransmitterProgram
    );

    await tc.depositForBurnWithCaller(
      new BN(20),
      remoteDomain,
      mintRecipient,
      destinationCaller
    );

    let depositForBurn = await event1;
    let depositForBurnExpected = {
      nonce: "2",
      burnToken: tc.localTokenMint.publicKey,
      amount: "20",
      depositor,
      mintRecipient,
      destinationDomain: remoteDomain,
      destinationTokenMessenger: recipient,
      destinationCaller,
    };
    expect(JSON.stringify(depositForBurn)).to.equal(
      JSON.stringify(depositForBurnExpected)
    );

    let messageSent = await event2;
    expect(messageSent.message.length).to.equal(248);

    await tc.program.removeEventListener(listener1);
    await tc.messageTransmitterProgram.removeEventListener(listener2);
  });

  it("replaceDepositForBurn", async () => {
    let [event1, listener1] = tc.scheduleEvent("DepositForBurn");
    let [event2, listener2] = tc.scheduleEvent(
      "MessageSent",
      tc.messageTransmitterProgram
    );

    await tc.replaceDepositForBurn(
      message,
      tc.attest(message, [attesterPrivateKey1, attesterPrivateKey2]),
      destinationCaller,
      mintRecipient
    );

    let depositForBurn = await event1;
    let depositForBurnExpected = {
      nonce: messageNonce.toString(),
      burnToken: remoteToken,
      amount: messageAmount.toString(),
      depositor,
      mintRecipient,
      destinationDomain: remoteDomain,
      destinationTokenMessenger: sender,
      destinationCaller,
    };
    expect(JSON.stringify(depositForBurn)).to.equal(
      JSON.stringify(depositForBurnExpected)
    );

    let messageSent = await event2;
    expect(messageSent.message.length).to.equal(248);

    await tc.program.removeEventListener(listener1);
    await tc.messageTransmitterProgram.removeEventListener(listener2);
  });

  it("receiveMessage", async () => {
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

    // receive message
    let [event1, listener1] = tc.scheduleEvent(
      "MessageReceived",
      tc.messageTransmitterProgram
    );
    let [event2, listener2] = tc.scheduleEvent("MintAndWithdraw");

    await tc.receiveMessage(
      remoteDomain,
      remoteToken,
      messageNonce,
      message,
      tc.attest(message, [attesterPrivateKey1, attesterPrivateKey2])
    );

    let messageReceived = await event1;
    let messageReceivedExpected = {
      caller: tc.provider.wallet.publicKey,
      sourceDomain: messageSourceDomain,
      nonce: messageNonce.toString(),
      sender,
      messageBody: tc.createBurnMessageBody(
        messageBodyVersion,
        remoteToken,
        mintRecipient,
        depositor,
        messageAmount
      ),
    };
    expect(JSON.stringify(messageReceived)).to.equal(
      JSON.stringify(messageReceivedExpected)
    );

    let mintAndWithdraw = await event2;
    let mintAndWithdrawExpected = {
      mintRecipient,
      amount: messageAmount.toString(),
      mintToken: tc.localTokenMint.publicKey,
    };
    expect(JSON.stringify(mintAndWithdraw)).to.equal(
      JSON.stringify(mintAndWithdrawExpected)
    );

    await tc.messageTransmitterProgram.removeEventListener(listener1);
    await tc.program.removeEventListener(listener2);

    localTokenExpected = {
      custody: tc.custodyTokenAccount.publicKey,
      mint: tc.localTokenMint.publicKey,
      burnLimitPerMessage: "100",
      messagesSent: "2",
      messagesReceived: "1",
      amountSent: "40",
      amountReceived: "200000000",
      bump: tc.localToken.bump,
      custodyBump: tc.custodyTokenAccount.bump,
    };

    let localTokenState = await tc.program.account.localToken.fetch(
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
    let [event1, listener1] = tc.scheduleEvent("DepositForBurn");
    let [event2, listener2] = tc.scheduleEvent(
      "MessageSent",
      tc.messageTransmitterProgram
    );

    messageNonce = BigInt(3);
    const messageAmount = 20;

    await tc.depositForBurnWithCaller(
      new BN(messageAmount),
      remoteDomain,
      mintRecipient,
      destinationCaller
    );

    // validate deposit for burn
    let depositForBurn = await event1;
    let depositForBurnExpected = {
      nonce: messageNonce.toString(),
      burnToken: tc.localTokenMint.publicKey,
      amount: messageAmount.toString(),
      depositor,
      mintRecipient,
      destinationDomain: remoteDomain,
      destinationTokenMessenger: recipient,
      destinationCaller,
    };
    expect(JSON.stringify(depositForBurn)).to.equal(
      JSON.stringify(depositForBurnExpected)
    );

    let messageSent = await event2;
    expect(messageSent.message.length).to.equal(248);
    const messageBytes = messageSent.message;

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

    await tc.program.removeEventListener(listener1);
    await tc.messageTransmitterProgram.removeEventListener(listener2);

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
    [event1, listener1] = tc.scheduleEvent(
      "MessageReceived",
      tc.messageTransmitterProgram
    );
    [event2, listener2] = tc.scheduleEvent("MintAndWithdraw");

    await tc.receiveMessage(
      remoteDomain,
      tc.localTokenMint.publicKey,
      messageNonce,
      messageBytes,
      combinedSignedMessageBytes
    );

    // validate received message
    let messageReceived = await event1;
    let messageReceivedExpected = {
      caller: tc.provider.wallet.publicKey,
      sourceDomain: remoteDomain,
      nonce: messageNonce.toString(),
      sender,
      messageBody: messageReceived.messageBody,
    };
    expect(JSON.stringify(messageReceived)).to.equal(
      JSON.stringify(messageReceivedExpected)
    );

    let mintAndWithdraw = await event2;
    let mintAndWithdrawExpected = {
      mintRecipient,
      amount: messageAmount.toString(),
      mintToken: tc.localTokenMint.publicKey,
    };
    expect(JSON.stringify(mintAndWithdraw)).to.equal(
      JSON.stringify(mintAndWithdrawExpected)
    );

    await tc.messageTransmitterProgram.removeEventListener(listener1);
    await tc.program.removeEventListener(listener2);

    localTokenExpected = {
      custody: tc.custodyTokenAccount.publicKey,
      mint: tc.localTokenMint.publicKey,
      burnLimitPerMessage: "100",
      messagesSent: "3",
      messagesReceived: "2",
      amountSent: "60",
      amountReceived: "200000020",
      bump: tc.localToken.bump,
      custodyBump: tc.custodyTokenAccount.bump,
    };

    let localTokenState = await tc.program.account.localToken.fetch(
      tc.localToken.publicKey
    );

    expect(JSON.stringify(localTokenState)).to.equal(
      JSON.stringify(localTokenExpected)
    );
  });
});
