# BCD to Excess-3 Converter using Verilog HDL

## Overview
This project implements a BCD to Excess-3 code converter using Verilog HDL.

The circuit converts a 4-bit Binary Coded Decimal (BCD) input into its corresponding Excess-3 representation.

---

## Truth Table

| BCD Input | Excess-3 Output |
|---|---|
| 0000 | 0011 |
| 0001 | 0100 |
| 0010 | 0101 |
| 0011 | 0110 |
| 0100 | 0111 |
| 0101 | 1000 |
| 0110 | 1001 |
| 0111 | 1010 |
| 1000 | 1011 |
| 1001 | 1100 |

---

## Files Included

| File Name | Description |
|---|---|
| binary_2_Excess3.v | Verilog RTL design |
| tb_binary_2_Excess3.v | Testbench for functional verification |
| Truthtable.jpeg | Truth table image |

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- VS Code

---

## Verification
The design was verified using a dedicated Verilog testbench.

---

## Author
Pranav Joshi