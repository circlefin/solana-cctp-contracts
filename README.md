# Cross-Chain Transfer Protocol (CCTP) on Solana

## Contents

- [Introduction](#introduction)
- [Developer Documentation](#developer-documentation)
- [run.sh Script Commands](#runsh-script-commands)
- [V1 Deployments](#v1-deployments)
- [V2 Deployments](#v2-deployments)
- [Deployment guide](#deployment-guide)

## Introduction

[Cross-Chain Transfer Protocol (CCTP)](https://circle.com/cctp) is a permissionless on-chain utility that facilitates USDC transfers securely between blockchains networks via native burning and minting. Circle created it to improve capital efficiency and minimize trust requirements when using USDC across blockchain networks. CCTP enables developers to build multi-chain applications that provide secure, 1:1 transfers of USDC across blockchains for their users.

## Developer Documentation

To learn more about how to integrate with CCTP, please see our developer documentation: <https://developers.circle.com/stablecoins/docs/cctp-getting-started>.

Please see the [examples directory](examples/) for example scripts interacting with CCTP.

## run.sh Script Commands

All commands check for installation of [rust](https://www.rust-lang.org/tools/install),
[solana CLI](https://solana.com/docs/intro/installation), and
[anchor CLI](https://www.anchor-lang.com/docs/installation#install-anchor-cli).

```bash
# One-time setup
source ./run.sh setup
# Build V1 programs
./run.sh build_v1
# Build V2 programs
./run.sh build_v2
# Clean V1 programs
./run.sh clean_v1
# Clean V2 programs
./run.sh clean_v2
# Run tests on V1 programs
./run.sh test_v1
# Run tests on V2 programs
./run.sh test_v2
```

## V1 Deployments

| Devnet               |                                              |
| -------------------- | -------------------------------------------- |
| MessageTransmitter   | CCTPmbSD7gX1bxKPAmg77w8oFzNFpaQiQUWD43TKaecd |
| TokenMessengerMinter | CCTPiPYPc6AsJuwueEnWgSgucamXDZwBd53dQ11YiKX3 |

| Mainnet              |       |
| -------------------- | ----- |
| MessageTransmitter   | CCTPmbSD7gX1bxKPAmg77w8oFzNFpaQiQUWD43TKaecd |
| TokenMessengerMinter | CCTPiPYPc6AsJuwueEnWgSgucamXDZwBd53dQ11YiKX3 |

### V1 Program Verification

Mainnet on-chain progams can be verified with the following steps:

```sh
# Checkout deployed commit
git checkout 4b9da71265997e1f29e109837da34e6f783f1a22
# Build a verifiable build 
anchor build --verifiable --docker-image backpackapp/build:v0.28.0
# Verify MessageTransmitter
anchor verify --program-name message_transmitter --provider.cluster mainnet --skip-build CCTPmbSD7gX1bxKPAmg77w8oFzNFpaQiQUWD43TKaecd
# Verify TokenMessengerMinter
anchor verify --program-name token_messenger_minter --provider.cluster mainnet --skip-build CCTPiPYPc6AsJuwueEnWgSgucamXDZwBd53dQ11YiKX3
```

## V2 Deployments

All CCTP V2 code lives in the `programs/v2` directory.

| Devnet               |                                              |
| -------------------- | -------------------------------------------- |
| MessageTransmitterV2   | CCTPV2Sm4AdWt5296sk4P66VBZ7bEhcARwFaaS9YPbeC |
| TokenMessengerMinterV2 | CCTPV2vPZJS2u2BBsUoscuikbYjnpFmbFsvVuJdgUMQe |

| Mainnet              |       |
| -------------------- | ----- |
| MessageTransmitterV2   | Coming Soon |
| TokenMessengerMinterV2 | Coming Soon |

### V2 Program Verification

Coming Soon

## Deployment guide

### Setup Environment

1. Clone the repository from <https://github.com/circlefin/solana-cctp-contracts>.
2. Setup dependencies and CLI tools: `./run.sh setup`
3. Execute `git config core.hooksPath .githooks` to activate pre-commit hooks.

#### [Optional] Vscode setup

1. Install `rust-analyzer` extension

### Build

To build the program run `./run.sh build_v1` or `./run.sh build_v2` command from the root `solana-cctp-contracts` directory.

V2 builds will be in `programs/v2/target`

#### Cargo Dependencies

To ensure with certainty that packages are not changed unexpectedly as well as to enable reproducible,
verifiable builds, all Cargo dependencies are vendored locally in the [vendor](/vendor/) directory and
enabled via the [.cargo/config.toml](.cargo/config.toml) file.

### Test

Tests can be started with:

```sh
./run.sh test_v1
```  

or

```sh
./run.sh test_v2
```  

By default, integration tests are executed on a local validator.

### Deploy

To deploy the program to the devnet and upload the IDL use the following commands:

```sh
anchor deploy --provider.cluster devnet --program-name message_transmitter --program-keypair <PROG_ID_JSON>
anchor deploy --provider.cluster devnet --program-name token_messenger_minter --program-keypair <PROG_ID_JSON>
anchor idl init --provider.cluster devnet --filepath ./target/idl/message_transmitter.json <PROGRAM ID>
anchor idl init --provider.cluster devnet --filepath ./target/idl/token_messenger_minter.json <PROGRAM ID>
```

### Initialize

Before the first use of the CCTP programs they must be initialized with the 
[MessageTransmitter#initialize](programs/message-transmitter/src/instructions/initialize.rs) and
[TokenMessenger#initialize](programs/token-messenger-minter/src/token_messenger/instructions/initialize.rs) instructions.
The same applies to V2 programs as well: [MessageTransmitterV2#initialize](programs/v2/message-transmitter-v2/src/instructions/initialize.rs) and
[TokenMessenger#initialize](programs/v2/token-messenger-minter-v2/src/token_messenger_v2/instructions/initialize.rs).

---

License: [LICENSE](./LICENSE)
