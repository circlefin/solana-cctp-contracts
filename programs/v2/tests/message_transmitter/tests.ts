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
import { Keypair, PublicKey, VOTE_PROGRAM_ID } from "@solana/web3.js";
import { expect, assert } from "chai";
import * as ethutil from "ethereumjs-util";
import BN from "bn.js";
import { TOKEN_PROGRAM_ID } from "@solana/spl-token";

describe("message_transmitter_v2", () => {
  let tc = new TestClient();

  let messageTransmitterExpected;

  const localDomain = 123;
  const version = 1;

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
        tc.initialize(localDomain, attester1, new BN(200), version, undefined, tc.pauser)
      );
      assert(err.logs[4].includes("ConstraintRaw"));
    });

    it("fails when called with invalid program data", async () => {
      // try calling with token messenger program data
      const incorrectProgramData = PublicKey.findProgramAddressSync(
        [new PublicKey("CCTPV2vPZJS2u2BBsUoscuikbYjnpFmbFsvVuJdgUMQe").toBuffer()],
        new PublicKey("BPFLoaderUpgradeab1e11111111111111111111111")
      )[0];

      const err = await tc.ensureFails(
        tc.initialize(localDomain, attester1, new BN(200), version, incorrectProgramData)
      );
      assert(err.logs[4].includes("InvalidProgramExecutable"));
    });

    it("success", async () => {
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
      };
  
      await tc.verifyState(messageTransmitterExpected);
    });
  });

  describe("transferOwnership", () => {
    it("fails when signer != owner", async () => {
      // try to transfer from pauser
      const err = await tc.ensureFails(
        tc.transferOwnership(tc.attesterManager.publicKey, tc.pauser)
      );
      assert(err.logs[2].includes("InvalidAuthority"));

      await tc.verifyState(messageTransmitterExpected);
    });

    it("fails when new_owner = null", async () => {
      // try to transfer to null
      const err = await tc.ensureFails(
        tc.transferOwnership(PublicKey.default, tc.provider.wallet.payer)
      );
      assert(err.logs[2].includes("InvalidOwner"));

      await tc.verifyState(messageTransmitterExpected);
    });

    it("fails when old_owner = new_owner", async () => {
      // try to transfer to old owner
      const err = await tc.ensureFails(
        tc.transferOwnership(tc.provider.wallet.publicKey, tc.provider.wallet.payer)
      );
      assert(err.logs[2].includes("InvalidOwner"));

      await tc.verifyState(messageTransmitterExpected);
    });

    it("pending_owner = new_owner fails", async () => {
      // start transfer to pauser
      await tc.transferOwnership(tc.pauser.publicKey, tc.provider.wallet.payer);
      // try to transfer to pauser again
      const err = await tc.ensureFails(
        tc.transferOwnership(tc.pauser.publicKey, tc.provider.wallet.payer)
      );
      assert(err.logs[2].includes("InvalidOwner"));
      
      await tc.verifyState({...messageTransmitterExpected, pendingOwner: tc.pauser.publicKey});
    });

    it("success", async () => {
      const signature = await tc.transferOwnership(tc.owner.publicKey, tc.provider.wallet.payer);
      const events = await tc.readEvents(signature, [tc.program]);
      const ownershipTransferStarted = tc.getEvent(
        events,
        tc.program.programId,
        "ownershipTransferStarted"
      );

      messageTransmitterExpected.pendingOwner = tc.owner.publicKey;

      await tc.verifyState(messageTransmitterExpected);

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

      await tc.verifyState(messageTransmitterExpected);
    });

    it("success", async () => {
      const signature = await tc.acceptOwnership(tc.owner);

      const events = await tc.readEvents(signature, [tc.program]);
      const ownershipTransferred = tc.getEvent(
        events,
        tc.program.programId,
        "ownershipTransferred"
      );

      messageTransmitterExpected.owner = tc.owner.publicKey;
      messageTransmitterExpected.pendingOwner = PublicKey.default;

      await tc.verifyState(messageTransmitterExpected);

      const eventExpected = {
        previousOwner: tc.provider.wallet.publicKey,
        newOwner: tc.owner.publicKey,
      };
      expect(JSON.stringify(ownershipTransferred)).to.equal(
        JSON.stringify(eventExpected)
      );
    });
  });

  describe("updatePauser", () => {
    it("fails when signer != owner", async () => {
      const err = await tc.ensureFails(
        tc.updatePauser(tc.pauser.publicKey, tc.pauser)
      );
      assert(err.logs[2].includes("InvalidAuthority"));
      await tc.verifyState(messageTransmitterExpected);
    });

    it("fails when new_pauser = null", async () => {
      const err = await tc.ensureFails(
        tc.updatePauser(PublicKey.default)
      );
      assert(err.logs[2].includes("InvalidPauser"));
      await tc.verifyState(messageTransmitterExpected);
    });

    it("success", async () => {
      await tc.updatePauser(tc.pauser.publicKey);

      messageTransmitterExpected.pauser = tc.pauser.publicKey;

      await tc.verifyState(messageTransmitterExpected);
    });

    it("fails when old_pauser = new_pauser", async () => {
      const err = await tc.ensureFails(
        tc.updatePauser(tc.pauser.publicKey)
      );
      assert(err.logs[2].includes("InvalidPauser"));
      await tc.verifyState(messageTransmitterExpected);
    });
  });

  describe("updateAttesterManager", () => {
    it("fails when signer != owner", async () => {
      const err = await tc.ensureFails(
        tc.updateAttesterManager(tc.attesterManager.publicKey, tc.pauser)
      );
      assert(err.logs[2].includes("InvalidAuthority"));
      await tc.verifyState(messageTransmitterExpected);
    });

    it("fails when new_manager = null", async () => {
      const err = await tc.ensureFails(
        tc.updateAttesterManager(PublicKey.default)
      );
      assert(err.logs[2].includes("InvalidAttesterManager"));
      await tc.verifyState(messageTransmitterExpected);
    });

    it("success", async () => {
      await tc.updateAttesterManager(tc.attesterManager.publicKey);
      messageTransmitterExpected.attesterManager = tc.attesterManager.publicKey;
      await tc.verifyState(messageTransmitterExpected);
    });

    it("fails when old_manager = new_manager", async () => {
      const err = await tc.ensureFails(
        tc.updateAttesterManager(tc.attesterManager.publicKey)
      );
      assert(err.logs[2].includes("InvalidAttesterManager"));
      await tc.verifyState(messageTransmitterExpected);
    });
  });

  describe("pause", () => {
    it("fails when signer != pauser", async () => {
      const err = await tc.ensureFails(
        tc.pause(tc.owner)
      );
      assert(err.logs[2].includes("InvalidAuthority"));
      await tc.verifyState(messageTransmitterExpected);
    });
    
    it("success", async () => {
      await tc.pause();
      messageTransmitterExpected.paused = true;
      await tc.verifyState(messageTransmitterExpected);
    });

    it("fails when already paused", async () => {
      const err = await tc.ensureFails(
        tc.pause()
      );
      assert(err.logs[2].includes("InvalidMessageTransmitterState"));
      await tc.verifyState(messageTransmitterExpected);
    });
  });

  describe("unpause", () => {
    it("fails when signer != pauser", async () => {
      const err = await tc.ensureFails(
        tc.unpause(tc.owner)
      );
      assert(err.logs[2].includes("InvalidAuthority"));
      await tc.verifyState(messageTransmitterExpected);
    });

    it("success", async () => {
      await tc.unpause();
      messageTransmitterExpected.paused = false;
      await tc.verifyState(messageTransmitterExpected);
    });

    it("fails when already unpaused", async () => {
      const err = await tc.ensureFails(
        tc.unpause()
      );
      assert(err.logs[2].includes("InvalidMessageTransmitterState"));
      await tc.verifyState(messageTransmitterExpected);
    });
  });

  describe("setMaxMessageBodySize", () => {
    it("fails when signer != owner", async () => {
      const err = await tc.ensureFails(
        tc.setMaxMessageBodySize(new BN(300), tc.pauser)
      );
      assert(err.logs[2].includes("InvalidAuthority"));
      await tc.verifyState(messageTransmitterExpected);
    });
    
    it("success", async () => {
      await tc.setMaxMessageBodySize(new BN(300));
      messageTransmitterExpected.maxMessageBodySize = new BN(300);
      await tc.verifyState(messageTransmitterExpected);
    });
  });

  describe("enableAttester", () => {
    it("fails when signer != attester manager", async () => {
        const err = await tc.ensureFails(
          tc.enableAttester(attester2, tc.owner)
        );
        assert(err.logs[4].includes("InvalidAuthority"));
        await tc.verifyState(messageTransmitterExpected);
    });

    it("fails if attester = null", async () => {
      const err = await tc.ensureFails(
        tc.enableAttester(PublicKey.default)
      );
      assert(err.logs[4].includes("InvalidAttester"));
      await tc.verifyState(messageTransmitterExpected);
    });

    it("success", async () => {
      await tc.enableAttester(attester2);
      messageTransmitterExpected.enabledAttesters = [attester1, attester2];
      await tc.verifyState(messageTransmitterExpected);
    });

    it("fails if attester already enabled", async () => {
      const err = await tc.ensureFails(
        tc.enableAttester(attester2)
      );
      assert(err.logs[4].includes("AttesterAlreadyEnabled"));
      await tc.verifyState(messageTransmitterExpected);
    });
  });

  describe("setSignatureThreshold", () => {
    it("success", async () => {
      await tc.setSignatureThreshold(2);

      messageTransmitterExpected.signatureThreshold = 2;

      await tc.verifyState(messageTransmitterExpected);
    });
  });

  describe("disableAttester", () => {
    it("fails when signer != attester manager", async () => {
        const err = await tc.ensureFails(
          tc.disableAttester(attester2, tc.owner)
        );
        assert(err.logs[2].includes("InvalidAuthority"));
        await tc.verifyState(messageTransmitterExpected);
    });

    it("fails if attester not enabled", async () => {
      // add an attester so we can disable an attester without going below the threshold
      const attester3Key = Buffer.from(
        "aaaaaae6a58e4c03f4e2c68721e2f0d3ee246482cf13edb1533a547490feeaaa",
        "hex"
      );
      const attester3 = new PublicKey(
        ethutil.privateToAddress(attester3Key)
      );
      await tc.enableAttester(attester3);

      const fakeAttesterKey = Buffer.from(
        "aaacf3e6a58e4c03f4e2c68721e2f0d3ee246482cf13edb1533a547490feeaaa",
        "hex"
      );
      const fakeAttester = new PublicKey(
        ethutil.privateToAddress(fakeAttesterKey)
      );
      const err = await tc.ensureFails(
        tc.disableAttester(fakeAttester)
      );
      assert(err.logs[2].includes("AttesterAlreadyDisabled"));
      
      // cleanup
      await tc.disableAttester(attester3);
      await tc.verifyState(messageTransmitterExpected);
    });

    it("fails if only one attester enabled", async () => {
      // set sig threshold to 1 and disable attester1 so we only have attester2 enabled
      await tc.setSignatureThreshold(1);
      await tc.disableAttester(attester1);
      
      const err = await tc.ensureFails(
        tc.disableAttester(attester1)
      );
      assert(err.logs[2].includes("TooFewEnabledAttesters"));

      // cleanup 
      await tc.enableAttester(attester1);
      await tc.setSignatureThreshold(2);
      // order matters
      messageTransmitterExpected.enabledAttesters = [attester2, attester1];
      await tc.verifyState(messageTransmitterExpected);
    });

    it("fails if signature threshold would be too low", async () => {
      const err = await tc.ensureFails(
        tc.disableAttester(attester1)
      );
      assert(err.logs[2].includes("SignatureThresholdTooLow"));
      await tc.verifyState(messageTransmitterExpected);
    });

    it("success", async () => {
      await tc.setSignatureThreshold(1);
      await tc.disableAttester(attester2);

      messageTransmitterExpected.signatureThreshold = 1;
      messageTransmitterExpected.enabledAttesters = [attester1];

      await tc.verifyState(messageTransmitterExpected);

      await tc.enableAttester(attester2);
      await tc.setSignatureThreshold(2);
      await tc.updateAttesterManager(tc.provider.wallet.publicKey);
    });
  });
});
