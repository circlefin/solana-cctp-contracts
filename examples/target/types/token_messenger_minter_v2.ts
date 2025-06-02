/**
 * Program IDL in camelCase format in order to be used in JS/TS.
 *
 * Note that this is only a type helper and is not the actual IDL. The original
 * IDL can be found at `target/idl/token_messenger_minter_v2.json`.
 */
export type TokenMessengerMinterV2 = {
  "address": "CCTPV2vPZJS2u2BBsUoscuikbYjnpFmbFsvVuJdgUMQe",
  "metadata": {
    "name": "tokenMessengerMinterV2",
    "version": "0.2.0",
    "spec": "0.1.0",
    "description": "Token Messenger and Minter for Cross-Chain Transfer Protocol V2",
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
            "tokenMessenger"
          ]
        },
        {
          "name": "tokenMessenger",
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
          "signer": true,
          "relations": [
            "tokenMinter"
          ]
        },
        {
          "name": "tokenMinter"
        },
        {
          "name": "localToken",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  108,
                  111,
                  99,
                  97,
                  108,
                  95,
                  116,
                  111,
                  107,
                  101,
                  110
                ]
              },
              {
                "kind": "account",
                "path": "localTokenMint"
              }
            ]
          }
        },
        {
          "name": "custodyTokenAccount",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  99,
                  117,
                  115,
                  116,
                  111,
                  100,
                  121
                ]
              },
              {
                "kind": "account",
                "path": "localTokenMint"
              }
            ]
          }
        },
        {
          "name": "localTokenMint"
        },
        {
          "name": "tokenProgram",
          "address": "TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA"
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
              "name": "addLocalTokenParams"
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
          "signer": true,
          "relations": [
            "tokenMessenger"
          ]
        },
        {
          "name": "tokenMessenger"
        },
        {
          "name": "remoteTokenMessenger",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  114,
                  101,
                  109,
                  111,
                  116,
                  101,
                  95,
                  116,
                  111,
                  107,
                  101,
                  110,
                  95,
                  109,
                  101,
                  115,
                  115,
                  101,
                  110,
                  103,
                  101,
                  114
                ]
              },
              {
                "kind": "arg",
                "path": "params.domain"
              }
            ]
          }
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
              "name": "addRemoteTokenMessengerParams"
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
          "signer": true,
          "relations": [
            "tokenMinter"
          ]
        },
        {
          "name": "tokenMinter"
        },
        {
          "name": "localToken",
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  108,
                  111,
                  99,
                  97,
                  108,
                  95,
                  116,
                  111,
                  107,
                  101,
                  110
                ]
              },
              {
                "kind": "account",
                "path": "local_token.mint",
                "account": "localToken"
              }
            ]
          }
        },
        {
          "name": "custodyTokenAccount",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  99,
                  117,
                  115,
                  116,
                  111,
                  100,
                  121
                ]
              },
              {
                "kind": "account",
                "path": "local_token.mint",
                "account": "localToken"
              }
            ]
          }
        },
        {
          "name": "custodyTokenMint",
          "writable": true
        },
        {
          "name": "tokenProgram",
          "address": "TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA"
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
              "name": "burnTokenCustodyParams"
            }
          }
        }
      ]
    },
    {
      "name": "denylistAccount",
      "discriminator": [
        101,
        116,
        197,
        112,
        81,
        249,
        75,
        194
      ],
      "accounts": [
        {
          "name": "payer",
          "writable": true,
          "signer": true
        },
        {
          "name": "denylister",
          "signer": true,
          "relations": [
            "tokenMessenger"
          ]
        },
        {
          "name": "tokenMessenger"
        },
        {
          "name": "denylistAccount",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  100,
                  101,
                  110,
                  121,
                  108,
                  105,
                  115,
                  116,
                  95,
                  97,
                  99,
                  99,
                  111,
                  117,
                  110,
                  116
                ]
              },
              {
                "kind": "arg",
                "path": "params.account"
              }
            ]
          }
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
              "name": "denylistParams"
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
          "signer": true,
          "relations": [
            "burnTokenAccount"
          ]
        },
        {
          "name": "eventRentPayer",
          "writable": true,
          "signer": true
        },
        {
          "name": "senderAuthorityPda",
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
            ]
          }
        },
        {
          "name": "burnTokenAccount",
          "writable": true
        },
        {
          "name": "denylistAccount",
          "docs": [
            "Account is denylisted if the account exists at the expected PDA."
          ],
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  100,
                  101,
                  110,
                  121,
                  108,
                  105,
                  115,
                  116,
                  95,
                  97,
                  99,
                  99,
                  111,
                  117,
                  110,
                  116
                ]
              },
              {
                "kind": "account",
                "path": "owner"
              }
            ]
          }
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
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  108,
                  111,
                  99,
                  97,
                  108,
                  95,
                  116,
                  111,
                  107,
                  101,
                  110
                ]
              },
              {
                "kind": "account",
                "path": "burnTokenMint"
              }
            ]
          }
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
          "name": "messageTransmitterProgram",
          "address": "CCTPV2Sm4AdWt5296sk4P66VBZ7bEhcARwFaaS9YPbeC"
        },
        {
          "name": "tokenMessengerMinterProgram",
          "address": "CCTPV2vPZJS2u2BBsUoscuikbYjnpFmbFsvVuJdgUMQe"
        },
        {
          "name": "tokenProgram",
          "address": "TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA"
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
              "name": "depositForBurnParams"
            }
          }
        }
      ]
    },
    {
      "name": "depositForBurnWithHook",
      "discriminator": [
        111,
        245,
        62,
        131,
        204,
        108,
        223,
        155
      ],
      "accounts": [
        {
          "name": "owner",
          "signer": true,
          "relations": [
            "burnTokenAccount"
          ]
        },
        {
          "name": "eventRentPayer",
          "writable": true,
          "signer": true
        },
        {
          "name": "senderAuthorityPda",
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
            ]
          }
        },
        {
          "name": "burnTokenAccount",
          "writable": true
        },
        {
          "name": "denylistAccount",
          "docs": [
            "Account is denylisted if the account exists at the expected PDA."
          ],
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  100,
                  101,
                  110,
                  121,
                  108,
                  105,
                  115,
                  116,
                  95,
                  97,
                  99,
                  99,
                  111,
                  117,
                  110,
                  116
                ]
              },
              {
                "kind": "account",
                "path": "owner"
              }
            ]
          }
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
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  108,
                  111,
                  99,
                  97,
                  108,
                  95,
                  116,
                  111,
                  107,
                  101,
                  110
                ]
              },
              {
                "kind": "account",
                "path": "burnTokenMint"
              }
            ]
          }
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
          "name": "messageTransmitterProgram",
          "address": "CCTPV2Sm4AdWt5296sk4P66VBZ7bEhcARwFaaS9YPbeC"
        },
        {
          "name": "tokenMessengerMinterProgram",
          "address": "CCTPV2vPZJS2u2BBsUoscuikbYjnpFmbFsvVuJdgUMQe"
        },
        {
          "name": "tokenProgram",
          "address": "TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA"
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
              "name": "depositForBurnWithHookParams"
            }
          }
        }
      ]
    },
    {
      "name": "handleReceiveFinalizedMessage",
      "discriminator": [
        186,
        252,
        239,
        70,
        86,
        180,
        110,
        95
      ],
      "accounts": [
        {
          "name": "authorityPda",
          "signer": true,
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
                "kind": "const",
                "value": [
                  166,
                  95,
                  200,
                  29,
                  15,
                  239,
                  168,
                  134,
                  12,
                  179,
                  184,
                  63,
                  8,
                  155,
                  2,
                  36,
                  190,
                  138,
                  102,
                  135,
                  183,
                  174,
                  73,
                  245,
                  148,
                  192,
                  185,
                  180,
                  215,
                  233,
                  56,
                  147
                ]
              }
            ],
            "program": {
              "kind": "const",
              "value": [
                166,
                95,
                200,
                28,
                225,
                158,
                220,
                210,
                210,
                195,
                64,
                176,
                47,
                166,
                27,
                225,
                213,
                186,
                221,
                225,
                89,
                40,
                51,
                221,
                249,
                32,
                9,
                216,
                207,
                104,
                84,
                85
              ]
            }
          }
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
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  108,
                  111,
                  99,
                  97,
                  108,
                  95,
                  116,
                  111,
                  107,
                  101,
                  110
                ]
              },
              {
                "kind": "account",
                "path": "local_token.mint",
                "account": "localToken"
              }
            ]
          }
        },
        {
          "name": "tokenPair"
        },
        {
          "name": "feeRecipientTokenAccount",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "account",
                "path": "token_messenger.fee_recipient",
                "account": "tokenMessenger"
              },
              {
                "kind": "const",
                "value": [
                  6,
                  221,
                  246,
                  225,
                  215,
                  101,
                  161,
                  147,
                  217,
                  203,
                  225,
                  70,
                  206,
                  235,
                  121,
                  172,
                  28,
                  180,
                  133,
                  237,
                  95,
                  91,
                  55,
                  145,
                  58,
                  140,
                  245,
                  133,
                  126,
                  255,
                  0,
                  169
                ]
              },
              {
                "kind": "account",
                "path": "local_token.mint",
                "account": "localToken"
              }
            ],
            "program": {
              "kind": "const",
              "value": [
                140,
                151,
                37,
                143,
                78,
                36,
                137,
                241,
                187,
                61,
                16,
                41,
                20,
                142,
                13,
                131,
                11,
                90,
                19,
                153,
                218,
                255,
                16,
                132,
                4,
                142,
                123,
                216,
                219,
                233,
                248,
                89
              ]
            }
          }
        },
        {
          "name": "recipientTokenAccount",
          "writable": true
        },
        {
          "name": "custodyTokenAccount",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  99,
                  117,
                  115,
                  116,
                  111,
                  100,
                  121
                ]
              },
              {
                "kind": "account",
                "path": "local_token.mint",
                "account": "localToken"
              }
            ]
          }
        },
        {
          "name": "tokenProgram",
          "address": "TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA"
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
              "name": "handleReceiveMessageParams"
            }
          }
        }
      ]
    },
    {
      "name": "handleReceiveUnfinalizedMessage",
      "discriminator": [
        200,
        169,
        175,
        20,
        200,
        58,
        182,
        61
      ],
      "accounts": [
        {
          "name": "authorityPda",
          "signer": true,
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
                "kind": "const",
                "value": [
                  166,
                  95,
                  200,
                  29,
                  15,
                  239,
                  168,
                  134,
                  12,
                  179,
                  184,
                  63,
                  8,
                  155,
                  2,
                  36,
                  190,
                  138,
                  102,
                  135,
                  183,
                  174,
                  73,
                  245,
                  148,
                  192,
                  185,
                  180,
                  215,
                  233,
                  56,
                  147
                ]
              }
            ],
            "program": {
              "kind": "const",
              "value": [
                166,
                95,
                200,
                28,
                225,
                158,
                220,
                210,
                210,
                195,
                64,
                176,
                47,
                166,
                27,
                225,
                213,
                186,
                221,
                225,
                89,
                40,
                51,
                221,
                249,
                32,
                9,
                216,
                207,
                104,
                84,
                85
              ]
            }
          }
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
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  108,
                  111,
                  99,
                  97,
                  108,
                  95,
                  116,
                  111,
                  107,
                  101,
                  110
                ]
              },
              {
                "kind": "account",
                "path": "local_token.mint",
                "account": "localToken"
              }
            ]
          }
        },
        {
          "name": "tokenPair"
        },
        {
          "name": "feeRecipientTokenAccount",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "account",
                "path": "token_messenger.fee_recipient",
                "account": "tokenMessenger"
              },
              {
                "kind": "const",
                "value": [
                  6,
                  221,
                  246,
                  225,
                  215,
                  101,
                  161,
                  147,
                  217,
                  203,
                  225,
                  70,
                  206,
                  235,
                  121,
                  172,
                  28,
                  180,
                  133,
                  237,
                  95,
                  91,
                  55,
                  145,
                  58,
                  140,
                  245,
                  133,
                  126,
                  255,
                  0,
                  169
                ]
              },
              {
                "kind": "account",
                "path": "local_token.mint",
                "account": "localToken"
              }
            ],
            "program": {
              "kind": "const",
              "value": [
                140,
                151,
                37,
                143,
                78,
                36,
                137,
                241,
                187,
                61,
                16,
                41,
                20,
                142,
                13,
                131,
                11,
                90,
                19,
                153,
                218,
                255,
                16,
                132,
                4,
                142,
                123,
                216,
                219,
                233,
                248,
                89
              ]
            }
          }
        },
        {
          "name": "recipientTokenAccount",
          "writable": true
        },
        {
          "name": "custodyTokenAccount",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  99,
                  117,
                  115,
                  116,
                  111,
                  100,
                  121
                ]
              },
              {
                "kind": "account",
                "path": "local_token.mint",
                "account": "localToken"
              }
            ]
          }
        },
        {
          "name": "tokenProgram",
          "address": "TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA"
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
              "name": "handleReceiveMessageParams"
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
          "name": "authorityPda",
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
            ]
          }
        },
        {
          "name": "tokenMessenger",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  116,
                  111,
                  107,
                  101,
                  110,
                  95,
                  109,
                  101,
                  115,
                  115,
                  101,
                  110,
                  103,
                  101,
                  114
                ]
              }
            ]
          }
        },
        {
          "name": "tokenMinter",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  116,
                  111,
                  107,
                  101,
                  110,
                  95,
                  109,
                  105,
                  110,
                  116,
                  101,
                  114
                ]
              }
            ]
          }
        },
        {
          "name": "tokenMessengerMinterProgramData"
        },
        {
          "name": "tokenMessengerMinterProgram",
          "address": "CCTPV2vPZJS2u2BBsUoscuikbYjnpFmbFsvVuJdgUMQe"
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
          "signer": true,
          "relations": [
            "tokenMinter"
          ]
        },
        {
          "name": "tokenMinter"
        },
        {
          "name": "tokenPair",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  116,
                  111,
                  107,
                  101,
                  110,
                  95,
                  112,
                  97,
                  105,
                  114
                ]
              },
              {
                "kind": "arg",
                "path": "params.remote_domain"
              },
              {
                "kind": "arg",
                "path": "params.remote_token"
              }
            ]
          }
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
              "name": "linkTokenPairParams"
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
          "signer": true,
          "relations": [
            "tokenMinter"
          ]
        },
        {
          "name": "tokenMinter",
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
          "signer": true,
          "relations": [
            "tokenMinter"
          ]
        },
        {
          "name": "tokenMinter"
        },
        {
          "name": "localToken",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  108,
                  111,
                  99,
                  97,
                  108,
                  95,
                  116,
                  111,
                  107,
                  101,
                  110
                ]
              },
              {
                "kind": "account",
                "path": "local_token.mint",
                "account": "localToken"
              }
            ]
          }
        },
        {
          "name": "custodyTokenAccount",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  99,
                  117,
                  115,
                  116,
                  111,
                  100,
                  121
                ]
              },
              {
                "kind": "account",
                "path": "local_token.mint",
                "account": "localToken"
              }
            ]
          }
        },
        {
          "name": "custodyTokenMint",
          "writable": true
        },
        {
          "name": "tokenProgram",
          "address": "TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA"
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
              "name": "removeLocalTokenParams"
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
          "signer": true,
          "relations": [
            "tokenMessenger"
          ]
        },
        {
          "name": "tokenMessenger"
        },
        {
          "name": "remoteTokenMessenger",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  114,
                  101,
                  109,
                  111,
                  116,
                  101,
                  95,
                  116,
                  111,
                  107,
                  101,
                  110,
                  95,
                  109,
                  101,
                  115,
                  115,
                  101,
                  110,
                  103,
                  101,
                  114
                ]
              },
              {
                "kind": "account",
                "path": "remote_token_messenger.domain",
                "account": "remoteTokenMessenger"
              }
            ]
          }
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
              "name": "removeRemoteTokenMessengerParams"
            }
          }
        }
      ]
    },
    {
      "name": "setFeeRecipient",
      "discriminator": [
        227,
        18,
        215,
        42,
        237,
        246,
        151,
        66
      ],
      "accounts": [
        {
          "name": "owner",
          "signer": true,
          "relations": [
            "tokenMessenger"
          ]
        },
        {
          "name": "tokenMessenger",
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
              "name": "setFeeRecipientParams"
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
          "signer": true,
          "relations": [
            "tokenMinter"
          ]
        },
        {
          "name": "tokenMinter"
        },
        {
          "name": "localToken",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  108,
                  111,
                  99,
                  97,
                  108,
                  95,
                  116,
                  111,
                  107,
                  101,
                  110
                ]
              },
              {
                "kind": "account",
                "path": "local_token.mint",
                "account": "localToken"
              }
            ]
          }
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
              "name": "setMaxBurnAmountPerMessageParams"
            }
          }
        }
      ]
    },
    {
      "name": "setMinFee",
      "discriminator": [
        114,
        198,
        35,
        3,
        41,
        196,
        194,
        246
      ],
      "accounts": [
        {
          "name": "minFeeController",
          "signer": true,
          "relations": [
            "tokenMessenger"
          ]
        },
        {
          "name": "tokenMessenger",
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
              "name": "setMinFeeParams"
            }
          }
        }
      ]
    },
    {
      "name": "setMinFeeController",
      "discriminator": [
        195,
        142,
        74,
        84,
        234,
        94,
        180,
        113
      ],
      "accounts": [
        {
          "name": "owner",
          "signer": true,
          "relations": [
            "tokenMessenger"
          ]
        },
        {
          "name": "tokenMessenger",
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
              "name": "setMinFeeControllerParams"
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
          "signer": true,
          "relations": [
            "tokenMessenger"
          ]
        },
        {
          "name": "tokenMessenger"
        },
        {
          "name": "tokenMinter",
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
              "name": "setTokenControllerParams"
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
            "tokenMessenger"
          ]
        },
        {
          "name": "tokenMessenger",
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
      "name": "undenylistAccount",
      "discriminator": [
        57,
        36,
        43,
        168,
        62,
        172,
        33,
        39
      ],
      "accounts": [
        {
          "name": "payer",
          "writable": true,
          "signer": true
        },
        {
          "name": "denylister",
          "signer": true,
          "relations": [
            "tokenMessenger"
          ]
        },
        {
          "name": "tokenMessenger"
        },
        {
          "name": "denylistAccount",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  100,
                  101,
                  110,
                  121,
                  108,
                  105,
                  115,
                  116,
                  95,
                  97,
                  99,
                  99,
                  111,
                  117,
                  110,
                  116
                ]
              },
              {
                "kind": "arg",
                "path": "params.account"
              }
            ]
          }
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
              "name": "undenylistParams"
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
          "signer": true,
          "relations": [
            "tokenMinter"
          ]
        },
        {
          "name": "tokenMinter"
        },
        {
          "name": "tokenPair",
          "writable": true,
          "pda": {
            "seeds": [
              {
                "kind": "const",
                "value": [
                  116,
                  111,
                  107,
                  101,
                  110,
                  95,
                  112,
                  97,
                  105,
                  114
                ]
              },
              {
                "kind": "account",
                "path": "token_pair.remote_domain",
                "account": "tokenPair"
              },
              {
                "kind": "account",
                "path": "token_pair.remote_token",
                "account": "tokenPair"
              }
            ]
          }
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
              "name": "uninkTokenPairParams"
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
            "tokenMinter"
          ]
        },
        {
          "name": "tokenMinter",
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
      "name": "updateDenylister",
      "discriminator": [
        193,
        66,
        198,
        201,
        84,
        57,
        14,
        222
      ],
      "accounts": [
        {
          "name": "owner",
          "signer": true,
          "relations": [
            "tokenMessenger"
          ]
        },
        {
          "name": "tokenMessenger",
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
              "name": "updateDenylisterParams"
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
            "tokenMessenger"
          ]
        },
        {
          "name": "tokenMessenger"
        },
        {
          "name": "tokenMinter",
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
      "name": "denylistedAccount",
      "discriminator": [
        186,
        58,
        212,
        239,
        102,
        131,
        157,
        146
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
    }
  ],
  "events": [
    {
      "name": "denylisted",
      "discriminator": [
        20,
        145,
        173,
        200,
        182,
        17,
        234,
        154
      ]
    },
    {
      "name": "denylisterChanged",
      "discriminator": [
        249,
        170,
        81,
        180,
        185,
        175,
        138,
        72
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
      "name": "feeRecipientSet",
      "discriminator": [
        99,
        140,
        80,
        35,
        245,
        176,
        179,
        110
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
      "name": "minFeeControllerSet",
      "discriminator": [
        239,
        12,
        122,
        105,
        231,
        114,
        13,
        196
      ]
    },
    {
      "name": "minFeeSet",
      "discriminator": [
        60,
        127,
        101,
        230,
        216,
        129,
        188,
        98
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
      "name": "unDenylisted",
      "discriminator": [
        150,
        39,
        227,
        20,
        162,
        180,
        5,
        242
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
      "name": "invalidTokenMinterState",
      "msg": "Invalid token minter state"
    },
    {
      "code": 6002,
      "name": "programPaused",
      "msg": "Instruction is not allowed at this time"
    },
    {
      "code": 6003,
      "name": "invalidTokenPairState",
      "msg": "Invalid token pair state"
    },
    {
      "code": 6004,
      "name": "invalidLocalTokenState",
      "msg": "Invalid local token state"
    },
    {
      "code": 6005,
      "name": "invalidPauser",
      "msg": "Invalid pauser"
    },
    {
      "code": 6006,
      "name": "invalidTokenController",
      "msg": "Invalid token controller"
    },
    {
      "code": 6007,
      "name": "burnAmountExceeded",
      "msg": "Burn amount exceeded"
    },
    {
      "code": 6008,
      "name": "invalidAmount",
      "msg": "Invalid amount"
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
      "name": "addLocalTokenParams",
      "type": {
        "kind": "struct",
        "fields": []
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
      "name": "denylistParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "account",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "denylisted",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "account",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "denylistedAccount",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "account",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "denylisterChanged",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "oldDenylister",
            "type": "pubkey"
          },
          {
            "name": "newDenylister",
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
          },
          {
            "name": "maxFee",
            "type": "u64"
          },
          {
            "name": "minFinalityThreshold",
            "type": "u32"
          },
          {
            "name": "hookData",
            "type": "bytes"
          }
        ]
      }
    },
    {
      "name": "depositForBurnParams",
      "repr": {
        "kind": "c"
      },
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
          },
          {
            "name": "maxFee",
            "type": "u64"
          },
          {
            "name": "minFinalityThreshold",
            "type": "u32"
          }
        ]
      }
    },
    {
      "name": "depositForBurnWithHookParams",
      "repr": {
        "kind": "c"
      },
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
          },
          {
            "name": "maxFee",
            "type": "u64"
          },
          {
            "name": "minFinalityThreshold",
            "type": "u32"
          },
          {
            "name": "hookData",
            "type": "bytes"
          }
        ]
      }
    },
    {
      "name": "feeRecipientSet",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "newFeeRecipient",
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
            "name": "finalityThresholdExecuted",
            "type": "u32"
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
            "name": "denylister",
            "type": "pubkey"
          },
          {
            "name": "feeRecipient",
            "type": "pubkey"
          },
          {
            "name": "minFeeController",
            "type": "pubkey"
          },
          {
            "name": "minFee",
            "type": "u32"
          },
          {
            "name": "messageBodyVersion",
            "type": "u32"
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
      "name": "minFeeControllerSet",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "newMinFeeController",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "minFeeSet",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "newMinFee",
            "type": "u32"
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
          },
          {
            "name": "feeCollected",
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
      "name": "removeLocalTokenParams",
      "type": {
        "kind": "struct",
        "fields": []
      }
    },
    {
      "name": "removeRemoteTokenMessengerParams",
      "type": {
        "kind": "struct",
        "fields": []
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
      "name": "setFeeRecipientParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "newFeeRecipient",
            "type": "pubkey"
          }
        ]
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
      "name": "setMinFeeControllerParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "newMinFeeController",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "setMinFeeParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "newMinFee",
            "type": "u32"
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
    },
    {
      "name": "tokenMessenger",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "denylister",
            "type": "pubkey"
          },
          {
            "name": "owner",
            "type": "pubkey"
          },
          {
            "name": "pendingOwner",
            "type": "pubkey"
          },
          {
            "name": "messageBodyVersion",
            "type": "u32"
          },
          {
            "name": "authorityBump",
            "type": "u8"
          },
          {
            "name": "feeRecipient",
            "type": "pubkey"
          },
          {
            "name": "minFeeController",
            "type": "pubkey"
          },
          {
            "name": "minFee",
            "type": "u32"
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
      "name": "unDenylisted",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "account",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "undenylistParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "account",
            "type": "pubkey"
          }
        ]
      }
    },
    {
      "name": "uninkTokenPairParams",
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
      "name": "unpauseParams",
      "type": {
        "kind": "struct",
        "fields": []
      }
    },
    {
      "name": "updateDenylisterParams",
      "type": {
        "kind": "struct",
        "fields": [
          {
            "name": "newDenylister",
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
    }
  ]
};
