# Full Adder using Verilog HDL

## Overview
This project implements a Full Adder using Verilog HDL.

A Full Adder performs the addition of three binary inputs: two operand bits and one carry input. It generates Sum and Carry outputs.

---

## Truth Table

| A | B | Cin | Sum | Carry |
|---|---|---|---|---|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

---

## Files Included

| File Name | Description |
|---|---|
| Full_Adder.v | Verilog RTL design |
| tb_Full_Adder.v | Testbench for functional verification |
| Logic_diagram_FullAdder.jpeg | Logic circuit diagram |
| Result.png | Simulation result image |

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