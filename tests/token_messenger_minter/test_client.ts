import * as anchor from "@coral-xyz/anchor";
import * as ethutil from "ethereumjs-util";
import { TokenMessengerMinter } from "../../target/types/token_messenger_minter";
import { MessageTransmitter } from "../../target/types/message_transmitter";
import { PublicKey, Keypair, SystemProgram } from "@solana/web3.js";
import * as spl from "@solana/spl-token";
import BN from "bn.js";

const SIGNATURE_LENGTH = 65;

export class TestClient {
  owner: Keypair;
  pauser: Keypair;
  tokenController: Keypair;
  localTokenMint: Keypair;
  user: Keypair;

  provider: anchor.AnchorProvider;
  program: anchor.Program<TokenMessengerMinter>;
  messageTransmitterProgram: anchor.Program<MessageTransmitter>;
  printErrors: boolean;

  authorityPda: { publicKey: PublicKey; bump: number };
  messageTransmitter: { publicKey: PublicKey; bump: number };
  tokenMessenger: { publicKey: PublicKey; bump: number };
  tokenMinter: { publicKey: PublicKey; bump: number };
  localToken: { publicKey: PublicKey; bump: number };
  custodyTokenAccount: { publicKey: PublicKey; bump: number };
  userTokenAccount: PublicKey;

  constructor() {
    this.provider = anchor.AnchorProvider.env();
    anchor.setProvider(this.provider);
    this.program = anchor.workspace
      .TokenMessengerMinter as anchor.Program<TokenMessengerMinter>;
    this.messageTransmitterProgram = anchor.workspace
      .MessageTransmitter as anchor.Program<MessageTransmitter>;
    this.printErrors = false;

    anchor.BN.prototype.toJSON = function () {
      return this.toString(10);
    };
  }

  initFixture = async () => {
    this.owner = Keypair.generate();
    this.pauser = Keypair.generate();
    this.tokenController = Keypair.generate();
    this.localTokenMint = Keypair.generate();
    this.user = Keypair.generate();

    // pdas
    this.authorityPda = this.findProgramAddress("sender_authority");
    this.messageTransmitter = this.findProgramAddress(
      "message_transmitter",
      null,
      this.messageTransmitterProgram.programId
    );
    this.tokenMessenger = this.findProgramAddress("token_messenger");
    this.tokenMinter = this.findProgramAddress("token_minter");
    this.localToken = this.findProgramAddress("local_token", [
      this.localTokenMint.publicKey,
    ]);
    this.custodyTokenAccount = this.findProgramAddress("custody", [
      this.localTokenMint.publicKey,
    ]);

    await this.provider.connection.requestAirdrop(this.user.publicKey, 1e9);
    await this.provider.connection.confirmTransaction(
      await this.provider.connection.requestAirdrop(this.owner.publicKey, 1e9)
    );

    await spl.createMint(
      this.provider.connection,
      this.owner,
      this.owner.publicKey,
      null,
      9,
      this.localTokenMint
    );

    this.userTokenAccount = await spl.createAssociatedTokenAccount(
      this.provider.connection,
      this.user,
      this.localTokenMint.publicKey,
      this.user.publicKey
    );

    await spl.mintToChecked(
      this.provider.connection,
      this.owner,
      this.localTokenMint.publicKey,
      this.userTokenAccount,
      this.owner,
      1000,
      9
    );
  };

  findProgramAddress = (
    label: string,
    extraSeeds = null,
    program = this.program.programId
  ) => {
    let seeds = [Buffer.from(anchor.utils.bytes.utf8.encode(label))];
    if (extraSeeds) {
      for (let extraSeed of extraSeeds) {
        if (typeof extraSeed === "string") {
          seeds.push(Buffer.from(anchor.utils.bytes.utf8.encode(extraSeed)));
        } else if (Array.isArray(extraSeed)) {
          seeds.push(Buffer.from(extraSeed));
        } else if (Buffer.isBuffer(extraSeed)) {
          seeds.push(extraSeed);
        } else {
          seeds.push(extraSeed.toBuffer());
        }
      }
    }
    let res = PublicKey.findProgramAddressSync(seeds, program);
    return { publicKey: res[0], bump: res[1] };
  };

