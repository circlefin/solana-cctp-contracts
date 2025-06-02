/**
 * Program IDL in camelCase format in order to be used in JS/TS.
 *
 * Note that this is only a type helper and is not the actual IDL. The original
 * IDL can be found at `target/idl/message_transmitter.json`.
 */
export type MessageTransmitter = {
  "address": "CCTPmbSD7gX1bxKPAmg77w8oFzNFpaQiQUWD43TKaecd",
  "metadata": {
    "name": "messageTransmitter",
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
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "messageTransmitterProgramData"
        },
        {
          "name": "messageTransmitterProgram"
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
          "name": "messageTransmitter",
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
          "name": "messageTransmitter",
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
          "name": "messageTransmitter",
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
      "name": "updateAttesterManager",
      "discriminator": [
        175,
        245,
        178,
        104,
        85,
        179,
        71,
        16
      ],
      "accounts": [
        {
          "name": "owner",
          "signer": true
        },
        {
          "name": "messageTransmitter",
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
              "name": "updateAttesterManagerParams"
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
          "name": "messageTransmitter",
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
          "name": "messageTransmitter",
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
      "name": "setMaxMessageBodySize",
      "discriminator": [
        168,
        178,
        8,
        117,
        217,
        167,
        219,
        31
      ],
      "accounts": [
        {
          "name": "owner",
          "signer": true
        },
        {
          "name": "messageTransmitter",
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
              "name": "setMaxMessageBodySizeParams"
            }
          }
        }
      ]
    },
    {
      "name": "enableAttester",
      "discriminator": [
        2,
        11,
        193,
        115,
        5,
        148,
        4,
        198
      ],
      "accounts": [
        {
          "name": "payer",
          "writable": true,
          "signer": true
        },
        {
          "name": "attesterManager",
          "signer": true
        },
        {
          "name": "messageTransmitter",
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
              "name": "enableAttesterParams"
            }
          }
        }
      ]
    },
    {
      "name": "disableAttester",
      "discriminator": [
        61,
        171,
        131,
        95,
        172,
        15,
        227,
        229
      ],
      "accounts": [
        {
          "name": "payer",
          "writable": true,
          "signer": true
        },
        {
          "name": "attesterManager",
          "signer": true
        },
        {
          "name": "messageTransmitter",
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
              "name": "disableAttesterParams"
            }
          }
        }
      ]
    },
    {
      "name": "setSignatureThreshold",
      "discriminator": [
        163,
        19,
        154,
        168,
        82,
        209,
        214,
        219
      ],
      "accounts": [
        {
          "name": "attesterManager",
          "signer": true
        },
        {
          "name": "messageTransmitter",
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
              "name": "setSignatureThresholdParams"
            }
          }
        }
      ]
    },
    {
      "name": "sendMessage",
      "discriminator": [
        57,
        40,
        34,
        178,
        189,
        10,
        65,
        26
      ],
      "accounts": [
        {
          "name": "eventRentPayer",
          "writable": true,
          "signer": true
        },
        {
          "name": "senderAuthorityPda",
          "signer": true
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "messageSentEventData",
          "writable": true,
          "signer": true
        },
        {
          "name": "senderProgram"
        },
        {
          "name": "systemProgram"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "sendMessageParams"
            }
          }
        }
      ],
      "returns": "u64"
    },
    {
      "name": "sendMessageWithCaller",
      "discriminator": [
        212,
        47,
        34,
        52,
        91,
        32,
        176,
        204
      ],
      "accounts": [
        {
          "name": "eventRentPayer",
          "writable": true,
          "signer": true
        },
        {
          "name": "senderAuthorityPda",
          "signer": true
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "messageSentEventData",
          "writable": true,
          "signer": true
        },
        {
          "name": "senderProgram"
        },
        {
          "name": "systemProgram"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "sendMessageWithCallerParams"
            }
          }
        }
      ],
      "returns": "u64"
    },
    {
      "name": "replaceMessage",
      "discriminator": [
        189,
        189,
        210,
        163,
        149,
        205,
        69,
        229
      ],
      "accounts": [
        {
          "name": "eventRentPayer",
          "writable": true,
          "signer": true
        },
        {
          "name": "senderAuthorityPda",
          "signer": true
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "messageSentEventData",
          "writable": true,
          "signer": true
        },
        {
          "name": "senderProgram"
        },
        {
          "name": "systemProgram"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "replaceMessageParams"
            }
          }
        }
      ],
      "returns": "u64"
    },
    {
      "name": "receiveMessage",
      "discriminator": [
        38,
        144,
        127,
        225,
        31,
        225,
        238,
        25
      ],
      "accounts": [
        {
          "name": "payer",
          "writable": true,
          "signer": true
        },
        {
          "name": "caller",
          "signer": true
        },
        {
          "name": "authorityPda"
        },
        {
          "name": "messageTransmitter"
        },
        {
          "name": "usedNonces",
          "writable": true
        },
        {
          "name": "receiver"
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
              "name": "receiveMessageParams"
            }
          }
        }
      ]
    },
    {
      "name": "reclaimEventAccount",
      "discriminator": [
        94,
        198,
        180,
        159,
        131,
        236,
        15,
        174
      ],
      "accounts": [
        {
          "name": "payee",
          "docs": [
            "rent SOL receiver, should match original rent payer"
          ],
          "writable": true,
          "signer": true
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "messageSentEventData",
          "writable": true
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "reclaimEventAccountParams"
            }
          }
        }
      ]
    },
    {
      "name": "getNoncePda",
      "discriminator": [
        114,
        70,
        229,
        212,
        223,
        50,
        33,
        39
      ],
      "accounts": [
        {
          "name": "messageTransmitter"
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "getNoncePdaParams"
            }
          }
        }
      ],
      "returns": "pubkey"
    },
    {
      "name": "isNonceUsed",
      "discriminator": [
        144,
        72,
        107,
        148,
        35,
        218,
        31,
        187
      ],
      "accounts": [
        {
          "name": "usedNonces",
          "docs": [
            "Account will be explicitly loaded to avoid error when it's not initialized"
          ]
        }
      ],
      "args": [
        {
          "name": "params",
          "type": {
            "defined": {
              "name": "isNonceUsedParams"
            }
          }
        }
      ],
      "returns": "bool"
    }
  ],
  "accounts": [
    {
      "name": "messageSent",
      "discriminator": [
        131,
        100,
        133,
        56,
        166,
        225,
        151,
        60
      ]
    },
    {
      "name": "messageTransmitter",
      "discriminator": [
        71,
        40,
        180,
        142,
        19,
        203,
        35,
        252
      ]
    },
    {
      "name": "usedNonces",
      "discriminator": [
        60,
        112,
        18,
        72,
        138,
        181,
        100,
        138
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
      "name": "attesterManagerUpdated",
      "discriminator": [
        5,
        97,
        191,
        108,
        44,
        189,
        69,
        88
      ]
    },
    {
      "name": "messageReceived",
      "discriminator": [
        231,
        68,
        47,
        77,
        173,
        241,
        157,
        166
      ]
    },
    {
      "name": "signatureThresholdUpdated",
      "discriminator": [
        156,
        99,
        103,
        200,
        15,
        38,
        122,
        189
      ]
    },
    {
      "name": "attesterEnabled",
      "discriminator": [
        88,
        57,
        14,
        133,
        5,
        219,
        62,
        190
      ]
    },
    {
      "name": "attesterDisabled",
      "discriminator": [
        186,
        136,
        186,
        14,
        229,
        2,
        121,
        211
      ]
    },
    {
      "name": "maxMessageBodySizeUpdated",
      "discriminator": [
        134,
        206,
        151,
        111,
        137,
        11,
        160,
        225
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
      "name": "programPaused",
      "msg": "Instruction is not allowed at this time"
    },
    {
      "code": 6002,
      "name": "invalidMessageTransmitterState",
      "msg": "Invalid message transmitter state"
    },
    {
      "code": 6003,
      "name": "invalidSignatureThreshold",
      "msg": "Invalid signature threshold"
    },
    {
      "code": 6004,
      "name": "signatureThresholdAlreadySet",
      "msg": "Signature threshold already set"
    },
    {
      "code": 6005,
      "name": "invalidOwner",
      "msg": "Invalid owner"
    },
    {
      "code": 6006,
      "name": "invalidPauser",
      "msg": "Invalid pauser"
    },
    {
      "code": 6007,
      "name": "invalidAttesterManager",
      "msg": "Invalid attester manager"
    },
    {
      "code": 6008,
      "name": "invalidAttester",
      "msg": "Invalid attester"
    },
    {
      "code": 6009,
      "name": "attesterAlreadyEnabled",
      "msg": "Attester already enabled"
    },
    {
      "code": 6010,
      "name": "tooFewEnabledAttesters",
      "msg": "Too few enabled attesters"
    },
    {
      "code": 6011,
      "name": "signatureThresholdTooLow",
      "msg": "Signature threshold is too low"
    },
    {
      "code": 6012,
      "name": "attesterAlreadyDisabled",
      "msg": "Attester already disabled"
    },
    {
      "code": 6013,
      "name": "messageBodyLimitExceeded",
      "msg": "Message body exceeds max size"
    },
    {
      "code": 6014,
      "name": "invalidDestinationCaller",
      "msg": "Invalid destination caller"
    },
    {
      "code": 6015,
      "name": "invalidRecipient",
      "msg": "Invalid message recipient"
    },
    {
      "code": 6016,
      "name": "senderNotPermitted",
      "msg": "Sender is not permitted"
    },
    {
      "code": 6017,
      "name": "invalidSourceDomain",
      "msg": "Invalid source domain"
    },
    {
      "code": 6018,
      "name": "invalidDestinationDomain",
      "msg": "Invalid destination domain"
    },
    {
      "code": 6019,
      "name": "invalidMessageVersion",
      "msg": "Invalid message version"
    },
    {
      "code": 6020,
      "name": "invalidUsedNoncesAccount",
      "msg": "Invalid used nonces account"
    },
    {
      "code": 6021,
      "name": "invalidRecipientProgram",
      "msg": "Invalid recipient program"
    },
    {
      "code": 6022,
      "name": "invalidNonce",
      "msg": "Invalid nonce"
    },
    {
      "code": 6023,
      "name": "nonceAlreadyUsed",
      "msg": "Nonce already used"
    },
    {
      "code": 6024,
      "name": "messageTooShort",
      "msg": "Message is too short"
    },
    {
      "code": 6025,
      "name": "malformedMessage",
      "msg": "Malformed message"
    },
    {
      "code": 6026,
      "name": "invalidSignatureOrderOrDupe",
      "msg": "Invalid signature order or dupe"
    },
    {
      "code": 6027,
      "name": "invalidAttesterSignature",
      "msg": "Invalid attester signature"
    },
    {
      "code": 6028,
      "name": "invalidAttestationLength",
      "msg": "Invalid attestation length"
    },
    {
      "code": 6029,
      "name": "invalidSignatureRecoveryId",
      "msg": "Invalid signature recovery ID"
    },
    {
      "code": 6030,
      "name": "invalidSignatureSValue",
      "msg": "Invalid signature S value"
    },
    {
      "code": 6031,
      "name": "invalidMessageHash",
      "msg": "Invalid message hash"
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
      "name": "disableAttesterParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "attester",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "enableAttesterParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "newAttester",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "getNoncePdaParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "nonce",
            "type": "u64"
          },
          {
            "name": "sourceDomain",
            "type": "u32"
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
            "name": "localDomain",
            "type": "u32"
          },
          {
            "name": "attester",
            "type": "pubkey"
          },
          {
            "name": "maxMessageBodySize",
            "type": "u64"
          },
          {
            "name": "version",
            "type": "u32"
          }
        ]
      }
    },
    {
      "name": "isNonceUsedParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "nonce",
            "type": "u64"
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
      "name": "receiveMessageParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "message",
            "type": "bytes"
          },
          {
            "name": "attestation",
            "type": "bytes"
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
      "name": "reclaimEventAccountParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "attestation",
            "type": "bytes"
          }
        ]
      }
    },
    {
      "name": "replaceMessageParams",
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
            "name": "newMessageBody",
            "type": "bytes"
          },
          {
            "name": "newDestinationCaller",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "sendMessageWithCallerParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "destinationDomain",
            "type": "u32"
          },
          {
            "name": "recipient",
            "type": "pubkey"
          },
          {
            "name": "messageBody",
            "type": "bytes"
          },
          {
            "name": "destinationCaller",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "sendMessageParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "destinationDomain",
            "type": "u32"
          },
          {
            "name": "recipient",
            "type": "pubkey"
          },
          {
            "name": "messageBody",
            "type": "bytes"
          }
        ]
      }
    },
    {
      "name": "setMaxMessageBodySizeParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "newMaxMessageBodySize",
            "type": "u64"
          }
        ]
      }
    },
    {
      "name": "setSignatureThresholdParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "newSignatureThreshold",
            "type": "u32"
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
      "name": "unpauseParams",
      "type": {
        "kind": "struct"
      }
    },
    {
      "name": "updateAttesterManagerParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "newAttesterManager",
            "type": "pubkey"
          }
        ]
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
      "name": "mathError",
      "type": {
        "kind": "enum",
        "variants": [
          {
            "name": "mathOverflow"
          },
          {
            "name": "mathUnderflow"
          },
          {
            "name": "errorInDivision"
          }
        ]
      }
    },
    {
      "name": "messageSent",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "rentPayer",
            "type": "pubkey"
          },
          {
            "name": "message",
            "type": "bytes"
          }
        ]
      }
    },
    {
      "name": "messageTransmitter",
      "docs": [
        "Main state of the MessageTransmitter program"
      ],
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
            "name": "attesterManager",
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
            "name": "localDomain",
            "type": "u32"
          },
          {
            "name": "version",
            "type": "u32"
          },
          {
            "name": "signatureThreshold",
            "type": "u32"
          },
          {
            "name": "enabledAttesters",
            "type": {
              "vec": "pubkey"
            }
          },
          {
            "name": "maxMessageBodySize",
            "type": "u64"
          },
          {
            "name": "nextAvailableNonce",
            "type": "u64"
          }
        ]
      }
    },
    {
      "name": "usedNonces",
      "docs": [
        "UsedNonces account holds an array of bits that indicate which nonces were already used",
        "so they can't be resused to receive new messages. Array starts with the first_nonce and",
        "holds flags for UsedNonces::MAX_NONCES. Nonces are recorded separately for each remote_domain."
      ],
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "remoteDomain",
            "type": "u32"
          },
          {
            "name": "firstNonce",
            "type": "u64"
          },
          {
            "name": "usedNonces",
            "type": {
              "array": [
                "u64",
                100
              ]
            }
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
      "name": "attesterManagerUpdated",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "previousAttesterManager",
            "type": "pubkey"
          },
          {
            "name": "newAttesterManager",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "messageReceived",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "caller",
            "type": "pubkey"
          },
          {
            "name": "sourceDomain",
            "type": "u32"
          },
          {
            "name": "nonce",
            "type": "u64"
          },
          {
            "name": "sender",
            "type": "pubkey"
          },
          {
            "name": "messageBody",
            "type": "bytes"
          }
        ]
      }
    },
    {
      "name": "signatureThresholdUpdated",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "oldSignatureThreshold",
            "type": "u32"
          },
          {
            "name": "newSignatureThreshold",
            "type": "u32"
          }
        ]
      }
    },
    {
      "name": "attesterEnabled",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "attester",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "attesterDisabled",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "attester",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "maxMessageBodySizeUpdated",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "newMaxMessageBodySize",
            "type": "u64"
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
    }
  ]
};
