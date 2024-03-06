import 'dotenv/config';
import * as anchor from "@coral-xyz/anchor";
import { PublicKey, Keypair } from '@solana/web3.js';
import * as spl from '@solana/spl-token';
import { getBytes } from 'ethers';

import { SOLANA_USDC_ADDRESS, evmAddressToBytes32, getAnchorConnection, getDepositForBurnPdas, getMessages, getPrograms, solanaAddressToHex } from './utils';

const main = async () => {
    const provider = getAnchorConnection();

    const { messageTransmitterProgram, tokenMessengerMinterProgram } = getPrograms(provider);

    // Init needed variables
    const usdcAddress = new PublicKey(SOLANA_USDC_ADDRESS);
    const userTokenAccount = new PublicKey(process.env.USER_TOKEN_ACCOUNT);

    // Default to 1 USDCSOL (e.g. $0.000001)
    const amount = new anchor.BN(process.env.AMOUNT ?? 1);
    const destinationDomain = Number(process.env.DEST_DOMAIN!);
    // mintRecipient is a bytes32 type so pad with 0's then convert to a solana PublicKey
    const mintRecipient = new PublicKey(getBytes(evmAddressToBytes32(process.env.MINT_RECIPIENT_HEX!)));

    // Get pdas
    const pdas = getDepositForBurnPdas({messageTransmitterProgram, tokenMessengerMinterProgram}, usdcAddress, destinationDomain);

    // Generate a new keypair for the MessageSent event account.
    const messageSentEventAccountKeypair = Keypair.generate();

    console.log("\n\nCalling depositForBurn with parameters: ");
    console.log("amount:", amount.toString());
    console.log("destinationDomain:", destinationDomain);
    console.log("mintRecipient (hex):", process.env.MINT_RECIPIENT_HEX); 
    console.log("mintRecipient (bytes52):", mintRecipient.toString());
    console.log("remoteTokenMessenger (hexa):", solanaAddressToHex(pdas.remoteTokenMessengerKey.publicKey.toString()))
    console.log("remoteTokenMessenger (bytes52):", pdas.remoteTokenMessengerKey.publicKey.toString());
    console.log("burnToken:", usdcAddress.toString());
    console.log("\n\n");

    // Call depositForBurn
    const depositForBurnTx = await tokenMessengerMinterProgram.methods
    .depositForBurn({
        amount,
        destinationDomain,
        mintRecipient,
    })
    // eventAuthority and program accounts are implicitly added by Anchor 
    .accounts({
        owner: provider.wallet.publicKey,
        eventRentPayer: provider.wallet.publicKey,
        senderAuthorityPda: pdas.authorityPda.publicKey,
        burnTokenAccount: userTokenAccount,
        messageTransmitter: pdas.messageTransmitterAccount.publicKey,
        tokenMessenger: pdas.tokenMessengerAccount.publicKey,
        remoteTokenMessenger: pdas.remoteTokenMessengerKey.publicKey,
        tokenMinter: pdas.tokenMinterAccount.publicKey,
        localToken: pdas.localToken.publicKey,
        burnTokenMint: usdcAddress,
        messageTransmitterProgram: messageTransmitterProgram.programId,
        tokenMessengerMinterProgram: tokenMessengerMinterProgram.programId,
        messageSentEventData: messageSentEventAccountKeypair.publicKey,
        tokenProgram: spl.TOKEN_PROGRAM_ID,
    })
    // messageSentEventAccountKeypair must be a signer so the MessageTransmitter program can take control of it and write to it.
    // provider.wallet is also an implicit signer
    .signers([messageSentEventAccountKeypair])
    .rpc();

    // Fetch message and attestation
    console.log("depositForBurn txHash:", depositForBurnTx);
    const response = await getMessages(depositForBurnTx);
    console.log("depositForBurn message information:", response.messages[0]);
    console.log("message and attestation can be used to receive the message on destination chain with domain", destinationDomain);
    const {attestation: attestationHex} = response.messages[0];

    // Now, you can call receiveMessage on an EVM chain, see public quickstart for more information:
    // https://developers.circle.com/stablecoin/docs/cctp-usdc-transfer-quickstart

    // Example of reclaiming the rent from the MessageSent event account:
    const reclaimEventAccountTx = await messageTransmitterProgram.methods
        .reclaimEventAccount({
            attestation: Buffer.from(attestationHex.replace("0x", ""), "hex"),
        })
        .accounts({
            payee: provider.wallet.publicKey,
            messageTransmitter: pdas.messageTransmitterAccount.publicKey,
            messageSentEventData: messageSentEventAccountKeypair.publicKey,
        })
        .rpc();
    console.log("\n\nreclaimEventAccount txHash: ", reclaimEventAccountTx);
    console.log("Event account has been reclaimed and SOL paid for rent returned to payee.");
}

main();