  ensureFails = async (promise, message = null) => {
    try {
      await promise;
    } catch (err) {
      return err;
    }
    throw new Error(message ? message : "Call should've failed");
  };

  // Convert a hex string to a byte array
  hexToBytes = (hex: string) => {
    let bytes = [];
    for (let c = 0; c < hex.length; c += 2)
      bytes.push(parseInt(hex.substr(c, 2), 16));
    return bytes;
  };

  scheduleEvent = (eventName: string, program = this.program) => {
    let listener = null;
    let event = new Promise((resolve, _reject) => {
      listener = program.addEventListener(eventName, (event, _slot) => {
        resolve(event);
      });
    });
    return [event, listener];
  };

  ///////
  // instructions

  initialize = async (
    tokenController: PublicKey,
    messageBodyVersion: number
  ) => {
    let programData = PublicKey.findProgramAddressSync(
      [this.program.programId.toBuffer()],
      new PublicKey("BPFLoaderUpgradeab1e11111111111111111111111")
    )[0];

    await this.program.methods
      .initialize({
        tokenController,
        localMessageTransmitter: this.messageTransmitterProgram.programId,
        messageBodyVersion,
      })
      .accounts({
        upgradeAuthority: this.provider.wallet.publicKey,
        authorityPda: this.authorityPda.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
        tokenMessengerMinterProgramData: programData,
        tokenMessengerMinterProgram: this.program.programId,
        systemProgram: SystemProgram.programId,
      })
      .rpc();
  };

  transferOwnership = async (newOwner: PublicKey) => {
    let currentOwner = (
      await this.program.account.tokenMessenger.fetch(
        this.tokenMessenger.publicKey
      )
    ).owner;

    await this.program.methods
      .transferOwnership({ newOwner })
      .accounts({
        owner: currentOwner,
        tokenMessenger: this.tokenMessenger.publicKey,
      })
      .signers(currentOwner == this.owner.publicKey ? [this.owner] : [])
      .rpc();
  };

  acceptOwnership = async (newOwner: Keypair) => {
    await this.program.methods
      .acceptOwnership({})
      .accounts({
        pendingOwner: this.owner.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
      })
      .signers([newOwner])
      .rpc();
    this.owner = newOwner;
  };

  addRemoteTokenMessenger = async (
    domain: number,
    tokenMessenger: PublicKey
  ) => {
    let remoteTokenMessenger = this.findProgramAddress(
      "remote_token_messenger",
      [domain.toString()]
    ).publicKey;
    await this.program.methods
      .addRemoteTokenMessenger({ domain, tokenMessenger })
      .accounts({
        owner: this.owner.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
        remoteTokenMessenger,
        systemProgram: SystemProgram.programId,
      })
      .signers([this.owner])
      .rpc();
  };

  removeRemoteTokenMessenger = async (domain: number) => {
    let remoteTokenMessenger = this.findProgramAddress(
      "remote_token_messenger",
      [domain.toString()]
    ).publicKey;
    await this.program.methods
      .removeRemoteTokenMessenger({})
      .accounts({
        owner: this.owner.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
        remoteTokenMessenger,
      })
      .signers([this.owner])
      .rpc();
  };

  updatePauser = async (newPauser: PublicKey) => {
    await this.program.methods
      .updatePauser({ newPauser })
      .accounts({
        owner: this.owner.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
      })
      .signers([this.owner])
      .rpc();
  };

  setTokenController = async (tokenController: PublicKey) => {
    await this.program.methods
      .setTokenController({ tokenController })
      .accounts({
        owner: this.owner.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
      })
      .signers([this.owner])
      .rpc();
  };

