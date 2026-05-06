# RISC-V RV32I Emulator

A functional emulator of the **RV32I** base integer instruction set of the RISC-V architecture, implemented in **EMOS** (Embedded Meta-language Operating System) using the Leo stack-oriented metalanguage. The emulator faithfully models the 32 general-purpose registers, a simulated 32-bit memory, and the complete decode-and-execute logic for Type-I, Type-R, and Load instructions.

---

## Architecture

RISC-V is an open, royalty-free Instruction Set Architecture (ISA). This emulator targets its base 32-bit integer variant (RV32I), implementing:

- **32 registers** — `zero`, `ra`, `sp`, `gp`, `tp`, `t0–t6`, `s0–s11`, `a0–a7`
- **100-cell simulated RAM** — each cell is 32 bits wide, pre-loaded with test data
- **Stack-based execution model** — EMOS operates on a Data Stack (DS) and a Pointer Stack (PS); every instruction is defined as an EMOS "word" that manages these stacks explicitly

Each register is defined as a global variable and exposed through two words per register:
- `rX.` — prints the register value in hexadecimal (for debugging)
- `rX@` — pushes the register's current value onto the Data Stack

---

## Implemented Instructions

### Type-I — Immediate Operations
Operations that combine a register value with a 12-bit sign-extended immediate.

| Instruction | Operation |
|---|---|
| `ADDI rd, rs1, imm` | `rd = rs1 + imm` |
| `ORI rd, rs1, imm` | `rd = rs1 \| imm` |
| `ANDI rd, rs1, imm` | `rd = rs1 & imm` |
| `XORI rd, rs1, imm` | `rd = rs1 ^ imm` |
| `SLTI rd, rs1, imm` | `rd = (rs1 < imm) ? 1 : 0` (signed) |
| `SLTIU rd, rs1, imm` | `rd = (rs1 < imm) ? 1 : 0` (unsigned) |
| `SLLI rd, rs1, shamt` | `rd = rs1 << shamt` |
| `SRLI rd, rs1, shamt` | `rd = rs1 >> shamt` (logical) |
| `SRAI rd, rs1, shamt` | `rd = rs1 >> shamt` (arithmetic, sign-preserving) |

> **Note on SRAI:** EMOS has no native arithmetic right shift, so `SRAI` was implemented manually: it checks bit 31 of the source, and if the value is negative, it applies a logical shift and then OR-masks the upper bits with ones to preserve the sign.

### Type-R — Register-Register Operations
Operations that use two source registers and write to a destination register.

| Instruction | Operation |
|---|---|
| `ADD rd, rs1, rs2` | `rd = rs1 + rs2` |
| `SUB rd, rs1, rs2` | `rd = rs1 - rs2` |
| `AND rd, rs1, rs2` | `rd = rs1 & rs2` |
| `OR rd, rs1, rs2` | `rd = rs1 \| rs2` |
| `XOR rd, rs1, rs2` | `rd = rs1 ^ rs2` |
| `SLL rd, rs1, rs2` | `rd = rs1 << rs2` |
| `SRL rd, rs1, rs2` | `rd = rs1 >> rs2` (logical) |
| `SRA rd, rs1, rs2` | `rd = rs1 >> rs2` (arithmetic, sign-preserving) |
| `SLT rd, rs1, rs2` | `rd = (rs1 < rs2) ? 1 : 0` (signed) |
| `SLTU rd, rs1, rs2` | `rd = (rs1 < rs2) ? 1 : 0` (unsigned) |

### Load Instructions
All load instructions use a base register plus a byte offset to compute the memory address.

| Instruction | Width | Sign Extension |
|---|---|---|
| `LW rd, offset(rs1)` | 32 bits (full word) | — |
| `LH rd, offset(rs1)` | 16 bits (half-word) | Yes |
| `LHU rd, offset(rs1)` | 16 bits (half-word) | No (zero-extended) |
| `LB rd, offset(rs1)` | 8 bits (byte) | Yes |
| `LBU rd, offset(rs1)` | 8 bits (byte) | No (zero-extended) |

---

## Testing

### Inline Unit Tests
Every instruction is validated immediately after its definition using an inline test that prints `✓` or `x` to the console. This makes it easy to spot regressions when modifying any word.

### Integration Test Framework (`riscv_test.leo`)
A separate test file includes the main emulator and runs three end-to-end validation algorithms. It maintains global `passes` and `fails` counters and emits `✔` or `✘` for each test case.

| Problem | Description | Expected Result |
|---|---|---|
| **Gauss Sum** | Computes 1+2+3+4+5 using `ADDI` and `ADD` with `t0` as accumulator | `t0 = 15` |
| **Hex Construction** | Builds `0xABC` (2748 decimal) using `ADDI`, `SLLI`, and `OR` to assemble nibbles | `t0 = 2748` |
| **Parity Detector** | Uses `ANDI` with mask `0x1` to check if numbers 25 (odd) and 30 (even) are correctly classified | `t4 = 1` |

All three tests pass:
```
=== PROBLEMA 1: SUMA DE 1 A 5 ===
✔
=== PROBLEMA 2: CONSTRUCCION HEX (0xABC) ===
✔
=== PROBLEMA 3: DETECTOR IMPAR ===
✔
```

---

## Project Structure

```
RISC-V/
├── riscv.leo       ← Core emulator: memory, registers, and all instruction definitions
└── riscv_test.leo  ← Integration test suite with pass/fail framework
```

---

## How to Run

This project requires EMOS to be installed. Once available:

```bash
# Run the full emulator with inline unit tests
emos riscv.leo

# Run the integration test suite
emos riscv_test.leo
```

---

## Key Implementation Details

**Stack discipline:** Every instruction word in EMOS must leave both stacks (DS and PS) in a clean state after execution. A single missing `pdrop` corrupts all subsequent instruction calls — this was the primary source of bugs during development.

**Memory model:** The simulated RAM is allocated as 100 contiguous 32-bit integer cells. Navigation between cells uses `integers shift` and `symbols shift` to handle word, half-word, and byte addressing respectively.

**Sign extension:** Load instructions for half-words and bytes manually apply sign extension by checking the most significant bit of the loaded value and OR-masking the upper bits with `ffff0000h` or `ffffff00h` accordingly.

---

## References

- Patterson, D. & Waterman, A. *The RISC-V Reader: An Open Architecture Atlas.* Strawberry Canyon, 2017.
- *RISC-V Instruction Set Manual, Volume I: User-Level ISA*, Document Version 20191213, RISC-V Foundation.
- EMOS Documentation, labcibernetica GitHub Repository.
