# 3-to-8 Decoder using Verilog HDL

## Overview
This project implements a 3-to-8 Decoder using Verilog HDL.

A decoder converts binary input data into a unique active output line corresponding to the input combination.

For every 3-bit input combination, only one output line becomes HIGH.

---

## Functionality

| Input | Active Output |
|---|---|
| 000 | Y0 |
| 001 | Y1 |
| 010 | Y2 |
| 011 | Y3 |
| 100 | Y4 |
| 101 | Y5 |
| 110 | Y6 |
| 111 | Y7 |

---

## Files Included

| File Name | Description |
|---|---|
| 3to8_Decoder.v | Verilog RTL design |
| tb_3to8_Decoder.v | Testbench for functional verification |
| Logic_diagram_Decoder_3to8.jpeg | Logic circuit diagram |
| results.png | Simulation result image |

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