  pause = async () => {
    await this.program.methods
      .pause({})
      .accounts({
        pauser: this.pauser.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
      })
      .signers([this.pauser])
      .rpc();
  };

  unpause = async () => {
    await this.program.methods
      .unpause({})
      .accounts({
        pauser: this.pauser.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
      })
      .signers([this.pauser])
      .rpc();
  };

  addLocalToken = async () => {
    await this.program.methods
      .addLocalToken({})
      .accounts({
        tokenController: this.tokenController.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
        localToken: this.localToken.publicKey,
        custodyTokenAccount: this.custodyTokenAccount.publicKey,
        localTokenMint: this.localTokenMint.publicKey,
        tokenProgram: spl.TOKEN_PROGRAM_ID,
        systemProgram: SystemProgram.programId,
      })
      .signers([this.tokenController])
      .rpc();
  };

  removeLocalToken = async () => {
    await this.program.methods
      .removeLocalToken({})
      .accounts({
        tokenController: this.tokenController.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
        localToken: this.localToken.publicKey,
        custodyTokenAccount: this.custodyTokenAccount.publicKey,
        tokenProgram: spl.TOKEN_PROGRAM_ID,
      })
      .signers([this.tokenController])
      .rpc();
  };

  setMaxBurnAmountPerMessage = async (burnLimitPerMessage: BN) => {
    await this.program.methods
      .setMaxBurnAmountPerMessage({ burnLimitPerMessage })
      .accounts({
        tokenController: this.tokenController.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
        localToken: this.localToken.publicKey,
      })
      .signers([this.tokenController])
      .rpc();
  };

  linkTokenPair = async (remoteDomain: number, remoteToken: PublicKey) => {
    let tokenPair = this.findProgramAddress("token_pair", [
      remoteDomain.toString(),
      remoteToken,
    ]);

    await this.program.methods
      .linkTokenPair({
        localToken: this.localToken.publicKey,
        remoteDomain,
        remoteToken,
      })
      .accounts({
        tokenController: this.tokenController.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
        tokenPair: tokenPair.publicKey,
        systemProgram: SystemProgram.programId,
      })
      .signers([this.tokenController])
      .rpc();
  };

  unlinkTokenPair = async (remoteDomain: number, remoteToken: PublicKey) => {
    let tokenPair = this.findProgramAddress("token_pair", [
      remoteDomain.toString(),
      remoteToken,
    ]);

    await this.program.methods
      .unlinkTokenPair({ remoteDomain, remoteToken })
      .accounts({
        tokenController: this.tokenController.publicKey,
        tokenMinter: this.tokenMinter.publicKey,
        tokenPair: tokenPair.publicKey,
      })
      .signers([this.tokenController])
      .rpc();
  };

  depositForBurn = async (
    amount: BN,
    destinationDomain: number,
    mintRecipient: PublicKey
  ) => {
    let remoteTokenMessenger = this.findProgramAddress(
      "remote_token_messenger",
      [destinationDomain.toString()]
    ).publicKey;
    await this.program.methods
      .depositForBurn({
        amount,
        destinationDomain,
        mintRecipient,
      })
      .accounts({
        owner: this.user.publicKey,
        senderAuthorityPda: this.authorityPda.publicKey,
        burnTokenAccount: this.userTokenAccount,
        messageTransmitter: this.messageTransmitter.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
        remoteTokenMessenger,
        tokenMinter: this.tokenMinter.publicKey,
        localToken: this.localToken.publicKey,
        burnTokenMint: this.localTokenMint.publicKey,
        messageTransmitterProgram: this.messageTransmitterProgram.programId,
        tokenMessengerMinterProgram: this.program.programId,
        tokenProgram: spl.TOKEN_PROGRAM_ID,
      })
      .signers([this.user])
      .rpc();
  };

