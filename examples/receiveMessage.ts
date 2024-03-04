import 'dotenv/config';
import { PublicKey, SystemProgram } from '@solana/web3.js';
import * as spl from '@solana/spl-token';
import { SOLANA_USDC_ADDRESS, decodeEventNonceFromMessage, getAnchorConnection, getPrograms, getReceiveMessagePdas } from './utils';

const main = async () => {
    const provider = getAnchorConnection();

    const { messageTransmitterProgram, tokenMessengerMinterProgram } = getPrograms(provider);

    // Init needed variables
    const usdcAddress = new PublicKey(SOLANA_USDC_ADDRESS);
    const userTokenAccount = new PublicKey(process.env.USER_TOKEN_ACCOUNT)
    const remoteTokenAddressHex = process.env.REMOTE_TOKEN_HEX!;
    const remoteDomain = process.env.REMOTE_DOMAIN!;
    const messageHex = process.env.MESSAGE_HEX!;
    const attestationHex = process.env.ATTESTATION_HEX!;
    const nonce = decodeEventNonceFromMessage(messageHex);

    // Get PDAs
    const pdas = await getReceiveMessagePdas(
        {messageTransmitterProgram, tokenMessengerMinterProgram},
        usdcAddress,
        remoteTokenAddressHex,
        remoteDomain,
        nonce
    )

    // accountMetas list to pass to remainingAccounts
    const accountMetas: any[] = [];
    accountMetas.push({
        isSigner: false,
        isWritable: false,
        pubkey: pdas.tokenMessengerAccount.publicKey,
    });
    accountMetas.push({
        isSigner: false,
        isWritable: false,
        pubkey: pdas.remoteTokenMessengerKey.publicKey,
    });
    accountMetas.push({
        isSigner: false,
        isWritable: true,
        pubkey: pdas.tokenMinterAccount.publicKey,
    });
    accountMetas.push({
        isSigner: false,
        isWritable: true,
        pubkey: pdas.localToken.publicKey,
    });
    accountMetas.push({
        isSigner: false,
        isWritable: false,
        pubkey: pdas.tokenPair.publicKey,
    });
    accountMetas.push({
        isSigner: false,
        isWritable: true,
        pubkey: userTokenAccount,
    });
    accountMetas.push({
        isSigner: false,
        isWritable: true,
        pubkey: pdas.custodyTokenAccount.publicKey,
    });
    accountMetas.push({
        isSigner: false,
        isWritable: false,
        pubkey: spl.TOKEN_PROGRAM_ID,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: false,
      pubkey: pdas.tokenMessengerEventAuthority.publicKey,
    });
    accountMetas.push({
      isSigner: false,
      isWritable: false,
      pubkey: tokenMessengerMinterProgram.programId,
    });

    const receiveMessageTx = await messageTransmitterProgram.methods
        .receiveMessage({
            message: Buffer.from(messageHex.replace("0x", ""), "hex"),
            attestation: Buffer.from(attestationHex.replace("0x", ""), "hex"),
        })
        .accounts({
            payer: provider.wallet.publicKey,
            caller: provider.wallet.publicKey,
            authorityPda: pdas.authorityPda,
            messageTransmitter: pdas.messageTransmitterAccount.publicKey,
            usedNonces: pdas.usedNonces,
            receiver: tokenMessengerMinterProgram.programId,
            systemProgram: SystemProgram.programId,
        })
        .remainingAccounts(accountMetas)
        .rpc();
    
    console.log("\n\nreceiveMessage Tx: ", receiveMessageTx);
}

main();
