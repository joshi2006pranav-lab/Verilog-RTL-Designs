# SR Flip-Flop using Verilog HDL

## Overview
This project implements an SR (Set-Reset) Flip-Flop using Verilog HDL.

An SR Flip-Flop is a basic sequential storage element used to store one bit of data. The output changes according to the Set and Reset inputs.

---

## Function Table

| S | R | Q(next) |
|---|---|---|
| 0 | 0 | No Change |
| 0 | 1 | 0 |
| 1 | 0 | 1 |
| 1 | 1 | Invalid |

---

## Files Included

| File Name | Description |
|---|---|
| SR_FF.v | Verilog RTL design |
| tb_SR_FF.v | Testbench for functional verification |
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