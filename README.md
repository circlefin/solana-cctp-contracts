# Cross-Chain Transfer Protocol (CCTP) on Solana

## Contents

- [Introduction](#introduction)
- [Deployments](#deployments)
- [Contract Design](#contract-design)
- [Protocol Module](#protocol-module)
- [TokenMessenger Module](#tokenmessenger-module)
- [MessageTransmitter Module](#messagetransmitter-module)
- [TokenMinter Module](#tokenminter-module)
- [Permissions](#permissions)
- [Audits](#audits)
- [Deployment guide](#deployment-guide)

## Introduction

The Cross-Chain Transfer Protocol (CCTP) is an on-chain utility that facilitates a safer and more efficient transfer of tokens across different blockchains. Unlike traditional "lock-and-mint" bridges that pose security risks and provide a poor user experience, CCTP uses smart contracts to burn and mint native tokens, maintaining liquidity and reducing fragmentation. It opens up opportunities for developers to create innovative cross-chain applications that integrate various functionalities such as trading, lending, payments, NFTs, and gaming, making the process user-friendly. In essence, CCTP streamlines cross-chain transactions and paves the way for a more interconnected Web3.

## Deployments

| Devnet               |                                              |
| -------------------- | -------------------------------------------- |
| MessageTransmitter   | CCTPmbSD7gX1bxKPAmg77w8oFzNFpaQiQUWD43TKaecd |
| TokenMessengerMinter | CCTPiPYPc6AsJuwueEnWgSgucamXDZwBd53dQ11YiKX3 |

| Mainnet              |       |
| -------------------- | ----- |
| MessageTransmitter   | [TBD] |
| TokenMessengerMinter | [TBD] |

## Contract Design

Solana offers a different smart contract model to traditional EVM-based blockchains. In traditional EVM-based chains, contract code/logic and state are combined into a single contract deployed on-chain. With Solana, a smart contract is read-only or stateless and contains just program logic. This creates a logical separation of state (accounts) and contract logic (programs). This model allows for a single generic Solana program to operate across various accounts without requiring additional deployments. This is the crucial difference between Solana and EVM-based smart contracts.

The Solana runtime allows programs to call each other via a mechanism called cross-program invocation. Calling between programs is achieved by one program invoking an instruction of the other. But unlike Ethereum, in order to invoke a CPI, Solana program must first receive a full list of accounts that the invoked program will use. It then needs to construct a new instruction serializing input data before executing the call. This increases the complexity of the contract and client and also increases compute units cost. Unless strictly necessary, it is beneficial to encapsulate the project's logic inside a single program.

CCTP protocol on EVM chains consists of three contracts:

- **MessageTransmitter**: Generic message passing. Sends all messages on the source chain, and receives all messages on the destination chain.
- **TokenMessenger**: Entrypoint for cross-chain token transfer. Routes messages to burn a token on source chain, and mint it on destination chain.
- **TokenMinter**: Responsible for minting and burning tokens. Contains chain-specific settings used by minters and burners.

Because TokenMessengers and TokenMinter can be deployed permissionlessly by ecosystem teams to leverage CCTP transfers for their custom tokens, on Solana, the CCTP protocol implementation is split into two programs: MessageTransmitter and TokenMessengerMinter. Where TokenMessengerMinter encapsulates the functionality of both TokenMessenger and TokenMinter contracts. To ensure alignment with EVM contracts' logic and state and to facilitate future upgrades and maintenance, the code and state of Solana programs reflect the EVM counterparts as closely as possible.

Solana CCTP programs are written in Rust and leverages Anchor framework that makes it easier and more efficient for developers to create, deploy, and manage smart contracts on the Solana blockchain. Along with the program, an IDL (Interface Description Language) can be generated and deployed on-chain making it much easier for developers to interact with the CCTP program. See [Deployment guide](#deployment-guide) for more details.

Each CCTP program instruction emits one or more events upon execution. Depending on the purpose of instruction, events are emitted via Anchor's CPI events functionality or by creating new stand-alone accounts where such events are stored. Stand-alone account addresses are randomly generated on a client and passed to the program. The program initializes the account, writes the event, and sets itself as the owner. Replace instructions don't update previously created event accounts but create new ones. This is done to make it easier for the client to generate a replace instruction because it doesn't need to look up the original account address. At this time, only `MessageSent` events are emitted via stand-alone accounts.

Backend services can observe new account-based events by introspecting instructions and extracting event account addresses. Once the event has been processed, the account could be deleted and rent SOL reclaimed with `reclaimEventAccount` instruction. Rent SOL can only be returned to the original rent payer.

## MessageTransmitter Module

### **Instructions**

---

`initialize`

Initialize MessageTransmitter. This operation needs to be performed prior to using any other instructions. During the initialization, authorities are set to the upgrade authority.

| Parameter          |   Type   | Description                            |
| ------------------ | :------: | -------------------------------------- |
| localDomain        |   u32    | Solana domain id                       |
| attester           | [u8; 20] | Attester to enable                     |
| maxMessageBodySize |   u64    | Maximum size of message body, in bytes |
| version            |   u32    | Message Format version                 |

`transferOwnership`

Change the authority of MessageTransmitter.

| Parameter |  Type  | Description   |
| --------- | :----: | ------------- |
| newOwner  | Pubkey | New authority |

`acceptOwnership`

Serves as a safety net after the authority has been changed. If an address has been inputted incorrectly, the former authority can rectify this by invoking the `transferOwnership` instruction once more.

| Parameter | Type | Description |
| --------- | :--: | ----------- |
| N/A       |      |             |

`updatePauser`

Change the pauser of MessageTransmitter.

| Parameter |  Type  | Description |
| --------- | :----: | ----------- |
| newPauser | Pubkey | New pauser  |

`updateAttesterManager`

Change the AttesterManager of MessageTransmitter.

| Parameter          |  Type  | Description   |
| ------------------ | :----: | ------------- |
| newAttesterManager | Pubkey | New authority |

---

`receiveMessage`

Receive a message. Messages with a given nonce can only be broadcast successfully once for a pair of domains. The message body of a valid message is passed to the specified recipient for further processing.

| Parameter   |   Type   | Description                   |
| ----------- | :------: | ----------------------------- |
| message     | Vec\<u8> | Message bytes                 |
| attestation | Vec\<u8> | Signed attestation of message |

`sendMessage`

Send a message to the destination domain and recipient. Emits a MessageSent event which will be attested by Circle’s attestation service.

| Parameter         |   Type   | Description                                             |
| ----------------- | :------: | ------------------------------------------------------- |
| destinationDomain |   u32    | Destination domain identifier                           |
| recipient         |  Pubkey  | Address to handle message body on destination domain    |
| messageBody       | Vec\<u8> | Application-specific message to be handled by recipient |

`sendMessageWithCaller`

Send a message to the destination domain and recipient, for a specified destinationCaller on the destination domain. Emits a MessageSent event which will be attested by Circle’s attestation service.

| Parameter         |   Type   | Description                                             |
| ----------------- | :------: | ------------------------------------------------------- |
| destinationDomain |   u32    | Destination domain identifier                           |
| recipient         |  Pubkey  | Address to handle message body on destination domain    |
| messageBody       | Vec\<u8> | Application-specific message to be handled by recipient |
| destinationCaller |  Pubkey  | Caller on the destination domain                        |

`replaceMessage`

Replace a message with a new message body and/or destination caller.

| Parameter            |   Type   | Description                                                                          |
| -------------------- | :------: | ------------------------------------------------------------------------------------ |
| originalMessage      | Vec\<u8> | Original message to replace                                                          |
| originalAttestation  | Vec\<u8> | Attestation of originalMessage                                                       |
| newMessageBody       | Vec\<u8> | New message body of replaced message                                                 |
| newDestinationCaller |  Pubkey  | The new destination caller, which may be the same as the original destination caller |

`setSignatureThreshold`

Set the threshold of signatures required to attest to a message.

| Parameter             | Type | Description             |
| --------------------- | :--: | ----------------------- |
| newSignatureThreshold | u32  | New signature threshold |

`enableAttester`

Enable an attester.

| Parameter   |   Type   | Description        |
| ----------- | :------: | ------------------ |
| newAttester | [u8; 20] | Attester to enable |

`disableAttester`

Disable an attester.

| Parameter |   Type   | Description         |
| --------- | :------: | ------------------- |
| attester  | [u8; 20] | Attester to disable |

`setMaxMessageBodySize`

Set the max message body size.

| Parameter             | Type | Description             |
| --------------------- | :--: | ----------------------- |
| newMaxMessageBodySize | u64  | New signature threshold |

`pause`

Pause MessageTransmitter.

| Parameter | Type | Description |
| --------- | :--: | ----------- |
| None      |      |             |

`unpause`

Resume MessageTransmitter.

| Parameter | Type | Description |
| --------- | :--: | ----------- |
| None      |      |             |

`reclaimEventAccount`

Deletes the event account and reclaims rent SOL to the original rent payer. This instruction requires a valid attestation to be executed.

| Parameter   |   Type   | Description                |
| ----------- | :------: | -------------------------- |
| attestation | Vec\<u8> | Attestation of the message |

### **State**

---

`MessageTransmitter`

Stores MessageTransmitter configuration and next available nonce.

| Field              |     Type     | Description                                             |
| ------------------ | :----------: | ------------------------------------------------------- |
| owner              |    Pubkey    | Main authority of the program                           |
| pendingOwner       |    Pubkey    | New authority that needs to be accepted                 |
| attesterManager    |    Pubkey    | Attester Manager of the program                         |
| pauser             |    Pubkey    | Pause / unpause authority                               |
| paused             |     bool     | Specifies whether MessageTransmitter is paused          |
| localDomain        |     u32      | Solana domain id                                        |
| version            |     u32      | Message Format version                                  |
| signatureThreshold |     u32      | Threshold of signatures required to attest to a message |
| enabledAttesters   | Vec\<Pubkey> | Enabled attesters (message signers)                     |
| maxMessageBodySize |     u64      | Maximum size of message body, in bytes                  |
| nextAvailableNonce |     u64      | Next available nonce from this source domain            |

`UsedNonces`

On-chain account that stores used nonces.

| Field        |    Type     | Description                           |
| ------------ | :---------: | ------------------------------------- |
| remoteDomain |     u32     | Remote domain id                      |
| firstNonce   |     u64     | First nonce in the usedNonces array   |
| usedNonces   | [bool; 500] | Flags indicating if the nonce is used |

### **Events**

---

`OwnershipTransferStarted`

| Field         |  Type  | Description    |
| ------------- | :----: | -------------- |
| previousOwner | Pubkey | Previous owner |
| newOwner      | Pubkey | New owner      |

`OwnershipTransferred`

| Field         |  Type  | Description    |
| ------------- | :----: | -------------- |
| previousOwner | Pubkey | Previous owner |
| newOwner      | Pubkey | New owner      |

`PauserChanged`

| Field      |  Type  | Description |
| ---------- | :----: | ----------- |
| newAddress | Pubkey | New pauser  |

`AttesterManagerUpdated`

| Field                   |  Type  | Description              |
| ----------------------- | :----: | ------------------------ |
| previousAttesterManager | Pubkey | Previous AttesterManager |
| newAttesterManager      | Pubkey | New AttesterManager      |

`MessageSent`

Emitted when a new message is dispatched.

| Field      |   Type   | Description          |
| ---------- | :------: | -------------------- |
| rent_payer |  Pubkey  | Account rent payer   |
| message    | Vec\<u8> | Raw bytes of message |

`MessageReceived`

Emitted when a new message is received.

| Field        |   Type   | Description                                                 |
| ------------ | :------: | ----------------------------------------------------------- |
| caller       |  Pubkey  | Authorized caller of receiveMessage() on destination domain |
| sourceDomain |   u32    | The source domain this message originated from              |
| nonce        |   u64    | Unique message nonce                                        |
| sender       |  Pubkey  | The sender of this message                                  |
| messageBody  | Vec\<u8> | Raw bytes of message                                        |

`SignatureThresholdUpdated`

Emitted when threshold number of attestations (m in m/n multisig) is updated.

| Field                 | Type | Description             |
| --------------------- | :--: | ----------------------- |
| oldSignatureThreshold | u32  | Old signature threshold |
| newSignatureThreshold | u32  | New signature threshold |

`AttesterEnabled`

Emitted when an attester is enabled.

| Field    |   Type   | Description            |
| -------- | :------: | ---------------------- |
| attester | [u8; 20] | Newly enabled attester |

`AttesterDisabled`

Emitted when an attester is disabled.

| Field    |   Type   | Description             |
| -------- | :------: | ----------------------- |
| attester | [u8; 20] | Newly disabled attester |

`MaxMessageBodySizeUpdated`

Emitted when max message body size is updated.

| Field                 | Type | Description                             |
| --------------------- | :--: | --------------------------------------- |
| newMaxMessageBodySize | u64  | New maximum message body size, in bytes |

`Pause`

Emitted when MessageTransmitter is paused.

| Field | Type | Description |
| ----- | :--: | ----------- |
| None  |      |             |

`Unpause`

Emitted when MessageTransmitter is resumed.

| Field | Type | Description |
| ----- | :--: | ----------- |
| None  |      |             |

## TokenMessenger Module

### **Instructions**

---

`initialize`

Initialize TokenMessenger. This operation needs to be performed prior to using any other instructions. During the initialization, authorities are set to the upgrade authority.

| Parameter          |  Type  | Description                    |
| ------------------ | :----: | ------------------------------ |
| tokenController    | Pubkey | Token controller address       |
| messageTransmitter | Pubkey | Local Message Transmitter      |
| messageBodyVersion |  u32   | Version of message body format |

`transferOwnership`

Change the authority of TokenMessenger.

| Parameter |  Type  | Description   |
| --------- | :----: | ------------- |
| newOwner  | Pubkey | New authority |

`acceptOwnership`

Serves as a safety net after the authority has been changed. If an address has been inputted incorrectly, the former authority can rectify this by invoking the `transferOwnership` instruction once more.

| Parameter | Type | Description |
| --------- | :--: | ----------- |
| N/A       |      |             |

`depositForBurn`

Deposit and burn tokens from sender to be minted on destination domain. Minted tokens will be transferred to mintRecipient.

| Parameter         |  Type  | Description                                     |
| ----------------- | :----: | ----------------------------------------------- |
| amount            |  u64   | Amount of tokens to deposit and burn            |
| destinationDomain |  u32   | Destination domain identifier                   |
| mintRecipient     | Pubkey | Address of mint recipient on destination domain |

`depositForBurnWithCaller`

Deposit and burn tokens from sender to be minted on destination domain. Minted tokens will be transferred to mintRecipient.

| Parameter         |  Type  | Description                                     |
| ----------------- | :----: | ----------------------------------------------- |
| amount            |  u64   | Amount of tokens to deposit and burn            |
| destinationDomain |  u32   | Destination domain identifier                   |
| mintRecipient     | Pubkey | Address of mint recipient on destination domain |
| destinationCaller | Pubkey | Caller on the destination domain                |

`replaceDepositForBurn`

Replace a BurnMessage to change the mint recipient and/or destination caller. Allows the sender of a previous BurnMessage (created by depositForBurn) to send a new BurnMessage to replace the original. The new BurnMessage will reuse the amount and burn token of the original, without requiring a new deposit.

This is useful in cases where the user specified an incorrect address and has no way to safely mint the previously burned tokens.

| Parameter            |   Type   | Description                                     |
| -------------------- | :------: | ----------------------------------------------- |
| originalMessage      | Vec\<u8> | Original message to replace                     |
| originalAttestation  | Vec\<u8> | Attestation of originalMessage                  |
| newMintRecipient     |  Pubkey  | Address of mint recipient on destination domain |
| newDestinationCaller |  Pubkey  | Caller on the destination domain                |

`handleReceiveMessage`

Handle an incoming message received by the local MessageTransmitter, and take the appropriate action. For a burn message, mint the associated token to the requested recipient on the local domain.

| Parameter    |   Type   | Description                                       |
| ------------ | :------: | ------------------------------------------------- |
| remoteDomain |   u32    | The domain where the message originated from      |
| sender       |  Pubkey  | The sender of the message (remote TokenMessenger) |
| messageBody  | Vec\<u8> | The message body bytes                            |

`addRemoteTokenMessenger`

Add the TokenMessenger for a remote domain.

| Parameter      |  Type  | Description                      |
| -------------- | :----: | -------------------------------- |
| domain         |  u32   | Domain of remote TokenMessenger  |
| tokenMessenger | Pubkey | Address of remote TokenMessenger |

`removeRemoteTokenMessenger`

Remove the TokenMessenger for a remote domain.

| Parameter | Type | Description |
| --------- | :--: | ----------- |
| N/A       |      |             |

### **State**

---

`TokenMessenger`

Stores TokenMessenger configuration.

| Field                   |  Type  | Description                                                                                     |
| ----------------------- | :----: | ----------------------------------------------------------------------------------------------- |
| owner                   | Pubkey | Main authority of the program                                                                   |
| pendingOwner            | Pubkey | New authority that needs to be accepted                                                         |
| localMessageTransmitter | Pubkey | Local Message Transmitter responsible for sending and receiving messages to/from remote domains |
| messageBodyVersion      |  u32   | Version of message body format                                                                  |

`RemoteTokenMessenger`

Stores information about TokenMessenger on remote domain.

| Field          |  Type  | Description                           |
| -------------- | :----: | ------------------------------------- |
| domain         |  u32   | Domain of remote TokenMessenger       |
| tokenMessenger | Pubkey | Valid TokenMessenger on remote domain |

### **Events**

---

`OwnershipTransferStarted`

| Field         |  Type  | Description    |
| ------------- | :----: | -------------- |
| previousOwner | Pubkey | Previous owner |
| newOwner      | Pubkey | New owner      |

`OwnershipTransferred`

| Field         |  Type  | Description    |
| ------------- | :----: | -------------- |
| previousOwner | Pubkey | Previous owner |
| newOwner      | Pubkey | New owner      |

`DepositForBurn`

Emitted when a DepositForBurn message is sent.

| Field                     |  Type  | Description                                                 |
| ------------------------- | :----: | ----------------------------------------------------------- |
| nonce                     |  u64   | Unique nonce reserved by message                            |
| burnToken                 | Pubkey | Mint address of token burnt on Solana                       |
| amount                    |  u64   | Deposit amount                                              |
| depositor                 | Pubkey | Address where deposit is transferred from                   |
| mintRecipient             | Pubkey | Address receiving minted tokens on destination domain       |
| destinationDomain         |  u32   | Destination domain                                          |
| destinationTokenMessenger | Pubkey | Address of TokenMessenger on destination domain             |
| destinationCaller         | Pubkey | Authorized caller of receiveMessage() on destination domain |

`MintAndWithdraw`

Emitted when tokens are minted.

| Field         |  Type  | Description                        |
| ------------- | :----: | ---------------------------------- |
| mintRecipient | Pubkey | Recipient address of minted tokens |
| amount        |  u64   | Amount of minted tokens            |
| mintToken     | Pubkey | Mint address of minted token       |

`RemoteTokenMessengerAdded`

Emitted when a remote TokenMessenger is added.

| Field          |  Type  | Description                      |
| -------------- | :----: | -------------------------------- |
| domain         |  u32   | Domain of remote TokenMessenger  |
| tokenMessenger | Pubkey | Address of remote TokenMessenger |

`RemoteTokenMessengerRemoved`

Emitted when a remote TokenMessenger is removed.

| Field          |  Type  | Description                      |
| -------------- | :----: | -------------------------------- |
| domain         |  u32   | Domain of remote TokenMessenger  |
| tokenMessenger | Pubkey | Address of remote TokenMessenger |

## TokenMinter

### **Instructions**

---

`setTokenController`

Change the token controller address.

| Parameter          |  Type  | Description          |
| ------------------ | :----: | -------------------- |
| newTokenController | Pubkey | New token controller |

`updatePauser`

Change the pauser address.

| Parameter |  Type  | Description |
| --------- | :----: | ----------- |
| newPauser | Pubkey | New pauser  |

`setMaxBurnAmountPerMessage`

Set the maximum burn amount per message.

| Parameter           | Type | Description                     |
| ------------------- | ---- | ------------------------------- |
| burnLimitPerMessage | u64  | Maximum burn amount per message |

`addLocalToken`

Add a new local token.

| Parameter | Type | Description |
| --------- | :--: | ----------- |
| N/A       |      |             |

`removeLocalToken`

Remove local token.

| Parameter | Type | Description |
| --------- | :--: | ----------- |
| N/A       |      |             |

`linkTokenPair`

Link supported pair of local and remote tokens.

| Parameter    |  Type  | Description          |
| ------------ | :----: | -------------------- |
| remoteDomain |  u32   | Remote domain        |
| remoteToken  | Pubkey | Remote token address |
| localToken   | Pubkey | Local token address  |

`unlinkTokenPair`

Unlink a pair of local and remote tokens.

| Parameter | Type | Description |
| --------- | :--: | ----------- |
| N/A       |      |             |

`pause`

Pause TokenMinter.

| Parameter | Type | Description |
| --------- | :--: | ----------- |
| None      |      |             |

`unpause`

Resume TokenMinter.

| Parameter | Type | Description |
| --------- | :--: | ----------- |
| None      |      |             |

### **State**

---

`TokenMinter`

Stores TokenMinter configuration and records stats.

| Field           |  Type  | Description                                                             |
| --------------- | :----: | ----------------------------------------------------------------------- |
| tokenController | Pubkey | Authority to manage token address mappings, and per-message burn limits |
| pauser          | Pubkey | Pause / unpause authority                                               |
| paused          |  bool  | Specifies whether the TokenMinter is paused                             |

`TokenPair`

Supported mintable tokens on remote domains, mapped to their corresponding local token.

| Field        |  Type  | Description              |
| ------------ | :----: | ------------------------ |
| remoteDomain |  u32   | Remote domain            |
| remoteToken  | Pubkey | Remote token address     |
| localToken   | Pubkey | Local token mint address |

`LocalToken`

Supported tokens on the local domain.

| Field               |  Type  | Description                        |
| ------------------- | :----: | ---------------------------------- |
| custody             | Pubkey | Custody token account              |
| mint                | Pubkey | Token mint address                 |
| burnLimitPerMessage |  u64   | Maximum burn amount per message    |
| messagesSent        |  u64   | Total number of messages sent      |
| messagesReceived    |  u64   | Total number of messages received  |
| amountSent          |  u64   | Amount of tokens sent (burned)     |
| amountReceived      |  u64   | Amount of tokens received (minted) |

### **Events**

---

`SetTokenController`

| Field           |  Type  | Description          |
| --------------- | :----: | -------------------- |
| tokenController | Pubkey | New token controller |

`PauserChanged`

| Field      |  Type  | Description |
| ---------- | :----: | ----------- |
| newAddress | Pubkey | New pauser  |

`Mint`

Emitted when a mint request is processed.

| Field  | Type | Description   |
| ------ | :--: | ------------- |
| amount | u64  | Minted amount |

`Burn`

Emitted when a burn request is processed.

| Field  | Type | Description   |
| ------ | :--: | ------------- |
| amount | u64  | Burned amount |

`SetBurnLimitPerMessage`

Emitted when a burn limit per message is set.

| Field               |  Type  | Description                |
| ------------------- | :----: | -------------------------- |
| token               | Pubkey | Token mint address         |
| burnLimitPerMessage |  u64   | New burn limit per message |

`LocalTokenAdded`

Emitted when a new local token is added.

| Field   |  Type  | Description           |
| ------- | :----: | --------------------- |
| custody | Pubkey | Custody token account |
| mint    | Pubkey | Token mint address    |

`LocalTokenRemoved`

Emitted when a local token is removed.

| Field   |  Type  | Description           |
| ------- | :----: | --------------------- |
| custody | Pubkey | Custody token account |
| mint    | Pubkey | Token mint address    |

`TokenPairLinked`

Emitted when a token pair is linked.

| Field        |  Type  | Description              |
| ------------ | :----: | ------------------------ |
| localToken   | Pubkey | Local token mint address |
| remoteDomain |  u32   | Remote domain            |
| remoteToken  | Pubkey | Remote token address     |

`TokenPairUnlinked`

Emitted when a token pair is linked.

| Field        |  Type  | Description              |
| ------------ | :----: | ------------------------ |
| localToken   | Pubkey | Local token mint address |
| remoteDomain |  u32   | Remote domain            |
| remoteToken  | Pubkey | Remote token address     |

`Pause`

Emitted when TokenMinter is paused.

| Field | Type | Description |
| ----- | :--: | ----------- |
| None  |      |             |

`Unpause`

Emitted when TokenMinter is resumed.

| Field | Type | Description |
| ----- | :--: | ----------- |
| None  |      |             |

## Permissions

The following table shows the permissions for calling each instruction:

| module             | instruction                | permissionless | pauser | attester manager | token controller | owner | upgrade authority | program (e.g. TokenMessenger) | MessageTransmitter |
| ------------------ | -------------------------- | :------------: | :----: | :--------------: | :--------------: | :---: | :---------------: | :---------------------------: | :----------------: |
| MessageTransmitter | initialize                 |                |        |                  |                  |       |         x         |                               |                    |
| MessageTransmitter | transferOwnership          |                |        |                  |                  |   x   |                   |                               |                    |
| MessageTransmitter | acceptOwnership            |                |        |                  |                  |   x   |                   |                               |                    |
| MessageTransmitter | updatePauser               |                |        |                  |                  |   x   |                   |                               |                    |
| MessageTransmitter | updateAttesterManager      |                |        |                  |                  |   x   |                   |                               |                    |
| MessageTransmitter | receiveMessage             |       x        |        |                  |                  |       |                   |                               |                    |
| MessageTransmitter | sendMessage                |                |        |                  |                  |       |                   |               x               |                    |
| MessageTransmitter | sendMessageWithCaller      |                |        |                  |                  |       |                   |               x               |                    |
| MessageTransmitter | replaceMessage             |                |        |                  |                  |       |                   |               x               |                    |
| MessageTransmitter | setSignatureThreshold      |                |        |        x         |                  |       |                   |                               |                    |
| MessageTransmitter | enableAttester             |                |        |        x         |                  |       |                   |                               |                    |
| MessageTransmitter | disableAttester            |                |        |        x         |                  |       |                   |                               |                    |
| MessageTransmitter | setMaxMessageBodySize      |                |        |                  |                  |   x   |                   |                               |                    |
| MessageTransmitter | pause                      |                |   x    |                  |                  |       |                   |                               |                    |
| MessageTransmitter | unpause                    |                |   x    |                  |                  |       |                   |                               |                    |
| TokenMessenger     | initialize                 |                |        |                  |                  |       |         x         |                               |                    |
| TokenMessenger     | transferOwnership          |                |        |                  |                  |   x   |                   |                               |                    |
| TokenMessenger     | acceptOwnership            |                |        |                  |                  |   x   |                   |                               |                    |
| TokenMessenger     | depositForBurn             |       x        |        |                  |                  |       |                   |                               |                    |
| TokenMessenger     | depositForBurnWithCaller   |       x        |        |                  |                  |       |                   |                               |                    |
| TokenMessenger     | replaceDepositForBurn      |       x        |        |                  |                  |       |                   |                               |                    |
| TokenMessenger     | handleReceiveMessage       |                |        |                  |                  |       |                   |                               |         x          |
| TokenMessenger     | addRemoteTokenMessenger    |                |        |                  |                  |   x   |                   |                               |                    |
| TokenMessenger     | removeRemoteTokenMessenger |                |        |                  |                  |   x   |                   |                               |                    |
| TokenMinter        | setTokenController         |                |        |                  |                  |   x   |                   |                               |                    |
| TokenMinter        | updatePauser               |                |        |                  |                  |   x   |                   |                               |                    |
| TokenMinter        | setMaxBurnAmountPerMessage |                |        |                  |        x         |       |                   |                               |                    |
| TokenMinter        | addLocalToken              |                |        |                  |        x         |       |                   |                               |                    |
| TokenMinter        | removeLocalToken           |                |        |                  |        x         |       |                   |                               |                    |
| TokenMinter        | linkTokenPair              |                |        |                  |        x         |       |                   |                               |                    |
| TokenMinter        | unlinkTokenPair            |                |        |                  |        x         |       |                   |                               |                    |
| TokenMinter        | pause                      |                |   x    |                  |                  |       |                   |                               |                    |
| TokenMinter        | unpause                    |                |   x    |                  |                  |       |                   |                               |                    |

## Audits

[TBD]

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

First, generate a new key for the program address with `solana-keygen new -o <PROG_ID_JSON>`. Then replace the existing program ID with the newly generated address in `Anchor.toml` and `programs/cctp/src/lib.rs`.

Also, ensure the path to your wallet in `Anchor.toml` is correct. Alternatively, when running Anchor deploy or test commands, you can specify your wallet with `--provider.wallet` argument. The wallet's pubkey will be set as an upgrade authority upon initial deployment of the program. It is strongly recommended to use multisig upgrade authority when deploying to the mainnet.

To build the program run `anchor build` command from the root `solana-cctp-contracts` directory:

```sh
cd solana-cctp-contracts
anchor build
```

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
anchor deploy --provider.cluster devnet --program-keypair <PROG_ID_JSON>
anchor idl init --provider.cluster devnet --filepath ./target/idl/cctp.json <PROGRAM ID>
```

### Initialize

Before the first use of the CCTP program it must be initialized with the [init](#protocol-module) instruction and one or more TokenMinters added with [addTokenMinter](#protocol-module) instruction.
