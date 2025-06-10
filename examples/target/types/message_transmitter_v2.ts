/**
 * Program IDL in camelCase format in order to be used in JS/TS.
 *
 * Note that this is only a type helper and is not the actual IDL. The original
 * IDL can be found at `target/idl/message_transmitter_v2.json`.
 */
export type MessageTransmitterV2 = {
  "address": "CCTPV2Sm4AdWt5296sk4P66VBZ7bEhcARwFaaS9YPbeC",
  "metadata": {
    "name": "messageTransmitterV2",
    "version": "0.2.0",
    "spec": "0.1.0",
    "description": "Message Transmitter for Cross-Chain Transfer Protocol V2",
    "repository": "https://github.com/circlefin/solana-cctp-contracts"
  },
  "instructions": [
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
          "signer": true,
          "relations": [
            "messageTransmitter"
          ]
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "eventAuthority",
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  95,
                  95,
                  101,
                  118,
                  101,
                  110,
                  116,
                  95,
                  97,
                  117,
                  116,
                  104,
                  111,
                  114,
                  105,
                  116,
                  121
                ]
              }
            ]
          }
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
          "signer": true,
          "relations": [
            "messageTransmitter"
          ]
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "systemProgram",
          "address": "11111111111111111111111111111111"
        },
        {
          "name": "eventAuthority",
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  95,
                  95,
                  101,
                  118,
                  101,
                  110,
                  116,
                  95,
                  97,
                  117,
                  116,
                  104,
                  111,
                  114,
                  105,
                  116,
                  121
                ]
              }
            ]
          }
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
          "signer": true,
          "relations": [
            "messageTransmitter"
          ]
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "systemProgram",
          "address": "11111111111111111111111111111111"
        },
        {
          "name": "eventAuthority",
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  95,
                  95,
                  101,
                  118,
                  101,
                  110,
                  116,
                  95,
                  97,
                  117,
                  116,
                  104,
                  111,
                  114,
                  105,
                  116,
                  121
                ]
              }
            ]
          }
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
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  109,
                  101,
                  115,
                  115,
                  97,
                  103,
                  101,
                  95,
                  116,
                  114,
                  97,
                  110,
                  115,
                  109,
                  105,
                  116,
                  116,
                  101,
                  114
                ]
              }
            ]
          }
        },
        {
          "name": "messageTransmitterProgramData"
        },
        {
          "name": "messageTransmitterProgram",
          "address": "CCTPV2Sm4AdWt5296sk4P66VBZ7bEhcARwFaaS9YPbeC"
        },
        {
          "name": "systemProgram",
          "address": "11111111111111111111111111111111"
        },
        {
          "name": "eventAuthority",
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  95,
                  95,
                  101,
                  118,
                  101,
                  110,
                  116,
                  95,
                  97,
                  117,
                  116,
                  104,
                  111,
                  114,
                  105,
                  116,
                  121
                ]
              }
            ]
          }
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
          "name": "usedNonce",
          "docs": [
            "Account will be explicitly loaded to avoid error when it's not initialized"
          ]
        }
      ],
      "args": [],
      "returns": "bool"
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
          "signer": true,
          "relations": [
            "messageTransmitter"
          ]
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "eventAuthority",
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  95,
                  95,
                  101,
                  118,
                  101,
                  110,
                  116,
                  95,
                  97,
                  117,
                  116,
                  104,
                  111,
                  114,
                  105,
                  116,
                  121
                ]
              }
            ]
          }
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
          "name": "authorityPda",
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  109,
                  101,
                  115,
                  115,
                  97,
                  103,
                  101,
                  95,
                  116,
                  114,
                  97,
                  110,
                  115,
                  109,
                  105,
                  116,
                  116,
                  101,
                  114,
                  95,
                  97,
                  117,
                  116,
                  104,
                  111,
                  114,
                  105,
                  116,
                  121
                ]
              },
              {
                "kind": "account",
                "path": "receiver"
              }
            ]
          }
        },
        {
          "name": "messageTransmitter"
        },
        {
          "name": "usedNonce",
          "docs": [
            "Each nonce is stored in a separate PDA"
          ],
          "writable": true
        },
        {
          "name": "receiver"
        },
        {
          "name": "systemProgram",
          "address": "11111111111111111111111111111111"
        },
        {
          "name": "eventAuthority",
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  95,
                  95,
                  101,
                  118,
                  101,
                  110,
                  116,
                  95,
                  97,
                  117,
                  116,
                  104,
                  111,
                  114,
                  105,
                  116,
                  121
                ]
              }
            ]
          }
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
          "signer": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  115,
                  101,
                  110,
                  100,
                  101,
                  114,
                  95,
                  97,
                  117,
                  116,
                  104,
                  111,
                  114,
                  105,
                  116,
                  121
                ]
              }
            ],
            "program": {
              "kind": "account",
              "path": "senderProgram"
            }
          }
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
          "name": "systemProgram",
          "address": "11111111111111111111111111111111"
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
          "signer": true,
          "relations": [
            "messageTransmitter"
          ]
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "eventAuthority",
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  95,
                  95,
                  101,
                  118,
                  101,
                  110,
                  116,
                  95,
                  97,
                  117,
                  116,
                  104,
                  111,
                  114,
                  105,
                  116,
                  121
                ]
              }
            ]
          }
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
          "signer": true,
          "relations": [
            "messageTransmitter"
          ]
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "eventAuthority",
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  95,
                  95,
                  101,
                  118,
                  101,
                  110,
                  116,
                  95,
                  97,
                  117,
                  116,
                  104,
                  111,
                  114,
                  105,
                  116,
                  121
                ]
              }
            ]
          }
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
          "signer": true,
          "relations": [
            "messageTransmitter"
          ]
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "eventAuthority",
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  95,
                  95,
                  101,
                  118,
                  101,
                  110,
                  116,
                  95,
                  97,
                  117,
                  116,
                  104,
                  111,
                  114,
                  105,
                  116,
                  121
                ]
              }
            ]
          }
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
          "signer": true,
          "relations": [
            "messageTransmitter"
          ]
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "eventAuthority",
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  95,
                  95,
                  101,
                  118,
                  101,
                  110,
                  116,
                  95,
                  97,
                  117,
                  116,
                  104,
                  111,
                  114,
                  105,
                  116,
                  121
                ]
              }
            ]
          }
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
          "signer": true,
          "relations": [
            "messageTransmitter"
          ]
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "eventAuthority",
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  95,
                  95,
                  101,
                  118,
                  101,
                  110,
                  116,
                  95,
                  97,
                  117,
                  116,
                  104,
                  111,
                  114,
                  105,
                  116,
                  121
                ]
              }
            ]
          }
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
          "signer": true,
          "relations": [
            "messageTransmitter"
          ]
        },
        {
          "name": "messageTransmitter",
          "writable": true
        },
        {
          "name": "eventAuthority",
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  95,
                  95,
                  101,
                  118,
                  101,
                  110,
                  116,
                  95,
                  97,
                  117,
                  116,
                  104,
                  111,
                  114,
                  105,
                  116,
                  121
                ]
              }
            ]
          }
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
      "name": "usedNonce",
      "discriminator": [
        212,
        222,
        157,
        252,
        130,
        71,
        179,
        238
      ]
    }
  ],
  "events": [
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
    },
    {
      "code": 6032,
      "name": "invalidDestinationMessage",
      "msg": "Invalid destination message"
    },
    {
      "code": 6033,
      "name": "eventAccountWindowNotExpired",
      "msg": "Event account window not expired"
    },
    {
      "code": 6034,
      "name": "destinationDomainIsLocalDomain",
      "msg": "Destination domain is local domain"
    }
  ],
  "types": [
    {
      "name": "acceptOwnershipParams",
      "type": {
        "kind": "struct",
        "fields": []
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
            "type": {
              "array": [
                "u8",
                32
              ]
            }
          },
          {
            "name": "sender",
            "type": "pubkey"
          },
          {
            "name": "finalityThresholdExecuted",
            "type": "u32"
          },
          {
            "name": "messageBody",
            "type": "bytes"
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
            "name": "createdAt",
            "type": "i64"
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
      "name": "pause",
      "type": {
        "kind": "struct",
        "fields": []
      }
    },
    {
      "name": "pauseParams",
      "type": {
        "kind": "struct",
        "fields": []
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
      "name": "reclaimEventAccountParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "attestation",
            "type": "bytes"
          },
          {
            "name": "destinationMessage",
            "type": "bytes"
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
            "name": "destinationCaller",
            "type": "pubkey"
          },
          {
            "name": "minFinalityThreshold",
            "type": "u32"
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
      "name": "unpause",
      "type": {
        "kind": "struct",
        "fields": []
      }
    },
    {
      "name": "unpauseParams",
      "type": {
        "kind": "struct",
        "fields": []
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
      "name": "usedNonce",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "isUsed",
            "type": "bool"
          }
        ]
      }
    }
  ]
};
