import { TestClient } from "./test_client";
import { PublicKey, Keypair } from "@solana/web3.js";
import { expect, assert } from "chai";
import * as ethutil from "ethereumjs-util";
import BN from "bn.js";
import * as spl from "@solana/spl-token";

describe("token_messenger_minter", () => {
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
  let messageNonce = BigInt(1098);
  const messageAmount = BigInt(200000000);
  const messageSourceDomain = 123;
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

    const err = await tc.ensureFails(
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

  it("transferOwnership", async () => {
    const signature = await tc.transferOwnership(tc.owner.publicKey);

    const events = await tc.readEvents(signature, [tc.program]);
    const ownershipTransferStarted = tc.getEvent(
      events,
      tc.program.programId,
      "OwnershipTransferStarted"
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
      "OwnershipTransferred"
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
      remoteToken,
    ]);
    await tc.ensureFails(
      tc.program.account.tokenPair.fetch(tokenPair.publicKey)
    );

    await tc.linkTokenPair(remoteDomain, remoteToken);
  });

  it("depositForBurn", async () => {
    expect(await tc.isNonceUsed(BigInt(1), remoteDomain)).to.be.false;

    // MessageSent event data is stored in a stand-alone account.
    // A random Keypair needs to be provided so the account can be initialized by the contract.
    // After the transaction is executed, the keypair is no longer needed and can be tossed away.
    const messageSentEventAccountKeypair = Keypair.generate();

    const signature = await tc.depositForBurn(
      new BN(20),
      remoteDomain,
      mintRecipient,
      messageSentEventAccountKeypair
    );

    const events = await tc.readEvents(signature, [
      tc.program,
      tc.messageTransmitterProgram,
    ]);

    const depositForBurn = tc.getEvent(
      events,
      tc.program.programId,
      "DepositForBurn"
    );
    const depositForBurnExpected = {
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

    const messageSent =
      await tc.messageTransmitterProgram.account.messageSent.fetch(
        messageSentEventAccountKeypair.publicKey
      );
    expect(messageSent.message.length).to.equal(248);

    const accountInfo = await tc.program.provider.connection.getAccountInfo(
      messageSentEventAccountKeypair.publicKey
    );
    expect(JSON.stringify(accountInfo.owner)).to.equal(
      JSON.stringify(tc.messageTransmitterProgram.programId)
    );
    expect(accountInfo.data.length).to.equal(292);

    expect(await tc.isNonceUsed(BigInt(1), remoteDomain)).to.be.false;
  });

  it("depositForBurnWithCaller", async () => {
    const messageSentEventAccountKeypair = Keypair.generate();

    const signature = await tc.depositForBurnWithCaller(
      new BN(20),
      remoteDomain,
      mintRecipient,
      destinationCaller,
      messageSentEventAccountKeypair
    );

    const events = await tc.readEvents(signature, [
      tc.program,
      tc.messageTransmitterProgram,
    ]);

    const depositForBurn = tc.getEvent(
      events,
      tc.program.programId,
      "DepositForBurn"
    );
    const depositForBurnExpected = {
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

    const messageSent =
      await tc.messageTransmitterProgram.account.messageSent.fetch(
        messageSentEventAccountKeypair.publicKey
      );
    expect(messageSent.message.length).to.equal(248);
  });

  it("replaceDepositForBurn", async () => {
    const messageSentEventAccountKeypair = Keypair.generate();

    const signature = await tc.replaceDepositForBurn(
      message,
      tc.attest(message, [attesterPrivateKey1, attesterPrivateKey2]),
      destinationCaller,
      mintRecipient,
      messageSentEventAccountKeypair
    );

    const events = await tc.readEvents(signature, [
      tc.program,
      tc.messageTransmitterProgram,
    ]);

    const depositForBurn = tc.getEvent(
      events,
      tc.program.programId,
      "DepositForBurn"
    );
    const depositForBurnExpected = {
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

    const messageSent =
      await tc.messageTransmitterProgram.account.messageSent.fetch(
        messageSentEventAccountKeypair.publicKey
      );
    expect(messageSent.message.length).to.equal(248);
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

    const signature = await tc.receiveMessage(
      remoteDomain,
      remoteToken,
      messageNonce,
      message,
      tc.attest(message, [attesterPrivateKey1, attesterPrivateKey2])
    );

    const events = await tc.readEvents(signature, [
      tc.program,
      tc.messageTransmitterProgram,
    ]);

    const messageReceived = tc.getEvent(
      events,
      tc.messageTransmitterProgram.programId,
      "MessageReceived"
    );

    const messageReceivedExpected = {
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

    const mintAndWithdraw = tc.getEvent(
      events,
      tc.program.programId,
      "MintAndWithdraw"
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
      messagesSent: "2",
      messagesReceived: "1",
      amountSent: "40",
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
    expect(await tc.isNonceUsed(BigInt(3), remoteDomain)).to.be.false;
    messageNonce = BigInt(3);
    const messageAmount = 20;
    const messageSentEventAccountKeypair = Keypair.generate();

    let signature = await tc.depositForBurnWithCaller(
      new BN(messageAmount),
      remoteDomain,
      mintRecipient,
      destinationCaller,
      messageSentEventAccountKeypair
    );

    let events = await tc.readEvents(signature, [
      tc.program,
      tc.messageTransmitterProgram,
    ]);

    // validate deposit for burn
    const depositForBurn = tc.getEvent(
      events,
      tc.program.programId,
      "DepositForBurn"
    );
    const depositForBurnExpected = {
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

    const messageSent =
      await tc.messageTransmitterProgram.account.messageSent.fetch(
        messageSentEventAccountKeypair.publicKey
      );
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
      "MessageReceived"
    );
    const messageReceivedExpected = {
      caller: tc.provider.wallet.publicKey,
      sourceDomain: remoteDomain,
      nonce: messageNonce.toString(),
      sender,
      messageBody: messageReceived.messageBody,
    };
    expect(JSON.stringify(messageReceived)).to.equal(
      JSON.stringify(messageReceivedExpected)
    );

    const mintAndWithdraw = tc.getEvent(
      events,
      tc.program.programId,
      "MintAndWithdraw"
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
      amountReceived: "200000020",
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
    expect(await tc.isNonceUsed(BigInt(3), remoteDomain)).to.be.true;

    // reclaim rent SOL
    const initialBalance = await tc.provider.connection.getBalance(
      tc.user.publicKey
    );

    await tc.ensureFails(
      tc.reclaimEventAccount(
        tc.owner,
        combinedSignedMessageBytes,
        messageSentEventAccountKeypair.publicKey
      )
    );
    await tc.reclaimEventAccount(
      tc.user,
      combinedSignedMessageBytes,
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
