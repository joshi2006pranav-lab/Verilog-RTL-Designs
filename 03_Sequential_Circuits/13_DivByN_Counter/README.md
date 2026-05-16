# Divide-by-N Counter using Verilog HDL

## Overview
This project implements a Divide-by-N Counter using Verilog HDL.

A Divide-by-N Counter divides the input clock frequency by a factor of N, producing a slower output clock signal.

### Frequency Division

```text
Input Clock  ==>  Divide-by-N Counter  ==>  Output Clock (f/N)
```

It is commonly used in digital clocks, timing circuits, and frequency divider applications.

---

## Features

- Clock frequency division
- Configurable division factor
- Sequential counting operation
- Synchronous clock-driven design

---

## Files Included

| File Name | Description |
|---|---|
| DivByN_Counter.v | Verilog RTL design |
| tb_DivByN_Counter.v | Testbench for functional verification |
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