# 4-by-2 Priority Encoder using Verilog HDL

## Overview
This project implements a 4-by-2 Priority Encoder using Verilog HDL.

A priority encoder generates a binary output corresponding to the highest-priority active input.

If multiple inputs are active simultaneously, the input with the highest priority is encoded.

---

## Priority Logic

| Highest Active Input | Output |
|---|---|
| D3 | 11 |
| D2 | 10 |
| D1 | 01 |
| D0 | 00 |

---

## Files Included

| File Name | Description |
|---|---|
| Priority_Encoder_4by2.v | Verilog RTL design |
| tb_Priority_Encoder_4by2.v | Testbench for functional verification |
| Logic_diagram_Priority_Encoder_4by2.jpeg | Logic circuit diagram |
| Results.png | Simulation result image |

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