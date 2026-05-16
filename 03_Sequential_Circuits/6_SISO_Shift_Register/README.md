# SISO Shift Register using Verilog HDL

## Overview
This project implements a SISO (Serial-In Serial-Out) Shift Register using Verilog HDL.

A SISO Shift Register accepts data serially one bit at a time and shifts the data through the register stages before providing serial output.

### Data Flow

```text
Serial Input  ==>  Shift Register Stages  ==>  Serial Output
```

It is commonly used for serial data transfer and delay applications in digital systems.

---

## Features

- Serial data input
- Serial data output
- Bit-by-bit data shifting
- Sequential data transfer

---

## Files Included

| File Name | Description |
|---|---|
| SISO_Shift_Register.v | Verilog RTL design |
| tb_SISO_Shift_Register.v | Testbench for functional verification |
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