# Cross-Chain Transfer Protocol (CCTP) on Solana

## Contents

- [Introduction](#introduction)
- [Deployments](#deployments)
- [Deployment guide](#deployment-guide)

## Introduction

[Cross-Chain Transfer Protocol (CCTP)](https://circle.com/cctp) is a permissionless on-chain utility that facilitates USDC transfers securely between blockchains networks via native burning and minting. Circle created it to improve capital efficiency and minimize trust requirements when using USDC across blockchain networks. CCTP enables developers to build multi-chain applications that provide secure, 1:1 transfers of USDC across blockchains for their users.

## Developer Documentation

To learn more about how to integrate with CCTP, please see our developer documentation [here](https://developers.circle.com/stablecoins/docs/cctp-getting-started).

## Deployments

| Devnet               |                                              |
| -------------------- | -------------------------------------------- |
| MessageTransmitter   | CCTPmbSD7gX1bxKPAmg77w8oFzNFpaQiQUWD43TKaecd |
| TokenMessengerMinter | CCTPiPYPc6AsJuwueEnWgSgucamXDZwBd53dQ11YiKX3 |

| Mainnet              |       |
| -------------------- | ----- |
| MessageTransmitter   | CCTPmbSD7gX1bxKPAmg77w8oFzNFpaQiQUWD43TKaecd |
| TokenMessengerMinter | CCTPiPYPc6AsJuwueEnWgSgucamXDZwBd53dQ11YiKX3 |

### Program Verification

Mainnet on-chain progams can be verified with the following steps:

```sh
# Checkout deployed commit
git checkout 7bec2828bb442e7e22753cedc41b295b681980f2
# Build a verifiable build 
anchor build --verifiable
# Verify MessageTransmitter
anchor verify --program-name message_transmitter --provider.cluster mainnet --skip-build CCTPmbSD7gX1bxKPAmg77w8oFzNFpaQiQUWD43TKaecd
# Verify TokenMessengerMinter
anchor verify --program-name token_messenger_minter --provider.cluster mainnet --skip-build CCTPiPYPc6AsJuwueEnWgSgucamXDZwBd53dQ11YiKX3
```

## Deployment guide

### Setup Environment

1. Clone the repository from <https://github.com/circlefin/solana-cctp-contracts>.
2. Install the latest Solana tools from <https://docs.solana.com/cli/install-solana-cli-tools>. If you already have Solana tools, run `solana-install update` to get the latest compatible version.
3. Install the latest Rust stable from <https://rustup.rs/>. If you already have Rust, run `rustup update` to get the latest version.
4. Install the latest Anchor framework from <https://www.anchor-lang.com/docs/installation>. If you already have Anchor, run `avm update` to get the latest version.

Rustfmt is used to format the code. It requires `nightly` features to be activated:

5. Install `nightly` rust toolchain. <https://rust-lang.github.io/rustup/installation/index.html#installing-nightly>
6. Execute `git config core.hooksPath .githooks` to activate pre-commit hooks.

#### [Optional] Vscode setup

1. Install `rust-analyzer` extension
2. If formatting doesn't work, make sure that `rust-analyzer.rustfmt.extraArgs` is set to `+nightly`

### Build

First, generate new keys for the program addresses with `solana-keygen new -o <PROG_ID_JSON>`. Then, replace the existing program IDs with the newly generated addresses in `Anchor.toml`, `programs/message-transmitter/src/lib.rs`, and `programs/token-messenger-minter/src/lib.rs`.

Also, ensure the path to your wallet in `Anchor.toml` is correct. Alternatively, when running Anchor deploy or test commands, you can specify your wallet with `--provider.wallet` argument. The wallet's pubkey will be set as an upgrade authority upon initial deployment of the program. It is strongly recommended to use multisig upgrade authority when deploying to the mainnet.

To build the program run `anchor build` command from the root `solana-cctp-contracts` directory:

```sh
cd solana-cctp-contracts
anchor build
```

#### Cargo Dependencies

To ensure with certainty that packages are not changed unexpectedly as well as to enable reproducible,
verifiable builds, all Cargo dependencies are vendored locally in the [vendor](/vendor/) directory and
enabled via the [.cargo/config.toml](.cargo/config.toml) file.

### Test

Unit tests are executed with the `cargo test` command:

```sh
cargo test -- --nocapture
```

Integration tests can be started as follows:

```sh
npm install
anchor test -- --features test
```

By default, integration tests are executed on a local validator, so it won't cost you any SOL.

### Deploy

To deploy the program to the devnet and upload the IDL use the following commands:

```sh
anchor deploy --provider.cluster devnet --program-name message_transmitter --program-keypair <PROG_ID_JSON>
anchor deploy --provider.cluster devnet --program-name token_messenger_minter --program-keypair <PROG_ID_JSON>
anchor idl init --provider.cluster devnet --filepath ./target/idl/message_transmitter.json <PROGRAM ID>
anchor idl init --provider.cluster devnet --filepath ./target/idl/token_messenger_minter.json <PROGRAM ID>
```

### Initialize

Before the first use of the CCTP programs they must be initialized with the [MessageTransmitter#initialize](#messagetransmitter-module) and [TokenMessenger#initialize](#tokenmessenger-module) instructions.

---

License: [LICENSE](./LICENSE)
