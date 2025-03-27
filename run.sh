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

SOLANA_CLI_VERSION=1.18.26
V1_RUST_VERSION=1.78.0
V2_RUST_VERSION=nightly
V1_ANCHOR_VERSION=0.28.0
V2_ANCHOR_VERSION=0.31.0

function clean_v1() {
  setup_v1_versions
  anchor clean
  echo "V1 program build artifacts cleaned"
}

function clean_v2() (
  setup_v2_versions
  cd programs/v2
  anchor clean
  echo "V2 program build artifacts cleaned"
)

function build_v1() {
  setup_v1_versions

  anchor build -p message_transmitter
  anchor build -p token_messenger_minter
}

function build_v2() (
  setup_v2_versions
  cd programs/v2
  anchor build -p message_transmitter_v2
  anchor build -p token_messenger_minter_v2
)

function test_v1() {
  setup_v1_versions
  yarn install
  anchor test -- --features test
}

function test_v2() {
  setup_v2_versions
  cd programs/v2
  yarn install
  anchor test -- --features test
}

function setup_v1_versions() {
  if ! rustc --version | grep ${V1_RUST_VERSION} > /dev/null; then
    rustup default ${V1_RUST_VERSION}
  fi
  if ! avm list | grep "${V1_ANCHOR_VERSION}.*installed" > /dev/null; then
    echo "AVM: Installing Anchor version ${V1_ANCHOR_VERSION}"
    avm install ${V1_ANCHOR_VERSION}
  fi
  avm use ${V1_ANCHOR_VERSION}
}

function setup_v2_versions() {
  if ! rustc --version | grep ${V2_RUST_VERSION} > /dev/null; then
    rustup default ${V2_RUST_VERSION}
  fi
  if ! avm list | grep "${V2_ANCHOR_VERSION}.*installed" > /dev/null; then
    echo "AVM: Installing Anchor version ${V2_ANCHOR_VERSION}"
    avm install ${V2_ANCHOR_VERSION}
  fi
  avm use ${V2_ANCHOR_VERSION}
}

function setup() {
  # Check if rust is installed
  if ! rustup -V >/dev/null; then
      install_rust
  fi

  # Check if solana cli is installed
  if ! which solana 2 >/dev/null || ! solana --version >/dev/null; then
    install_solana
  fi

  # Check if avm is installed
  if ! avm --version >/dev/null; then
    install_avm
  fi

  yarn install
}

function install_avm() {
  echo "INSTALLING AVM -- https://www.anchor-lang.com/docs/installation"
  cargo install --git https://github.com/coral-xyz/anchor avm --force
  avm --version
  echo -e "AVM successfully installed\n"
}

function install_rust() {
  echo "INSTALLING RUST -- https://www.rust-lang.org/tools/install"
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain=${V1_RUST_VERSION} -y
  # For github actions only
  test -f /home/runner/.profile && source /home/runner/.profile
  source "$HOME/.cargo/env"
  rustup default ${V2_RUST_VERSION}
  rustup -V
  echo -e "Rust versions ${V2_RUST_VERSION} and ${V1_RUST_VERSION} successfully installed\n"
}

function install_solana() {
  echo "INSTALLING SOLANA-CLI -- https://docs.solana.com/cli/install-solana-cli-tools"
  sh -c "$(curl -sSfL https://release.anza.xyz/v${SOLANA_CLI_VERSION}/install)"
  # For github actions only
  [ -e /home/runner/.profile ] && source /home/runner/.profile
  solana --version
  echo -e "Solana-CLI successfully installed\n"
}

function setup_local_keypair() {
  echo "Setting up a local solana keypair"
  # create a local keypair for tests
  touch ~/.config/solana/id.json
  solana-keygen new -o ~/.config/solana/id.json --force --no-bip39-passphrase
}

# This script takes in a function name as the first argument, 
# and runs it in the context of the script.

if [ -z $1 ]; then
  echo "Usage: bash run.sh <function>";
  exit 1;
elif declare -f "$1" > /dev/null; then
  if [[ "$1" != "setup" && "$2" != "--skip-setup" ]]; then
    setup
  fi
  if [[ $2 == "--setup-keypair" ]]; then
    setup_local_keypair
  fi

  "$@";
else
  echo "Function '$1' does not exist";
  exit 1;
fi
