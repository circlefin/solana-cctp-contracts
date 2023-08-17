import * as anchor from "@coral-xyz/anchor";
import { MessageTransmitter } from "../../target/types/message_transmitter";
import {
  PublicKey,
  Keypair,
  SystemProgram,
  AccountMeta,
  SYSVAR_INSTRUCTIONS_PUBKEY,
} from "@solana/web3.js";
import * as spl from "@solana/spl-token";
import BN from "bn.js";

export class TestClient {
  owner: Keypair;
  pauser: Keypair;
  attesterManager: Keypair;

  provider: anchor.AnchorProvider;
  program: anchor.Program<MessageTransmitter>;
  printErrors: boolean;

  messageTransmitter: { publicKey: PublicKey; bump: number };

  constructor() {
    this.provider = anchor.AnchorProvider.env();
    anchor.setProvider(this.provider);
    this.program = anchor.workspace
      .MessageTransmitter as anchor.Program<MessageTransmitter>;
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

  findProgramAddress = (label: string, extraSeeds = null) => {
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
    let res = PublicKey.findProgramAddressSync(seeds, this.program.programId);
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

  ///////
  // instructions

  initialize = async (
    localDomain: number,
    attester: PublicKey,
    maxMessageBodySize: BN,
    version: number
  ) => {
    let programData = PublicKey.findProgramAddressSync(
      [this.program.programId.toBuffer()],
      new PublicKey("BPFLoaderUpgradeab1e11111111111111111111111")
    )[0];

    await this.program.methods
      .initialize({
        localDomain,
        attester,
        maxMessageBodySize,
        version,
      })
      .accounts({
        upgradeAuthority: this.provider.wallet.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        messageTransmitterProgramData: programData,
        messageTransmitterProgram: this.program.programId,
        systemProgram: SystemProgram.programId,
      })
      .rpc();
  };

  transferOwnership = async (newOwner: PublicKey) => {
    let currentOwner = (
      await this.program.account.messageTransmitter.fetch(
        this.messageTransmitter.publicKey
      )
    ).owner;

    await this.program.methods
      .transferOwnership({ newOwner })
      .accounts({
        owner: currentOwner,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers(currentOwner == this.owner.publicKey ? [this.owner] : [])
      .rpc();
  };

  acceptOwnership = async (newOwner: Keypair) => {
    await this.program.methods
      .acceptOwnership({})
      .accounts({
        pendingOwner: this.owner.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([newOwner])
      .rpc();
    this.owner = newOwner;
  };

  updatePauser = async (newPauser: PublicKey) => {
    await this.program.methods
      .updatePauser({ newPauser })
      .accounts({
        owner: this.owner.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([this.owner])
      .rpc();
  };

  updateAttesterManager = async (newAttesterManager: PublicKey) => {
    await this.program.methods
      .updateAttesterManager({ newAttesterManager })
      .accounts({
        owner: this.owner.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([this.owner])
      .rpc();
  };

  pause = async () => {
    await this.program.methods
      .pause({})
      .accounts({
        pauser: this.pauser.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([this.pauser])
      .rpc();
  };

  unpause = async () => {
    await this.program.methods
      .unpause({})
      .accounts({
        pauser: this.pauser.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([this.pauser])
      .rpc();
  };

  setMaxMessageBodySize = async (newMaxMessageBodySize: BN) => {
    await this.program.methods
      .setMaxMessageBodySize({ newMaxMessageBodySize })
      .accounts({
        owner: this.owner.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([this.owner])
      .rpc();
  };

  enableAttester = async (newAttester: PublicKey) => {
    await this.program.methods
      .enableAttester({ newAttester })
      .accounts({
        attesterManager: this.attesterManager.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        systemProgram: SystemProgram.programId,
      })
      .signers([this.attesterManager])
      .rpc();
  };

  disableAttester = async (attester: PublicKey) => {
    await this.program.methods
      .disableAttester({ attester })
      .accounts({
        attesterManager: this.attesterManager.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        systemProgram: SystemProgram.programId,
      })
      .signers([this.attesterManager])
      .rpc();
  };

  setSignatureThreshold = async (newSignatureThreshold: number) => {
    await this.program.methods
      .setSignatureThreshold({ newSignatureThreshold })
      .accounts({
        attesterManager: this.attesterManager.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
      })
      .signers([this.attesterManager])
      .rpc();
  };

  sendMessage = async (
    destinationDomain: number,
    recipient: PublicKey,
    messageBody: number[]
  ) => {
    await this.program.methods
      .sendMessage({
        destinationDomain,
        recipient,
        messageBody: Buffer.from(messageBody),
      })
      .accounts({
        sender: this.provider.wallet.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        instructionSysvarAccount: SYSVAR_INSTRUCTIONS_PUBKEY,
      })
      .rpc();
  };

  sendMessageWithCaller = async (
    destinationDomain: number,
    recipient: PublicKey,
    destinationCaller: PublicKey,
    messageBody: number[]
  ) => {
    await this.program.methods
      .sendMessageWithCaller({
        destinationDomain,
        recipient,
        destinationCaller,
        messageBody: Buffer.from(messageBody),
      })
      .accounts({
        sender: this.provider.wallet.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        instructionSysvarAccount: SYSVAR_INSTRUCTIONS_PUBKEY,
      })
      .rpc();
  };

  replaceMessage = async (
    originalMessage: number[],
    originalAttestation: number[],
    newMessageBody: number[],
    newDestinationCaller: PublicKey
  ) => {
    await this.program.methods
      .replaceMessage({
        originalMessage: Buffer.from(originalMessage),
        originalAttestation: Buffer.from(originalAttestation),
        newMessageBody: Buffer.from(newMessageBody),
        newDestinationCaller,
      })
      .accounts({
        sender: this.provider.wallet.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        instructionSysvarAccount: SYSVAR_INSTRUCTIONS_PUBKEY,
      })
      .rpc();
  };

  receiveMessage = async (
    sourceDomain: number,
    nonce: bigint,
    message: number[],
    attestation: number[]
  ) => {
    const buffer = Buffer.alloc(12);
    buffer.writeUint32BE(sourceDomain);

    const firstNonce =
      ((nonce - BigInt(1)) / BigInt(6400)) * BigInt(6400) + BigInt(1);
    buffer.writeBigInt64BE(firstNonce, 4);

    const usedNonces = this.findProgramAddress("used_nonces", [
      buffer,
    ]).publicKey;

    await this.program.methods
      .receiveMessage({
        message: Buffer.from(message),
        attestation: Buffer.from(attestation),
      })
      .accounts({
        caller: this.provider.wallet.publicKey,
        messageTransmitter: this.messageTransmitter.publicKey,
        usedNonces,
        recipientTokenAccount: this.messageTransmitter.publicKey,
        custodyTokenAccount: this.messageTransmitter.publicKey,
        instructionSysvarAccount: SYSVAR_INSTRUCTIONS_PUBKEY,
        receiver: this.messageTransmitter.publicKey,
        tokenProgram: spl.TOKEN_PROGRAM_ID,
        systemProgram: SystemProgram.programId,
      })
      .rpc();
  };
}
