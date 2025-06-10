#!/bin/bash
#
# Copyright 2025 Circle Internet Financial, LTD. All rights reserved.
# 
# SPDX-License-Identifier: Apache-2.0
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e
corepack enable
SOLANA_CLI_VERSION=1.18.26
V1_RUST_VERSION=1.78.0
V2_RUST_VERSION=nightly-2025-03-23
V1_ANCHOR_VERSION=0.28.0
V2_ANCHOR_VERSION=0.31.0
BASE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

function clean_v1() {
  RUSTUP_TOOLCHAIN=$V1_RUST_VERSION anchor clean
  echo "V1 program build artifacts cleaned"
}

function clean_v2() (
  pushd "${BASE_PATH}"/programs/v2
  RUSTUP_TOOLCHAIN=$V2_RUST_VERSION anchor clean
  echo "V2 program build artifacts cleaned"
  popd
)

function build_v1() {
  RUSTUP_TOOLCHAIN=$V1_RUST_VERSION anchor build -p message_transmitter
  RUSTUP_TOOLCHAIN=$V1_RUST_VERSION anchor build -p token_messenger_minter
}

function build_v2() (
  pushd "${BASE_PATH}"/programs/v2
  RUSTUP_TOOLCHAIN=$V2_RUST_VERSION anchor build -p message_transmitter_v2
  RUSTUP_TOOLCHAIN=$V2_RUST_VERSION anchor build -p token_messenger_minter_v2
  popd
)

function test_v1() {
  yarn install
  RUSTUP_TOOLCHAIN=$V1_RUST_VERSION anchor test -- --features test
}

function test_v2() {
  pushd "${BASE_PATH}"/programs/v2
  yarn install
  RUSTUP_TOOLCHAIN=$V2_RUST_VERSION anchor test -- --features test
  popd
}

function setup_v1() {
  install_rust $V1_RUST_VERSION
  install_solana
  install_avm $V1_ANCHOR_VERSION
  create_key_pair
  yarn install
}

function setup_v2() {
  install_rust $V2_RUST_VERSION
  install_solana
  install_avm $V2_ANCHOR_VERSION
  create_key_pair
  pushd "${BASE_PATH}"/programs/v2
  yarn install
  popd
}

function create_key_pair() {
  if test -e ~/.config/solana/id.json; then
    echo "Local solana keypair already exists"
  else
    echo "No local solana keypair found, creating one"
    mkdir -p ~/.config/solana
    touch ~/.config/solana/id.json
    solana-keygen new -o ~/.config/solana/id.json --force --no-bip39-passphrase
  fi
}

function setup() {
  setup_v1
  setup_v2
}

function install_avm() {
  if ! avm --version >/dev/null; then
    echo "INSTALLING AVM -- https://www.anchor-lang.com/docs/installation"
    cargo install --git https://github.com/coral-xyz/anchor --locked --tag v$1 avm --force
    avm --version
    echo -e "AVM successfully installed\n"
  fi

  if ! avm list | grep "$.*installed" > /dev/null; then
    echo "AVM: Installing Anchor version $1"
    avm install "$1"
  fi

  avm use "$1"
}

function install_rust() {
  if ! rustup -V >/dev/null; then
    echo "INSTALLING RUST -- https://www.rust-lang.org/tools/install"
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain="$1" --profile=minimal -y
    source "$HOME/.cargo/env"
    rustup -V
    # Only needed for github action
    rustup component add rustfmt
  else
    rustup toolchain install "$1" --allow-downgrade
    rustup component add --toolchain "$1" rustfmt
  fi
  rustup default "$1"
  echo "Rust version $1 successfully installed"
}

function install_solana() {
  if ! which solana 2>/dev/null || ! solana --version >/dev/null; then
    echo "INSTALLING SOLANA-CLI -- https://docs.solana.com/cli/install-solana-cli-tools"
    sh -c "$(curl -sSfL https://release.anza.xyz/v${SOLANA_CLI_VERSION}/install)"
    export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
    solana --version
    echo -e "Solana-CLI successfully installed\n"
  fi
}

# This script takes in a function name as the first argument, 
# and runs it in the context of the script.

if [ -z $1 ]; then
  echo "Usage: bash run.sh <function>";
  exit 1;
elif declare -f "$1" > /dev/null; then
  "$@";
else
  echo "Function '$1' does not exist";
  exit 1;
fi
