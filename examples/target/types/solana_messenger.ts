export type SolanaMessenger = {
  "version": "0.1.0",
  "name": "solana_messenger",
  "instructions": [
    {
      "name": "handleReceiveMessage",
      "accounts": [
        {
          "name": "authorityPda",
          "isMut": false,
          "isSigner": true
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": "HandleReceiveMessageParams"
          }
        }
      ]
    }
  ],
  "types": [
    {
      "name": "handleReceiveMessageParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "remoteDomain",
            "type": "u32"
          },
          {
            "name": "sender",
            "type": "publicKey"
          },
          {
            "name": "messageBody",
            "type": "bytes"
          },
          {
            "name": "authorityBump",
            "type": "u8"
          }
        ]
      }
    }
  ]
};

export const IDL: SolanaMessenger = {
  "version": "0.1.0",
  "name": "solana_messenger",
  "instructions": [
    {
      "name": "handleReceiveMessage",
      "accounts": [
        {
          "name": "authorityPda",
          "isMut": false,
          "isSigner": true
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": "HandleReceiveMessageParams"
          }
        }
      ]
    }
  ],
  "types": [
    {
      "name": "handleReceiveMessageParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "remoteDomain",
            "type": "u32"
          },
          {
            "name": "sender",
            "type": "publicKey"
          },
          {
            "name": "messageBody",
            "type": "bytes"
          },
          {
            "name": "authorityBump",
            "type": "u8"
          }
        ]
      }
    }
  ]
};
