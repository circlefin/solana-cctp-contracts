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
import { PublicKey, Keypair, AccountInfo } from "@solana/web3.js";
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

  const messageBodyVersion = 1;
  const remoteDomain = 1234;
  const localDomain = 123;
  const remoteToken = new PublicKey("1111111111113EsMD5n1VA94D2fALdb1SAKLam8j");
  let mintRecipient;
  let destinationCaller;
  let message;
  const messageVersion = 1;
  let messageNonce = Buffer.from(
    "a87ca1348591db5efaafe71d20f08bc97f4ca01c2dec23a94736a0bb9f21c3f0",
    "hex"
  );
  const messageAmount = BigInt(200000000);
  const maxFee = BigInt(200000);
  const minFinalityThreshold = 0;
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

  describe("initialize", () => {
      it("fails when called by invalid upgrade_authority", async () => {
        await tc.initFixture();
  
        const err = await tc.ensureFails(
          tc.initialize(
            tc.tokenController.publicKey,
            tc.denylister.publicKey,
            tc.feeRecipient.publicKey,
            tc.minFeeController.publicKey,
            messageBodyVersion,
            undefined,
            undefined,
            tc.pauser
          )
        );
        assert(err.logs[6].includes("ConstraintRaw"));
      });
  
      it("fails when called with invalid program data", async () => {
        // try calling with message transmitter program data
        const incorrectProgramData = PublicKey.findProgramAddressSync(
          [new PublicKey("CCTPV2Sm4AdWt5296sk4P66VBZ7bEhcARwFaaS9YPbeC").toBuffer()],
          new PublicKey("BPFLoaderUpgradeab1e11111111111111111111111")
        )[0];
  
        const err = await tc.ensureFails(
          tc.initialize(
            tc.tokenController.publicKey,
            tc.denylister.publicKey,
            tc.feeRecipient.publicKey,
            tc.minFeeController.publicKey,
            messageBodyVersion,
            undefined,
            incorrectProgramData
          )
        );
        assert(err.logs[6].includes("InvalidProgramExecutable"));
      });

      it("initialize", async () => {
        await tc.initialize(
          tc.tokenController.publicKey,
          tc.denylister.publicKey,
          tc.feeRecipient.publicKey,
          tc.minFeeController.publicKey,
          messageBodyVersion
        );

        destinationCaller = tc.provider.wallet.publicKey;
        mintRecipient = tc.userTokenAccount;
        depositor = tc.user.publicKey;
        sender = tc.program.programId;
        recipient = tc.program.programId;

        message = tc.createBurnMessage(
          messageVersion,
          remoteDomain,
          localDomain,
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
          hookData
        );

        const err = await tc.ensureFails(
          tc.initialize(
            tc.tokenController.publicKey,
            tc.denylister.publicKey,
            tc.feeRecipient.publicKey,
            tc.minFeeController.publicKey,
            messageBodyVersion
          )
        );
        assert(err.logs[3].includes("already in use"));

        tokenMessengerExpected = {
          denylister: tc.denylister.publicKey,
          owner: tc.provider.wallet.publicKey,
          pendingOwner: PublicKey.default,
          messageBodyVersion,
          authorityBump: tc.authorityPda.bump,
          feeRecipient: tc.feeRecipient.publicKey,
          minFeeController: tc.minFeeController.publicKey,
          minFee: 0,
        };
        await tc.verifyTokenMessengerState(tokenMessengerExpected);

        const tokenMinter = await tc.program.account.tokenMinter.fetch(
          tc.tokenMinter.publicKey
        );
        tokenMinterExpected = {
          tokenController: tc.tokenController.publicKey,
          pauser: tc.provider.wallet.publicKey,
          paused: false,
          bump: tokenMinter.bump,
        };
        await tc.verifyTokenMinterState(tokenMinterExpected);
      });
  });

  describe("transferOwnership", () => {
    it("fails when signer != owner", async () => {
      const err = await tc.ensureFails(
        tc.transferOwnership(tc.tokenController.publicKey, tc.pauser)
      );
      assert(err.logs[2].includes("InvalidAuthority"));

      await tc.verifyTokenMessengerState(tokenMessengerExpected);
    });

    it("fails when new_owner = null", async () => {
      const err = await tc.ensureFails(
        tc.transferOwnership(PublicKey.default, tc.provider.wallet.payer)
      );
      assert(err.logs[2].includes("InvalidOwner"));

      await tc.verifyTokenMessengerState(tokenMessengerExpected);
    });

    it("fails when old_owner = new_owner", async () => {
      const err = await tc.ensureFails(
        tc.transferOwnership(tc.provider.wallet.publicKey, tc.provider.wallet.payer)
      );
      assert(err.logs[2].includes("InvalidOwner"));

      await tc.verifyTokenMessengerState(tokenMessengerExpected);
    });

    it("pending_owner = new_owner fails", async () => {
      await tc.transferOwnership(tc.pauser.publicKey, tc.provider.wallet.payer);
      const err = await tc.ensureFails(
        tc.transferOwnership(tc.pauser.publicKey, tc.provider.wallet.payer)
      );
      assert(err.logs[2].includes("InvalidOwner"));

      await tc.verifyTokenMessengerState({...tokenMessengerExpected, pendingOwner: tc.pauser.publicKey});
    });

    it("success", async () => {
      const signature = await tc.transferOwnership(tc.owner.publicKey, tc.provider.wallet.payer);
      const events = await tc.readEvents(signature, [tc.program]);
      const ownershipTransferStarted = tc.getEvent(
        events,
        tc.program.programId,
        "ownershipTransferStarted"
      );

      tokenMessengerExpected.pendingOwner = tc.owner.publicKey;

      await tc.verifyTokenMessengerState(tokenMessengerExpected);

      const eventExpected = {
        previousOwner: tc.provider.wallet.publicKey,
        newOwner: tc.owner.publicKey,
      };
      expect(JSON.stringify(ownershipTransferStarted)).to.equal(
        JSON.stringify(eventExpected)
      );
    });
  });

  describe("acceptOwnership", () => {
    it("fails when pending_owner != signer", async () => {
      const err = await tc.ensureFails(
        tc.acceptOwnership(tc.pauser)
      );
      assert(err.logs[2].includes("InvalidAuthority"));

      await tc.verifyTokenMessengerState(tokenMessengerExpected);
    });

    it("success", async () => {
      const signature = await tc.acceptOwnership(tc.owner);

      const events = await tc.readEvents(signature, [tc.program]);
      const ownershipTransferred = tc.getEvent(
        events,
        tc.program.programId,
        "ownershipTransferred"
      );

      tokenMessengerExpected.owner = tc.owner.publicKey;
      tokenMessengerExpected.pendingOwner = PublicKey.default;

      await tc.verifyTokenMessengerState(tokenMessengerExpected);

      const eventExpected = {
        previousOwner: tc.provider.wallet.publicKey,
        newOwner: tc.owner.publicKey,
      };
      expect(JSON.stringify(ownershipTransferred)).to.equal(
        JSON.stringify(eventExpected)
      );
    });
  });

  describe("addRemoteTokenMessenger", () => {
    it("fails when signer != owner", async () => {
      const err = await tc.ensureFails(
        tc.addRemoteTokenMessenger(remoteDomain + 1, recipient, tc.pauser)
      );
      assert(err.logs[4].includes("InvalidAuthority"));

      const remoteTokenMessenger = tc.findProgramAddress(
        "remote_token_messenger",
        [(remoteDomain + 1).toString()]
      ).publicKey;
      await tc.ensureFails(
        tc.program.account.remoteTokenMessenger.fetch(remoteTokenMessenger)
      );
    });

    it("fails when token_messenger = null", async () => {
      const err = await tc.ensureFails(
        tc.addRemoteTokenMessenger(remoteDomain + 2, PublicKey.default)
      );
      assert(err.logs[4].includes("InvalidTokenMessengerState"));

      const remoteTokenMessenger = tc.findProgramAddress(
        "remote_token_messenger",
        [(remoteDomain + 2).toString()]
      ).publicKey;
      await tc.ensureFails(
        tc.program.account.remoteTokenMessenger.fetch(remoteTokenMessenger)
      );
    });

    it("success", async () => {
      await tc.addRemoteTokenMessenger(remoteDomain, recipient);

      remoteTokenMessengerExpected = {
        domain: remoteDomain,
        tokenMessenger: recipient,
      };

      await tc.verifyRemoteTokenMessengerState(remoteDomain, remoteTokenMessengerExpected);
    });
    
    it("fails when there is already a token messenger set for domain", async () => {
      const err = await tc.ensureFails(
        tc.addRemoteTokenMessenger(remoteDomain, recipient)
      );
      assert(err.logs[3].includes("already in use"));
    });
  });

  describe("removeRemoteTokenMessenger", () => {
    it("fails when signer != owner", async () => {
      const err = await tc.ensureFails(
        tc.removeRemoteTokenMessenger(remoteDomain, tc.pauser)
      );
      assert(err.logs[2].includes("InvalidAuthority"));

      // Verify the remote token messenger still exists
      await tc.verifyRemoteTokenMessengerState(remoteDomain, remoteTokenMessengerExpected);
    });

    it("fails when remote token messenger doesn't exist", async () => {
      const nonExistentDomain = remoteDomain + 999;
      const err = await tc.ensureFails(
        tc.removeRemoteTokenMessenger(nonExistentDomain)
      );
      assert(err.logs[2].includes("AccountNotInitialized"));
    });

    it("success", async () => {
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
  });

  describe("updatePauser", () => {
    it("fails when signer != owner", async () => {
      const err = await tc.ensureFails(
        tc.updatePauser(tc.pauser.publicKey, tc.pauser)
      );
      assert(err.logs[2].includes("InvalidAuthority"));

      await tc.verifyTokenMinterState(tokenMinterExpected);
    });

    it("fails when new_pauser = null", async () => {
      const err = await tc.ensureFails(
        tc.updatePauser(PublicKey.default)
      );
      assert(err.logs[2].includes("InvalidPauser"));

      await tc.verifyTokenMinterState(tokenMinterExpected);
    });

    it("success", async () => {
      await tc.updatePauser(tc.pauser.publicKey);

      tokenMinterExpected.pauser = tc.pauser.publicKey;

      await tc.verifyTokenMinterState(tokenMinterExpected);
    });

    it("fails when old_pauser = new_pauser", async () => {
      const err = await tc.ensureFails(
        tc.updatePauser(tc.pauser.publicKey)
      );
      assert(err.logs[2].includes("InvalidPauser"));

      await tc.verifyTokenMinterState(tokenMinterExpected);
    });
  });

  describe("setTokenController", () => {
    it("fails when signer != owner", async () => {
      const err = await tc.ensureFails(
        tc.setTokenController(tc.pauser.publicKey, tc.pauser)
      );
      assert(err.logs[2].includes("InvalidAuthority"));

      await tc.verifyTokenMinterState(tokenMinterExpected);
    });

    it("fails when tokenController = null", async () => {
      const err = await tc.ensureFails(
        tc.setTokenController(PublicKey.default)
      );
      assert(err.logs[2].includes("InvalidTokenController"));

      await tc.verifyTokenMinterState(tokenMinterExpected);
    });

    it("fails when newTokenController = existing", async () => {
      const err = await tc.ensureFails(
        tc.setTokenController(tc.tokenController.publicKey)
      );
      assert(err.logs[2].includes("InvalidTokenController"));

      await tc.verifyTokenMinterState(tokenMinterExpected);
    });

    it("success", async () => {
      // set to a different address first to avoid invalidTokenController
      await tc.setTokenController(tc.pauser.publicKey);
      
      await tc.setTokenController(tc.tokenController.publicKey);
      tokenMinterExpected.tokenController = tc.tokenController.publicKey;
      await tc.verifyTokenMinterState(tokenMinterExpected);
    });
  });

  describe("pause", () => {
    it("fails when signer != pauser", async () => {
      const err = await tc.ensureFails(
        tc.pause(tc.owner)
      );
      assert(err.logs[2].includes("InvalidAuthority"));

      await tc.verifyTokenMinterState(tokenMinterExpected);
    });

    it("success", async () => {
      await tc.pause();

      tokenMinterExpected.paused = true;

      await tc.verifyTokenMinterState(tokenMinterExpected);
    });

    it("fails when already paused", async () => {
      const err = await tc.ensureFails(
        tc.pause()
      );
      assert(err.logs[2].includes("InvalidTokenMinterState"));

      await tc.verifyTokenMinterState(tokenMinterExpected);
    });
  });

  describe("unpause", () => {
    it("fails when signer != pauser", async () => {
      const err = await tc.ensureFails(
        tc.unpause(tc.owner)
      );
      assert(err.logs[2].includes("InvalidAuthority"));

      await tc.verifyTokenMinterState(tokenMinterExpected);
    });

    it("success", async () => {
      await tc.unpause();

      tokenMinterExpected.paused = false;

      await tc.verifyTokenMinterState(tokenMinterExpected);
    });

    it("fails when already unpaused", async () => {
      const err = await tc.ensureFails(
        tc.unpause()
      );
      assert(err.logs[2].includes("InvalidTokenMinterState"));

      await tc.verifyTokenMinterState(tokenMinterExpected);
    });
  });

  describe("addLocalToken", () => {
    it("fails when signer != tokenController", async () => {
      const err = await tc.ensureFails(
        tc.addLocalToken(tc.pauser)
      );
      assert(err.logs[10].includes("InvalidAuthority"));

      // Verify the local token doesn't exist
      await tc.ensureFails(
        tc.program.account.localToken.fetch(tc.localToken.publicKey)
      );
    });

    it("success", async () => {
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

    it("fails when local_token already exists with same localTokenMint", async () => {
      const err = await tc.ensureFails(
        tc.addLocalToken()
      );
      assert(err.logs[3].includes("already in use"));
    });
  });

  describe("removeLocalToken", () => {
    it("success", async () => {
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

      // Validate balance is > 0 so we can test that we burn the funds
      const beforeTokenBalance = Number((await spl.getAccount(tc.provider.connection, tc.custodyTokenAccount.publicKey)).amount);
      expect(beforeTokenBalance).to.be.greaterThan(0);
      
      await tc.removeLocalToken();
      
      // Account is now closed so we can't fetch it
      await tc.ensureFails(
        spl.getAccount(tc.provider.connection, tc.custodyTokenAccount.publicKey)
      );
      await tc.ensureFails(
        tc.program.account.localToken.fetch(tc.localToken.publicKey)
      );

      await tc.addLocalToken();
    });
  });

  describe("setMaxBurnAmountPerMessage", () => {
    it("success", async () => {
      await tc.setMaxBurnAmountPerMessage(new BN(100));

      localTokenExpected.burnLimitPerMessage = new BN(100);

      const localToken = await tc.program.account.localToken.fetch(
        tc.localToken.publicKey
      );
      expect(JSON.stringify(localToken)).to.equal(
        JSON.stringify(localTokenExpected)
      );
    });
  });

  describe("linkTokenPair", () => {
    it("success", async () => {
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
  });

  describe("unlinkTokenPair", () => {
    it("success", async () => {
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
  });

  describe("Denylist", () => {
    it("should succeed adding on multiple accounts to denylist", async () => {
      const signature = await tc.denylistAccount(
        tc.denylistedAccount.publicKey
      );
      const secondaryDenylistedAccount = Keypair.generate();
      await tc.denylistAccount(secondaryDenylistedAccount.publicKey);

      const events = await tc.readEvents(signature, [tc.program]);
      const denylistedEvent = tc.getEvent(
        events,
        tc.program.programId,
        "denylisted"
      );

      const denylistedPDAs = await tc.program.account.denylistedAccount.all();
      expect(denylistedPDAs.length).to.equal(2);
      
      const expectedDenylistedPDA1 = await tc.findProgramAddress("denylist_account", [tc.denylistedAccount.publicKey]);
      const expectedDenylistedPDA2 = await tc.findProgramAddress("denylist_account", [secondaryDenylistedAccount.publicKey]);
      const denylistedPDAPublicKeys = denylistedPDAs.map((pda) => pda.publicKey.toString());
      const denylistedPDAAccounts = denylistedPDAs.map((pda) => pda.account.account.toString());
      expect(denylistedPDAPublicKeys).to.include(expectedDenylistedPDA1.publicKey.toString());
      expect(denylistedPDAPublicKeys).to.include(expectedDenylistedPDA2.publicKey.toString());
      expect(denylistedPDAAccounts).to.include(tc.denylistedAccount.publicKey.toString());
      expect(denylistedPDAAccounts).to.include(secondaryDenylistedAccount.publicKey.toString());

      const expectedEvent = {
        account: tc.denylistedAccount.publicKey,
      };
      expect(JSON.stringify(denylistedEvent)).to.equal(
        JSON.stringify(expectedEvent)
      );

      await tc.undenylistAccount(secondaryDenylistedAccount.publicKey);
      const denylistedPDAsAfter = await tc.program.account.denylistedAccount.all();
      expect(denylistedPDAsAfter.length).to.equal(1);
    });

    it("should fail on adding same account to denylist", async () => {
      await tc.ensureFails(tc.denylistAccount(tc.denylistedAccount.publicKey));
    });

    it("should succeed on removing account from denylist", async () => {
      const signature = await tc.undenylistAccount(
        tc.denylistedAccount.publicKey
      );

      const events = await tc.readEvents(signature, [tc.program]);
      const unDenylistedEvent = tc.getEvent(
        events,
        tc.program.programId,
        "unDenylisted"
      );

      const expectedEvent = {
        account: tc.denylistedAccount.publicKey,
      };
      expect(JSON.stringify(unDenylistedEvent)).to.equal(
        JSON.stringify(expectedEvent)
      );

      const denylistedPDAsAfter = await tc.program.account.denylistedAccount.all();
      expect(denylistedPDAsAfter.length).to.equal(0);
    });

    it("should fail on removing non existing account from denylist", async () => {
      await tc.ensureFails(
        tc.undenylistAccount(tc.denylistedAccount.publicKey)
      );
    });

    it("should fail on updating the denylister to the same account", async () => {
      await tc.ensureFails(tc.updateDenylister(tc.denylister.publicKey));
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

      await tc.verifyTokenMessengerState(tokenMessengerExpected);

      const expectedEvent = {
        oldDenylister: tc.denylister.publicKey,
        newDenylister: newDenylister,
      };
      expect(JSON.stringify(updatedDenylistedEvent)).to.equal(
        JSON.stringify(expectedEvent)
      );

      tokenMessengerExpected.denylister = tc.denylister.publicKey;
      await tc.updateDenylister(tc.denylister.publicKey);
    });

    it("should fail on executing depositForBurn with denylisted account", async () => {
      await tc.denylistAccount(tc.user.publicKey);
      let err = await tc.ensureFails(
        tc.depositForBurn(
          new BN(20),
          remoteDomain,
          mintRecipient,
          Keypair.generate(),
        )
      );
      expect(err.error.errorCode.code).to.equal("DenylistedAccount");
      err = await tc.ensureFails(
        tc.depositForBurnWithHook(
          new BN(20),
          remoteDomain,
          mintRecipient,
          Keypair.generate(),
          Buffer.from([1, 2, 3]),
        )
      );
      expect(err.error.errorCode.code).to.equal("DenylistedAccount");
      
      await tc.undenylistAccount(tc.user.publicKey);
    });
  });

  describe("depositForBurn", () => {
    it("fails when local domain = destination domain", async () => {
      const messageSentEventAccountKeypair = Keypair.generate();

      await tc.ensureFails(
        tc.depositForBurn(
          new BN(20),
          5,
          mintRecipient,
          messageSentEventAccountKeypair
        )
      );
    });
    
    it("success", async () => {
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
        messageSentEventAccountKeypair
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
      ) as AccountInfo<Buffer>;
      expect(JSON.stringify(accountInfo.owner)).to.equal(
        JSON.stringify(tc.messageTransmitterProgram.programId)
      );
      expect(accountInfo.data.length).to.equal(428);

      expect(await tc.isNonceUsed(messageNonce)).to.be.false;
    });
  });

  describe("depositForBurnWithCaller", () => {
    it("success", async () => {
      const messageSentEventAccountKeypair = Keypair.generate();

    const signature = await tc.depositForBurn(
      new BN(20),
      remoteDomain,
      mintRecipient,
      messageSentEventAccountKeypair,
      undefined,
      undefined,
      destinationCaller
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
  });

  describe("depositForBurnWithHook", () => {
    it("success", async () => {
      const messageSentEventAccountKeypair = Keypair.generate();
      const hookData = Buffer.from("example hook data");

      const signature = await tc.depositForBurnWithHook(
        new BN(20),
        remoteDomain,
        mintRecipient,
        messageSentEventAccountKeypair,
        hookData
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
  });

  describe("Fees", () => {
    it("setFeeRecipient should successfully set the fee recipient", async () => {
      const newFeeRecipient = Keypair.generate();
      const signature = await tc.setFeeRecipient(newFeeRecipient.publicKey);

      const events = await tc.readEvents(signature, [tc.program]);
      const feeRecipientSetEvent = tc.getEvent(
        events,
        tc.program.programId,
        "feeRecipientSet"
      );

      tokenMessengerExpected.feeRecipient = newFeeRecipient.publicKey;
      await tc.verifyTokenMessengerState(tokenMessengerExpected);

      const expectedEvent = {
        newFeeRecipient: newFeeRecipient.publicKey,
      };
      expect(JSON.stringify(feeRecipientSetEvent)).to.equal(
        JSON.stringify(expectedEvent)
      );

      tokenMessengerExpected.feeRecipient = tc.feeRecipient.publicKey;
      await tc.setFeeRecipient(tc.feeRecipient.publicKey);
    });

    it("setFeeRecipient should fail on setting fee recipient when not the owner", async () => {
      const newFeeRecipient = Keypair.generate();
      const notOwner = Keypair.generate();

      // Signs with notOwner
      // Sets owner context to notOwner
      const err = await tc.ensureFails(tc.setFeeRecipient(newFeeRecipient.publicKey, notOwner));
      assert(err.logs[2].includes("Invalid authority"));
    });

    it("setMinFeeController should successfully set minFeeController", async () => {
      const newMinFeeController = Keypair.generate();
      const signature = await tc.setMinFeeController(newMinFeeController.publicKey);

      const events = await tc.readEvents(signature, [tc.program]);
      const minFeeControllerSetEvent = tc.getEvent(
        events,
        tc.program.programId,
        "minFeeControllerSet"
      );

      tokenMessengerExpected.minFeeController = newMinFeeController.publicKey;
      await tc.verifyTokenMessengerState(tokenMessengerExpected);

      const expectedEvent = {
        newMinFeeController: newMinFeeController.publicKey,
      };
      expect(JSON.stringify(minFeeControllerSetEvent)).to.equal(
        JSON.stringify(expectedEvent)
      );

      tokenMessengerExpected.minFeeController = tc.minFeeController.publicKey;
      await tc.setMinFeeController(tc.minFeeController.publicKey);
    });

    it("setMinFeeController should fail on setting minFeeController when not the owner", async () => {
      const newMinFeeController = Keypair.generate();
      const notOwner = Keypair.generate();

      // Signs with notOwner
      const err = await tc.ensureFails(
        tc.setMinFeeController(newMinFeeController.publicKey, notOwner)
      );
      assert(err.toString().includes("InvalidAuthority"));
    });

    it("setMinFee should successfully set minFee", async () => {
      const newMinFee = 1000;
      const signature = await tc.setMinFee(newMinFee);

      const events = await tc.readEvents(signature, [tc.program]);
      const minFeeSetEvent = tc.getEvent(
        events,
        tc.program.programId,
        "minFeeSet"
      );

      tokenMessengerExpected.minFee = newMinFee;
      await tc.verifyTokenMessengerState(tokenMessengerExpected);

      const expectedEvent = {
        newMinFee: newMinFee,
      };
      expect(JSON.stringify(minFeeSetEvent)).to.equal(
        JSON.stringify(expectedEvent)
      );
    });

    it("setMinFee should fail on setting minFee when not the minFeeController", async () => {
      const newMinFee = 1000;
      const notMinFeeController = Keypair.generate();

      // Signs with notMinFeeController
      const err = await tc.ensureFails(
        tc.setMinFee(newMinFee, notMinFeeController)
      );
      assert(err.toString().includes("InvalidAuthority"));
    });

    it("setMinFee should fail on setting invalid minFee", async () => {
      const tooLowErr = await tc.ensureFails(
        tc.setMinFee(-1)
      );
      assert(tooLowErr.toString().includes("ERR_OUT_OF_RANGE"));
      const tooHighErr = await tc.ensureFails(
        tc.setMinFee(10_000_000)
      );
      assert(tooHighErr.logs[2].includes("Min fee too high"));
    });

    it("depositForBurn should successfully enforce minFee", async () => {
      const messageSentEventAccountKeypair = Keypair.generate();

      const signature = await tc.depositForBurn(
        new BN(20),
        remoteDomain,
        mintRecipient,
        messageSentEventAccountKeypair,
        undefined,
        new BN(1),
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
        maxFee: "1",
        minFinalityThreshold: 2000,
        hookData: Buffer.from([]),
      };
      expect(JSON.stringify(depositForBurn)).to.equal(
        JSON.stringify(depositForBurnExpected)
      );

      // Should fail is maxFee is too low
      const newMessageSentEventAccountKeypair = Keypair.generate();
      await tc.ensureFails(
        tc.depositForBurn(
          new BN(20),
          remoteDomain,
          mintRecipient,
          newMessageSentEventAccountKeypair,
          undefined,
          new BN(0)
        )
      );
    });

    it("setMinFee should successfully unset minFee", async () => {
      const newMinFee = 0;
      const signature = await tc.setMinFee(newMinFee);

      const events = await tc.readEvents(signature, [tc.program]);
      const minFeeSetEvent = tc.getEvent(
        events,
        tc.program.programId,
        "minFeeSet"
      );

      tokenMessengerExpected.minFee = newMinFee;
      await tc.verifyTokenMessengerState(tokenMessengerExpected);

      const expectedEvent = {
        newMinFee: newMinFee,
      };
      expect(JSON.stringify(minFeeSetEvent)).to.equal(
        JSON.stringify(expectedEvent)
      );
    });
  })

  describe("receiveMessage", () => {
    it("finalized - success", async () => {
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
        sourceDomain: remoteDomain,
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
      feeCollected: "0",
      };
      expect(JSON.stringify(mintAndWithdraw)).to.equal(
        JSON.stringify(mintAndWithdrawExpected)
      );

      localTokenExpected = {
        custody: tc.custodyTokenAccount.publicKey,
        mint: tc.localTokenMint.publicKey,
        burnLimitPerMessage: "100",
        messagesSent: "4",
        messagesReceived: String(Number(localTokenExpected.messagesReceived) + 1),
        amountSent: "80",
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

    it("unfinalized - success", async () => {
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
      let messageNonce2 = Buffer.from(
      "a99ca1348591db5efaafe71d20f08bc97f4ca01c2dec23a94736a0bb9f21c3f0",
      "hex"
    );
      const unfinalizedMessage = tc.createBurnMessage(
        messageVersion,
        remoteDomain,
        localDomain,
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
          tc.attest(unfinalizedMessage, [
          attesterPrivateKey1,
          attesterPrivateKey2,
        ])
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
        sourceDomain: remoteDomain,
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
      feeCollected: "0",
      };
      expect(JSON.stringify(mintAndWithdraw)).to.equal(
        JSON.stringify(mintAndWithdrawExpected)
      );

      localTokenExpected = {
        custody: tc.custodyTokenAccount.publicKey,
        mint: tc.localTokenMint.publicKey,
        burnLimitPerMessage: "100",
        messagesSent: "4",
        messagesReceived: String(Number(localTokenExpected.messagesReceived) + 1),
        amountSent: "80",
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
  });

  describe("endToEnd", () => {
    it("success", async () => {
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
        "hex"
      );
      messageBytes.write(
        padStartZero(BigInt(expirationBlock).toString(16), 64),
        148 + 196,
        32,
        "hex"
      );
      
      // replace source domain with remote domain
      messageBytes.writeUInt32BE(remoteDomain, 4);

      // replace destination domain with local domain
      messageBytes.writeUInt32BE(localDomain, 8);

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
      amount: (messageAmount - feeExecuted).toString(),
      mintToken: tc.localTokenMint.publicKey,
      feeCollected: "1",
    };
    expect(JSON.stringify(mintAndWithdraw)).to.equal(
      JSON.stringify(mintAndWithdrawExpected)
    );

      localTokenExpected = {
        custody: tc.custodyTokenAccount.publicKey,
        mint: tc.localTokenMint.publicKey,
        burnLimitPerMessage: "100",
        messagesSent: "5",
        messagesReceived: String(Number(localTokenExpected.messagesReceived) + 1),
        amountSent: "100",
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

      // Fails for incorrect signer
      await tc.ensureFails(
        tc.reclaimEventAccount(
          tc.owner,
          combinedSignedMessageBytes,
          messageBytes,
          messageSentEventAccountKeypair.publicKey
        )
      );
      // Fails for EventAccountWindowNotExpired
      await tc.ensureFails(
        tc.reclaimEventAccount(
          tc.owner,
          combinedSignedMessageBytes,
          messageBytes,
          messageSentEventAccountKeypair.publicKey
        )
      );

      // TODO: Move to litesvm so we can move forward in time and test successful reclaimEventAccount call.
      // await tc.reclaimEventAccount(
      //   tc.user,
      //   combinedSignedMessageBytes,
      //   messageBytes,
      //   messageSentEventAccountKeypair.publicKey
      // );

      // await tc.ensureFails(
      //   tc.messageTransmitterProgram.account.messageSent.fetch(
      //     messageSentEventAccountKeypair.publicKey
      //   )
      // );

      // expect(
      //   await tc.provider.connection.getBalance(tc.user.publicKey)
      // ).to.greaterThan(initialBalance);
    });
  });

  describe("burnTokenCustody", () => {
    it("success", async () => {
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
});