  depositForBurnWithCaller = async (
    amount: BN,
    destinationDomain: number,
    mintRecipient: PublicKey,
    destinationCaller: PublicKey
  ) => {
    let remoteTokenMessenger = this.findProgramAddress(
      "remote_token_messenger",
      [destinationDomain.toString()]
    ).publicKey;
    await this.program.methods
      .depositForBurnWithCaller({
        amount,
        destinationDomain,
        mintRecipient,
        destinationCaller,
      })
      .accounts({
        owner: this.user.publicKey,
        senderAuthorityPda: this.authorityPda.publicKey,
        burnTokenAccount: this.userTokenAccount,
        messageTransmitter: this.messageTransmitter.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
        remoteTokenMessenger,
        tokenMinter: this.tokenMinter.publicKey,
        localToken: this.localToken.publicKey,
        burnTokenMint: this.localTokenMint.publicKey,
        messageTransmitterProgram: this.messageTransmitterProgram.programId,
        tokenMessengerMinterProgram: this.program.programId,
        tokenProgram: spl.TOKEN_PROGRAM_ID,
      })
      .signers([this.user])
      .rpc();
  };

  replaceDepositForBurn = async (
    originalMessage: number[],
    originalAttestation: number[],
    newDestinationCaller: PublicKey,
    newMintRecipient: PublicKey
  ) => {
    await this.program.methods
      .replaceDepositForBurn({
        originalMessage: Buffer.from(originalMessage),
        originalAttestation: Buffer.from(originalAttestation),
        newDestinationCaller,
        newMintRecipient,
      })
      .accounts({
        owner: this.user.publicKey,
        senderAuthorityPda: this.authorityPda.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        tokenMessenger: this.tokenMessenger.publicKey,
        messageTransmitterProgram: this.messageTransmitterProgram.programId,
        tokenMessengerMinterProgram: this.program.programId,
      })
      .signers([this.user])
      .rpc();
  };

  enableAttester = async (newAttester: PublicKey) => {
    await this.messageTransmitterProgram.methods
      .enableAttester({ newAttester })
      .accounts({
        attesterManager: this.provider.wallet.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        systemProgram: SystemProgram.programId,
      })
      .rpc();
  };

  disableAttester = async (attester: PublicKey) => {
    await this.messageTransmitterProgram.methods
      .disableAttester({ attester })
      .accounts({
        attesterManager: this.provider.wallet.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        systemProgram: SystemProgram.programId,
      })
      .rpc();
  };

