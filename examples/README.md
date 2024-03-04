# CCTP on Solana Example Scripts

This directory provides example scripts for calling depositForBurn and receiveMessage on Solana Devnet.

For more information see our [developer documentation](https://developers.circle.com/stablecoins/docs/cctp-getting-started).

## Prerequisites

1. Install the [Solana CLI](https://docs.solanalabs.com/cli/install) 
and [spl-token CLI](https://spl.solana.com/token#setup).

2. Install dependencies:

```bash
npm install
```

3. Create a local Devnet wallet (if needed), get some Devnet SOL, and create a USDC token account:

```bash
solana-keygen new -o devnetUser.json
solana-keygen pubkey devnetUser.json
solana airdrop -u devnet 5 <address output from previous step>
spl-token create-account -u devnet --owner devnetUser.json 4zMMC9srt5Ri5X14GAgXhaHii3GnPAEERYPJgZJDncDU
```

## Deposit For Burn

To initiate a depositForBurn instruction from Solana to another chain follow these steps:

1. Set the new token account created in Prerequisites to the `USER_TOKEN_ACCOUNT` variable in [.env](./.env).

2. Get some Devnet USDCSOL to transfer: <https://faucet.circle.com/>.

3. Set an EVM address in hex to the `MINT_RECIPIENT_HEX` variable in [.env](./.env). This address will receive the
minted tokens on the destination chain (AVAX by default, destination can be changed with `DESTINATION_CHAIN`
env var).

4. Call depositForBurn script:

```bash
npm run depositForBurn
```

5. The output `message` and `attestation` can be used to call `receiveMessage` on the destination
blockchain CCTP contracts: 
<https://developers.circle.com/stablecoins/docs/transfer-usdc-on-testnet-from-ethereum-to-avalanche>.

## Receive Message

1. Call `depositForBurn` on an EVM chain with a `destinationDomain` of 5 for Solana, and a `mintRecipient` of
the desired **user token account** on Solana Devnet (you can use the account created in Prerequisites). This address must be decoded from base58 to hex first using
something like [this](https://appdevtools.com/base58-encoder-decoder).
For more info and scripts to help with calling depositForBurn on a different chain, see our EVM docs
[here](https://developers.circle.com/stablecoins/docs/transfer-usdc-on-testnet-from-ethereum-to-avalanche).

2. Set `MESSAGE_HEX` and `ATTESTATION_HEX` in [.env](./.env) from the transaction in step 1. These can be easily found by calling the messages API: `https://iris-api-sandbox.circle.com/messages/${sourceDomainId}/${depositForBurnTxHash}`.

3. Set the token account used for the `mintRecipient` in step 1 to the `USER_TOKEN_ACCOUNT` variable in [.env](./.env).

4. Call receiveMessage script:

```bash
npm run receiveMessage
```
