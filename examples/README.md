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
    solana airdrop -u devnet 5 devnetUser.json
    spl-token create-account -u devnet --owner devnetUser.json 4zMMC9srt5Ri5X14GAgXhaHii3GnPAEERYPJgZJDncDU
    ```

4. Copy over the `.env.example` file.

    ```bash
    cp .env.example .env
    ```

5. Set the new token account created in Prerequisites to the `USER_TOKEN_ACCOUNT` variable in [.env](./.env).

6. Get some Devnet USDCSOL and/or EVM testnet USDC to transfer: <https://faucet.circle.com/>.

7. Set an EVM address in hex to the `REMOTE_EVM_ADDRESS` variable in [.env](./.env). This address will receive the
minted tokens on the destination chain (AVAX by default, destination can be changed with `REMOTE_EVM_DOMAIN`
env var).

## V2

### Setup

Set `REMOTE_EVM_PRIVATE_KEY` and `REMOTE_EVM_RPC_URL` variables in [.env](./.env).

The below commands will run the `depositForBurn`, attestation fetching, and `receiveMessage` steps.

### Fast Transfer
```bash
# Bridge Solana to EVM
npm run bridge-v2 sol2evm -- --amount 100 --maxFee 1 --minFinalityThreshold 1000

# Bridge EVM to Solana
npm run bridge-v2 evm2sol -- --amount 100 --maxFee 1 --minFinalityThreshold 1000
```

### Standard Transfer
```bash
# Bridge Solana to EVM
npm run bridge-v2 sol2evm -- --amount 100 --maxFee 0 --minFinalityThreshold 2000

# Bridge EVM to Solana
npm run bridge-v2 evm2sol -- --amount 100 --maxFee 0 --minFinalityThreshold 2000
```

### Hooks
To utilize hook functionality, set `DESTINATION_CALLER` in the env vars and pass the `hookData` arg when calling the above scripts.

```bash
npm run bridge-v2 sol2evm -- --amount 100 --maxFee 1 --minFinalityThreshold 1000 --hookData 0x1234
```

### Reclaim MessageSentEvent Account Rent
The rent for the MessageSentEvent Account can be reclaimed after a period of 5 days.

```bash
npm run bridge-v2 reclaim --attestation <ATTESTATION> --destinationMessage <DESTINATION_MESSAGE> --messageSentEventAccount <MESSAGE_SENT_EVENT_ACCOUNT>
```

## V1
### Deposit For Burn

To initiate a depositForBurn instruction from Solana to another chain follow these steps:

1. Call depositForBurn script:

    ```bash
    npm run depositForBurn
    ```

2. The output `message` and `attestation` can be used to call `receiveMessage` on the destination
blockchain CCTP contracts: 
<https://developers.circle.com/stablecoins/docs/transfer-usdc-on-testnet-from-ethereum-to-avalanche>.

### Receive Message

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
