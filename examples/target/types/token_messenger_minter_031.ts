/**
 * Program IDL in camelCase format in order to be used in JS/TS.
 *
 * Note that this is only a type helper and is not the actual IDL. The original
 * IDL can be found at `target/idl/token_messenger_minter.json`.
 */
export type TokenMessengerMinter = {
  "address": "CCTPiPYPc6AsJuwueEnWgSgucamXDZwBd53dQ11YiKX3",
  "metadata": {
    "name": "tokenMessengerMinter",
    "version": "0.1.0",
    "spec": "0.1.0"
  },
  "instructions": [
    {
      "name": "initialize",
      "discriminator": [
        175,
        175,
        109,
        31,
        13,
        152,
        155,
        237
      ],
      "accounts": [
        {
          "name": "payer",
          "writable": true,
          "signer": true
        },
        {
          "name": "upgradeAuthority",
          "signer": true
        },
        {
          "name": "authorityPda"
        },
        {
          "name": "tokenMessenger",
          "writable": true
        },
        {
          "name": "tokenMinter",
          "writable": true
        },
        {
          "name": "tokenMessengerMinterProgramData"
        },
        {
          "name": "tokenMessengerMinterProgram"
        },
        {
          "name": "systemProgram"
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "initializeParams"
            }
          }
        }
      ]
    },
    {
      "name": "transferOwnership",
      "discriminator": [
        65,
        177,
        215,
        73,
        53,
        45,
        99,
        47
      ],
      "accounts": [
        {
          "name": "owner",
          "signer": true
        },
        {
          "name": "tokenMessenger",
          "writable": true
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "transferOwnershipParams"
            }
          }
        }
      ]
    },
    {
      "name": "acceptOwnership",
      "discriminator": [
        172,
        23,
        43,
        13,
        238,
        213,
        85,
        150
      ],
      "accounts": [
        {
          "name": "pendingOwner",
          "signer": true
        },
        {
          "name": "tokenMessenger",
          "writable": true
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "acceptOwnershipParams"
            }
          }
        }
      ]
    },
    {
      "name": "addRemoteTokenMessenger",
      "discriminator": [
        12,
        149,
        172,
        165,
        111,
        202,
        24,
        33
      ],
      "accounts": [
        {
          "name": "payer",
          "writable": true,
          "signer": true
        },
        {
          "name": "owner",
          "signer": true
        },
        {
          "name": "tokenMessenger"
        },
        {
          "name": "remoteTokenMessenger",
          "writable": true
        },
        {
          "name": "systemProgram"
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "addRemoteTokenMessengerParams"
            }
          }
        }
      ]
    },
    {
      "name": "removeRemoteTokenMessenger",
      "discriminator": [
        65,
        114,
        66,
        85,
        169,
        98,
        177,
        146
      ],
      "accounts": [
        {
          "name": "payee",
          "writable": true,
          "signer": true
        },
        {
          "name": "owner",
          "signer": true
        },
        {
          "name": "tokenMessenger"
        },
        {
          "name": "remoteTokenMessenger",
          "writable": true
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "removeRemoteTokenMessengerParams"
            }
          }
        }
      ]
    },
    {
      "name": "depositForBurn",
      "discriminator": [
        215,
        60,
        61,
        46,
        114,
        55,
        128,
        176
      ],
      "accounts": [
        {
          "name": "owner",
          "signer": true
        },
        {
          "name": "eventRentPayer",
          "writable": true,
          "signer": true
        },
        {
          "name": "senderAuthorityPda"
        },
        {
          "name": "burnTokenAccount",
          "writable": true
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "tokenMessenger"
        },
        {
          "name": "remoteTokenMessenger"
        },
        {
          "name": "tokenMinter"
        },
        {
          "name": "localToken",
          "writable": true
        },
        {
          "name": "burnTokenMint",
          "writable": true
        },
        {
          "name": "messageSentEventData",
          "writable": true,
          "signer": true
        },
        {
          "name": "messageTransmitterProgram"
        },
        {
          "name": "tokenMessengerMinterProgram"
        },
        {
          "name": "tokenProgram"
        },
        {
          "name": "systemProgram"
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "depositForBurnParams"
            }
          }
        }
      ],
      "returns": "u64"
    },
    {
      "name": "depositForBurnWithCaller",
      "discriminator": [
        167,
        222,
        19,
        114,
        85,
        21,
        14,
        118
      ],
      "accounts": [
        {
          "name": "owner",
          "signer": true
        },
        {
          "name": "eventRentPayer",
          "writable": true,
          "signer": true
        },
        {
          "name": "senderAuthorityPda"
        },
        {
          "name": "burnTokenAccount",
          "writable": true
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "tokenMessenger"
        },
        {
          "name": "remoteTokenMessenger"
        },
        {
          "name": "tokenMinter"
        },
        {
          "name": "localToken",
          "writable": true
        },
        {
          "name": "burnTokenMint",
          "writable": true
        },
        {
          "name": "messageSentEventData",
          "writable": true,
          "signer": true
        },
        {
          "name": "messageTransmitterProgram"
        },
        {
          "name": "tokenMessengerMinterProgram"
        },
        {
          "name": "tokenProgram"
        },
        {
          "name": "systemProgram"
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "depositForBurnWithCallerParams"
            }
          }
        }
      ],
      "returns": "u64"
    },
    {
      "name": "replaceDepositForBurn",
      "discriminator": [
        7,
        27,
        93,
        132,
        1,
        80,
        19,
        163
      ],
      "accounts": [
        {
          "name": "owner",
          "signer": true
        },
        {
          "name": "eventRentPayer",
          "writable": true,
          "signer": true
        },
        {
          "name": "senderAuthorityPda"
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "tokenMessenger"
        },
        {
          "name": "messageSentEventData",
          "writable": true,
          "signer": true
        },
        {
          "name": "messageTransmitterProgram"
        },
        {
          "name": "tokenMessengerMinterProgram"
        },
        {
          "name": "systemProgram"
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "replaceDepositForBurnParams"
            }
          }
        }
      ],
      "returns": "u64"
    },
    {
      "name": "handleReceiveMessage",
      "discriminator": [
        133,
        102,
        1,
        180,
        145,
        11,
        138,
        180
      ],
      "accounts": [
        {
          "name": "authorityPda",
          "signer": true
        },
        {
          "name": "tokenMessenger"
        },
        {
          "name": "remoteTokenMessenger"
        },
        {
          "name": "tokenMinter"
        },
        {
          "name": "localToken",
          "writable": true
        },
        {
          "name": "tokenPair"
        },
        {
          "name": "recipientTokenAccount",
          "writable": true
        },
        {
          "name": "custodyTokenAccount",
          "writable": true
        },
        {
          "name": "tokenProgram"
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "handleReceiveMessageParams"
            }
          }
        }
      ]
    },
    {
      "name": "setTokenController",
      "discriminator": [
        88,
        6,
        98,
        10,
        79,
        59,
        15,
        24
      ],
      "accounts": [
        {
          "name": "owner",
          "signer": true
        },
        {
          "name": "tokenMessenger"
        },
        {
          "name": "tokenMinter",
          "writable": true
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "setTokenControllerParams"
            }
          }
        }
      ]
    },
    {
      "name": "pause",
      "discriminator": [
        211,
        22,
        221,
        251,
        74,
        121,
        193,
        47
      ],
      "accounts": [
        {
          "name": "pauser",
          "signer": true
        },
        {
          "name": "tokenMinter",
          "writable": true
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "pauseParams"
            }
          }
        }
      ]
    },
    {
      "name": "unpause",
      "discriminator": [
        169,
        144,
        4,
        38,
        10,
        141,
        188,
        255
      ],
      "accounts": [
        {
          "name": "pauser",
          "signer": true
        },
        {
          "name": "tokenMinter",
          "writable": true
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "unpauseParams"
            }
          }
        }
      ]
    },
    {
      "name": "updatePauser",
      "discriminator": [
        140,
        171,
        211,
        132,
        57,
        201,
        16,
        254
      ],
      "accounts": [
        {
          "name": "owner",
          "signer": true
        },
        {
          "name": "tokenMessenger"
        },
        {
          "name": "tokenMinter",
          "writable": true
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "updatePauserParams"
            }
          }
        }
      ]
    },
    {
      "name": "setMaxBurnAmountPerMessage",
      "discriminator": [
        30,
        128,
        145,
        240,
        70,
        237,
        109,
        207
      ],
      "accounts": [
        {
          "name": "tokenController",
          "signer": true
        },
        {
          "name": "tokenMinter"
        },
        {
          "name": "localToken",
          "writable": true
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "setMaxBurnAmountPerMessageParams"
            }
          }
        }
      ]
    },
    {
      "name": "addLocalToken",
      "discriminator": [
        213,
        199,
        205,
        18,
        98,
        124,
        73,
        198
      ],
      "accounts": [
        {
          "name": "payer",
          "writable": true,
          "signer": true
        },
        {
          "name": "tokenController",
          "signer": true
        },
        {
          "name": "tokenMinter"
        },
        {
          "name": "localToken",
          "writable": true
        },
        {
          "name": "custodyTokenAccount",
          "writable": true
        },
        {
          "name": "localTokenMint"
        },
        {
          "name": "tokenProgram"
        },
        {
          "name": "systemProgram"
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "addLocalTokenParams"
            }
          }
        }
      ]
    },
    {
      "name": "removeLocalToken",
      "discriminator": [
        27,
        43,
        66,
        170,
        188,
        44,
        109,
        97
      ],
      "accounts": [
        {
          "name": "payee",
          "writable": true,
          "signer": true
        },
        {
          "name": "tokenController",
          "signer": true
        },
        {
          "name": "tokenMinter"
        },
        {
          "name": "localToken",
          "writable": true
        },
        {
          "name": "custodyTokenAccount",
          "writable": true
        },
        {
          "name": "tokenProgram"
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "removeLocalTokenParams"
            }
          }
        }
      ]
    },
    {
      "name": "linkTokenPair",
      "discriminator": [
        68,
        162,
        24,
        104,
        125,
        46,
        130,
        12
      ],
      "accounts": [
        {
          "name": "payer",
          "writable": true,
          "signer": true
        },
        {
          "name": "tokenController",
          "signer": true
        },
        {
          "name": "tokenMinter"
        },
        {
          "name": "tokenPair",
          "writable": true
        },
        {
          "name": "systemProgram"
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "linkTokenPairParams"
            }
          }
        }
      ]
    },
    {
      "name": "unlinkTokenPair",
      "discriminator": [
        52,
        198,
        100,
        114,
        104,
        174,
        85,
        58
      ],
      "accounts": [
        {
          "name": "payee",
          "writable": true,
          "signer": true
        },
        {
          "name": "tokenController",
          "signer": true
        },
        {
          "name": "tokenMinter"
        },
        {
          "name": "tokenPair",
          "writable": true
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "uninkTokenPairParams"
            }
          }
        }
      ]
    },
    {
      "name": "burnTokenCustody",
      "discriminator": [
        233,
        136,
        180,
        175,
        112,
        41,
        62,
        71
      ],
      "accounts": [
        {
          "name": "payee",
          "writable": true,
          "signer": true
        },
        {
          "name": "tokenController",
          "signer": true
        },
        {
          "name": "tokenMinter"
        },
        {
          "name": "localToken"
        },
        {
          "name": "custodyTokenAccount",
          "writable": true
        },
        {
          "name": "custodyTokenMint",
          "writable": true
        },
        {
          "name": "tokenProgram"
        },
        {
          "name": "eventAuthority"
        },
        {
          "name": "program"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "burnTokenCustodyParams"
            }
          }
        }
      ]
    }
  ],
  "accounts": [
    {
      "name": "tokenMessenger",
      "discriminator": [
        162,
        4,
        242,
        52,
        147,
        243,
        221,
        96
      ]
    },
    {
      "name": "remoteTokenMessenger",
      "discriminator": [
        105,
        115,
        174,
        34,
        95,
        233,
        138,
        252
      ]
    },
    {
      "name": "tokenMinter",
      "discriminator": [
        122,
        133,
        84,
        63,
        57,
        159,
        171,
        206
      ]
    },
    {
      "name": "tokenPair",
      "discriminator": [
        17,
        214,
        45,
        176,
        229,
        149,
        197,
        71
      ]
    },
    {
      "name": "localToken",
      "discriminator": [
        159,
        131,
        58,
        170,
        193,
        84,
        128,
        182
      ]
    }
  ],
  "events": [
    {
      "name": "ownershipTransferStarted",
      "discriminator": [
        183,
        253,
        239,
        246,
        140,
        179,
        133,
        105
      ]
    },
    {
      "name": "ownershipTransferred",
      "discriminator": [
        172,
        61,
        205,
        183,
        250,
        50,
        38,
        98
      ]
    },
    {
      "name": "depositForBurn",
      "discriminator": [
        144,
        252,
        145,
        146,
        6,
        74,
        167,
        235
      ]
    },
    {
      "name": "mintAndWithdraw",
      "discriminator": [
        75,
        67,
        229,
        70,
        162,
        126,
        0,
        71
      ]
    },
    {
      "name": "remoteTokenMessengerAdded",
      "discriminator": [
        251,
        29,
        63,
        244,
        48,
        114,
        210,
        175
      ]
    },
    {
      "name": "remoteTokenMessengerRemoved",
      "discriminator": [
        255,
        121,
        137,
        39,
        230,
        125,
        11,
        30
      ]
    },
    {
      "name": "setTokenController",
      "discriminator": [
        193,
        44,
        243,
        83,
        230,
        72,
        120,
        216
      ]
    },
    {
      "name": "pauserChanged",
      "discriminator": [
        142,
        157,
        158,
        87,
        127,
        8,
        119,
        55
      ]
    },
    {
      "name": "setBurnLimitPerMessage",
      "discriminator": [
        98,
        152,
        88,
        191,
        245,
        30,
        27,
        209
      ]
    },
    {
      "name": "localTokenAdded",
      "discriminator": [
        146,
        8,
        224,
        150,
        122,
        173,
        23,
        39
      ]
    },
    {
      "name": "localTokenRemoved",
      "discriminator": [
        181,
        204,
        1,
        95,
        2,
        50,
        66,
        210
      ]
    },
    {
      "name": "tokenPairLinked",
      "discriminator": [
        2,
        14,
        177,
        64,
        155,
        93,
        196,
        141
      ]
    },
    {
      "name": "tokenPairUnlinked",
      "discriminator": [
        78,
        232,
        230,
        208,
        180,
        212,
        246,
        72
      ]
    },
    {
      "name": "pause",
      "discriminator": [
        194,
        251,
        232,
        196,
        118,
        95,
        111,
        219
      ]
    },
    {
      "name": "unpause",
      "discriminator": [
        241,
        149,
        104,
        90,
        199,
        136,
        219,
        146
      ]
    },
    {
      "name": "tokenCustodyBurned",
      "discriminator": [
        219,
        143,
        107,
        226,
        67,
        75,
        178,
        46
      ]
    }
  ],
  "errors": [
    {
      "code": 6000,
      "name": "invalidAuthority",
      "msg": "Invalid authority"
    },
    {
      "code": 6001,
      "name": "invalidTokenMessengerState",
      "msg": "Invalid token messenger state"
    },
    {
      "code": 6002,
      "name": "invalidTokenMessenger",
      "msg": "Invalid token messenger"
    },
    {
      "code": 6003,
      "name": "invalidOwner",
      "msg": "Invalid owner"
    },
    {
      "code": 6004,
      "name": "malformedMessage",
      "msg": "Malformed message"
    },
    {
      "code": 6005,
      "name": "invalidMessageBodyVersion",
      "msg": "Invalid message body version"
    },
    {
      "code": 6006,
      "name": "invalidAmount",
      "msg": "Invalid amount"
    },
    {
      "code": 6007,
      "name": "invalidDestinationDomain",
      "msg": "Invalid destination domain"
    },
    {
      "code": 6008,
      "name": "invalidDestinationCaller",
      "msg": "Invalid destination caller"
    },
    {
      "code": 6009,
      "name": "invalidMintRecipient",
      "msg": "Invalid mint recipient"
    },
    {
      "code": 6010,
      "name": "invalidSender",
      "msg": "Invalid sender"
    },
    {
      "code": 6011,
      "name": "invalidTokenPair",
      "msg": "Invalid token pair"
    },
    {
      "code": 6012,
      "name": "invalidTokenMint",
      "msg": "Invalid token mint"
    }
  ],
  "types": [
    {
      "name": "acceptOwnershipParams",
      "type": {
        "kind": "struct"
      }
    },
    {
      "name": "addRemoteTokenMessengerParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "domain",
            "type": "u32"
          },
          {
            "name": "tokenMessenger",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "depositForBurnWithCallerParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "amount",
            "type": "u64"
          },
          {
            "name": "destinationDomain",
            "type": "u32"
          },
          {
            "name": "mintRecipient",
            "type": "pubkey"
          },
          {
            "name": "destinationCaller",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "depositForBurnParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "amount",
            "type": "u64"
          },
          {
            "name": "destinationDomain",
            "type": "u32"
          },
          {
            "name": "mintRecipient",
            "type": "pubkey"
          }
        ]
      }
    },
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
            "type": "pubkey"
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
    },
    {
      "name": "initializeParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "tokenController",
            "type": "pubkey"
          },
          {
            "name": "localMessageTransmitter",
            "type": "pubkey"
          },
          {
            "name": "messageBodyVersion",
            "type": "u32"
          }
        ]
      }
    },
    {
      "name": "removeRemoteTokenMessengerParams",
      "type": {
        "kind": "struct"
      }
    },
    {
      "name": "replaceDepositForBurnParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "originalMessage",
            "type": "bytes"
          },
          {
            "name": "originalAttestation",
            "type": "bytes"
          },
          {
            "name": "newDestinationCaller",
            "type": "pubkey"
          },
          {
            "name": "newMintRecipient",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "transferOwnershipParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "newOwner",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "addLocalTokenParams",
      "type": {
        "kind": "struct"
      }
    },
    {
      "name": "burnTokenCustodyParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "amount",
            "type": "u64"
          }
        ]
      }
    },
    {
      "name": "linkTokenPairParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "localToken",
            "type": "pubkey"
          },
          {
            "name": "remoteDomain",
            "type": "u32"
          },
          {
            "name": "remoteToken",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "pauseParams",
      "type": {
        "kind": "struct"
      }
    },
    {
      "name": "removeLocalTokenParams",
      "type": {
        "kind": "struct"
      }
    },
    {
      "name": "setMaxBurnAmountPerMessageParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "burnLimitPerMessage",
            "type": "u64"
          }
        ]
      }
    },
    {
      "name": "setTokenControllerParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "tokenController",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "uninkTokenPairParams",
      "type": {
        "kind": "struct"
      }
    },
    {
      "name": "unpauseParams",
      "type": {
        "kind": "struct"
      }
    },
    {
      "name": "updatePauserParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "newPauser",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "tokenMinterError",
      "type": {
        "kind": "enum",
        "variants": [
          {
            "name": "invalidAuthority"
          },
          {
            "name": "invalidTokenMinterState"
          },
          {
            "name": "programPaused"
          },
          {
            "name": "invalidTokenPairState"
          },
          {
            "name": "invalidLocalTokenState"
          },
          {
            "name": "invalidPauser"
          },
          {
            "name": "invalidTokenController"
          },
          {
            "name": "burnAmountExceeded"
          },
          {
            "name": "invalidAmount"
          }
        ]
      }
    },
    {
      "name": "tokenMessenger",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "owner",
            "type": "pubkey"
          },
          {
            "name": "pendingOwner",
            "type": "pubkey"
          },
          {
            "name": "localMessageTransmitter",
            "type": "pubkey"
          },
          {
            "name": "messageBodyVersion",
            "type": "u32"
          },
          {
            "name": "authorityBump",
            "type": "u8"
          }
        ]
      }
    },
    {
      "name": "remoteTokenMessenger",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "domain",
            "type": "u32"
          },
          {
            "name": "tokenMessenger",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "tokenMinter",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "tokenController",
            "type": "pubkey"
          },
          {
            "name": "pauser",
            "type": "pubkey"
          },
          {
            "name": "paused",
            "type": "bool"
          },
          {
            "name": "bump",
            "type": "u8"
          }
        ]
      }
    },
    {
      "name": "tokenPair",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "remoteDomain",
            "type": "u32"
          },
          {
            "name": "remoteToken",
            "type": "pubkey"
          },
          {
            "name": "localToken",
            "type": "pubkey"
          },
          {
            "name": "bump",
            "type": "u8"
          }
        ]
      }
    },
    {
      "name": "localToken",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "custody",
            "type": "pubkey"
          },
          {
            "name": "mint",
            "type": "pubkey"
          },
          {
            "name": "burnLimitPerMessage",
            "type": "u64"
          },
          {
            "name": "messagesSent",
            "type": "u64"
          },
          {
            "name": "messagesReceived",
            "type": "u64"
          },
          {
            "name": "amountSent",
            "type": "u128"
          },
          {
            "name": "amountReceived",
            "type": "u128"
          },
          {
            "name": "bump",
            "type": "u8"
          },
          {
            "name": "custodyBump",
            "type": "u8"
          }
        ]
      }
    },
    {
      "name": "ownershipTransferStarted",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "previousOwner",
            "type": "pubkey"
          },
          {
            "name": "newOwner",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "ownershipTransferred",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "previousOwner",
            "type": "pubkey"
          },
          {
            "name": "newOwner",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "depositForBurn",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "nonce",
            "type": "u64"
          },
          {
            "name": "burnToken",
            "type": "pubkey"
          },
          {
            "name": "amount",
            "type": "u64"
          },
          {
            "name": "depositor",
            "type": "pubkey"
          },
          {
            "name": "mintRecipient",
            "type": "pubkey"
          },
          {
            "name": "destinationDomain",
            "type": "u32"
          },
          {
            "name": "destinationTokenMessenger",
            "type": "pubkey"
          },
          {
            "name": "destinationCaller",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "mintAndWithdraw",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "mintRecipient",
            "type": "pubkey"
          },
          {
            "name": "amount",
            "type": "u64"
          },
          {
            "name": "mintToken",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "remoteTokenMessengerAdded",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "domain",
            "type": "u32"
          },
          {
            "name": "tokenMessenger",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "remoteTokenMessengerRemoved",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "domain",
            "type": "u32"
          },
          {
            "name": "tokenMessenger",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "setTokenController",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "tokenController",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "pauserChanged",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "newAddress",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "setBurnLimitPerMessage",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "token",
            "type": "pubkey"
          },
          {
            "name": "burnLimitPerMessage",
            "type": "u64"
          }
        ]
      }
    },
    {
      "name": "localTokenAdded",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "custody",
            "type": "pubkey"
          },
          {
            "name": "mint",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "localTokenRemoved",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "custody",
            "type": "pubkey"
          },
          {
            "name": "mint",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "tokenPairLinked",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "localToken",
            "type": "pubkey"
          },
          {
            "name": "remoteDomain",
            "type": "u32"
          },
          {
            "name": "remoteToken",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "tokenPairUnlinked",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "localToken",
            "type": "pubkey"
          },
          {
            "name": "remoteDomain",
            "type": "u32"
          },
          {
            "name": "remoteToken",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "pause",
      "type": {
        "kind": "struct",
        "fields": []
      }
    },
    {
      "name": "unpause",
      "type": {
        "kind": "struct",
        "fields": []
      }
    },
    {
      "name": "tokenCustodyBurned",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "custodyTokenAccount",
            "type": "pubkey"
          },
          {
            "name": "amount",
            "type": "u64"
          }
        ]
      }
    }
  ]
};