  setSignatureThreshold = async (newSignatureThreshold: number) => {
    await this.messageTransmitterProgram.methods
      .setSignatureThreshold({ newSignatureThreshold })
      .accounts({
        attesterManager: this.provider.wallet.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .rpc();
  };

  receiveMessage = async (
    remoteDomain: number,
    remoteToken: PublicKey,
    nonce: bigint,
    message: number[],
    attestation: number[]
  ) => {
    let maxNonces = 6400;
    const firstNonce =
      ((nonce - BigInt(1)) / BigInt(maxNonces)) * BigInt(maxNonces) + BigInt(1);
    const usedNonces = this.findProgramAddress(
      "used_nonces",
      [remoteDomain.toString(), firstNonce.toString()],
      this.messageTransmitterProgram.programId
    ).publicKey;

    let authorityPda = this.findProgramAddress(
      "message_transmitter_authority",
      [this.program.programId],
      this.messageTransmitterProgram.programId
    ).publicKey;

    let tokenPair = this.findProgramAddress("token_pair", [
      remoteDomain.toString(),
      remoteToken,
    ]).publicKey;

    let remoteTokenMessenger = this.findProgramAddress(
      "remote_token_messenger",
      [remoteDomain.toString()]
    ).publicKey;

    let accountMetas = [];
    accountMetas.push({
      isSigner: false,
      isWritable: false,
      pubkey: this.tokenMessenger.publicKey,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: false,
      pubkey: remoteTokenMessenger,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: true,
      pubkey: this.tokenMinter.publicKey,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: true,
      pubkey: this.localToken.publicKey,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: false,
      pubkey: tokenPair,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: true,
      pubkey: this.userTokenAccount,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: true,
      pubkey: this.custodyTokenAccount.publicKey,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: false,
      pubkey: spl.TOKEN_PROGRAM_ID,
    });

    try {
      await this.messageTransmitterProgram.methods
        .receiveMessage({
          message: Buffer.from(message),
          attestation: Buffer.from(attestation),
        })
        .accounts({
          caller: this.provider.wallet.publicKey,
          authorityPda,
          messageTransmitter: this.messageTransmitter.publicKey,
          usedNonces,
          receiver: this.program.programId,
          systemProgram: SystemProgram.programId,
        })
        .remainingAccounts(accountMetas)
        .rpc();
    } catch (err) {
      console.log(err);
    }
  };

  createBurnMessageBody = (
    burnVersion: number,
    burnToken: PublicKey,
    mintRecipient: PublicKey,
    depositor: PublicKey,
    amount: bigint
  ) => {
    return Buffer.concat([
      new BN(burnVersion).toArrayLike(Buffer, "be", 4),
      burnToken.toBytes(),
      mintRecipient.toBytes(),
      // Encoding for amount starts with mandatory 24 zero-bytes.
      new BN(0).toArrayLike(Buffer, "be", 24),
      new BN(amount).toArrayLike(Buffer, "be", 8),
      depositor.toBytes(),
    ]);
  };

  createBurnMessage = (
    version: number,
    sourceDomain: number,
    destinationDomain: number,
    nonce: number,
    sender: PublicKey,
    recipient: PublicKey,
    destinationCaller: PublicKey,
    // The below params are burn_message specific.
    burnVersion: number,
    burnToken: PublicKey,
    mintRecipient: PublicKey,
    depositor: PublicKey,
    amount: bigint
  ) => {
    let burnMessageBuffer = this.createBurnMessageBody(
      burnVersion,
      burnToken,
      mintRecipient,
      depositor,
      amount
    );
    return Buffer.concat([
      new BN(version).toArrayLike(Buffer, "be", 4),
      new BN(sourceDomain).toArrayLike(Buffer, "be", 4),
      new BN(destinationDomain).toArrayLike(Buffer, "be", 4),
      new BN(nonce).toArrayLike(Buffer, "be", 8),
      sender.toBytes(),
      recipient.toBytes(),
      destinationCaller.toBytes(),
      burnMessageBuffer,
    ]);
  };

  attest = (message: Buffer, attesterPrivateKeys: Buffer[]) => {
    // Order the attesters by increasing pubkey.
    attesterPrivateKeys.sort((key1, key2) => {
      let publicKey1 = ethutil.privateToAddress(key1);
      let publicKey2 = ethutil.privateToAddress(key2);
      for (let i = 0; i < publicKey1.length; ++i) {
        if (publicKey1[i] < publicKey2[i]) {
          return -1;
        }
        if (publicKey1[i] > publicKey2[i]) {
          return 1;
        }
      }
      return 0;
    });
    const messageHash = ethutil.keccak256(message);
    let attestation = Buffer.alloc(
      SIGNATURE_LENGTH * attesterPrivateKeys.length
    );
    let writeOffset = 0;
    for (const attesterPrivateKey of attesterPrivateKeys) {
      const ecdsaSignature = ethutil.ecsign(messageHash, attesterPrivateKey);
      const signatureBytes = Buffer.from(
        ethutil
          .toRpcSig(ecdsaSignature.v, ecdsaSignature.r, ecdsaSignature.s)
          .slice(2),
        "hex"
      );
      writeOffset += signatureBytes.copy(
        attestation,
        writeOffset,
        0,
        SIGNATURE_LENGTH
      );
    }
    return attestation;
  };
}
