# JK Flip-Flop using Verilog HDL

## Overview
This project implements a JK Flip-Flop using Verilog HDL.

A JK Flip-Flop is an improved version of the SR Flip-Flop that eliminates the invalid state condition. It is widely used in sequential digital circuits and counters.

---

## Function Table

| J | K | Q(next) |
|---|---|---|
| 0 | 0 | No Change |
| 0 | 1 | 0 |
| 1 | 0 | 1 |
| 1 | 1 | Toggle |

---

## Files Included

| File Name | Description |
|---|---|
| JK_FF.v | Verilog RTL design |
| tb_JK_FF.v | Testbench for functional verification |
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