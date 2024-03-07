/*
 * Copyright (c) 2024, Circle Internet Financial Limited All Rights Reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import * as anchor from "@coral-xyz/anchor";
import { PublicKey, Connection } from "@solana/web3.js";

export function findProgramAddress(
  label: string,
  program: PublicKey,
  extraSeeds = null
) {
  const seeds = [Buffer.from(anchor.utils.bytes.utf8.encode(label))];
  if (extraSeeds) {
    for (const extraSeed of extraSeeds) {
      if (typeof extraSeed === "string") {
        seeds.push(Buffer.from(anchor.utils.bytes.utf8.encode(extraSeed)));
      } else if (Array.isArray(extraSeed)) {
        seeds.push(Buffer.from(extraSeed));
      } else if (Buffer.isBuffer(extraSeed)) {
        seeds.push(extraSeed);
      } else {
        seeds.push(extraSeed.toBuffer());
      }
    }
  }
  const res = PublicKey.findProgramAddressSync(seeds, program);
  return { publicKey: res[0], bump: res[1] };
}

export async function ensureFails(promise, message = null) {
  try {
    await promise;
  } catch (err) {
    return err;
  }
  throw new Error(message ? message : "Call should've failed");
}

// Convert a hex string to a byte array
export function hexToBytes(hex: string) {
  let bytes = [];
  for (let c = 0; c < hex.length; c += 2)
    bytes.push(parseInt(hex.substr(c, 2), 16));
  return bytes;
}

export async function readEvents(
  connection: Connection,
  txSignature: string,
  programs
) {
  await connection.confirmTransaction(txSignature);
  const config = { commitment: "confirmed" } as const;
  const txResult = await connection.getTransaction(txSignature, config);

  let eventAuthorities = new Map();
  for (const program of programs) {
    eventAuthorities.set(
      program.programId.toString(),
      findProgramAddress(
        "__event_authority",
        program.programId,
        null
      ).publicKey.toString()
    );
  }

  let events = [];
  for (const ixBlock of txResult.meta.innerInstructions) {
    for (const ix of ixBlock.instructions) {
      for (const program of programs) {
        const programStr = program.programId.toString();
        if (
          ix.accounts.length === 1 &&
          txResult.transaction.message.accountKeys[
            ix.programIdIndex
          ].toString() === programStr &&
          txResult.transaction.message.accountKeys[
            ix.accounts[0]
          ].toString() === eventAuthorities.get(programStr)
        ) {
          const ixData = anchor.utils.bytes.bs58.decode(ix.data);
          const eventData = anchor.utils.bytes.base64.encode(ixData.slice(8));
          const event = program.coder.events.decode(eventData);
          events.push({
            program: program.programId,
            data: event.data,
            name: event.name,
          });
        }
      }
    }
  }

  return events;
}

export function getEvent(events, program: PublicKey, eventName: string) {
  for (const event of events) {
    if (
      event.name === eventName &&
      program.toString() === event.program.toString()
    ) {
      return event.data;
    }
  }
  throw new Error("Event " + eventName + " not found");
}
