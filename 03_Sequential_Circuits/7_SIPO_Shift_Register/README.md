# SIPO Shift Register using Verilog HDL

## Overview
This project implements a SIPO (Serial-In Parallel-Out) Shift Register using Verilog HDL.

A SIPO Shift Register accepts data serially one bit at a time and provides the stored data simultaneously at parallel output lines.

### Data Flow

```text
Serial Input  ==>  Shift Register Stages  ==>  Parallel Output
```

It is commonly used for serial-to-parallel data conversion in digital communication systems.

---

## Features

- Serial data input
- Parallel data output
- Sequential bit shifting
- Serial-to-parallel data conversion

---

## Files Included

| File Name | Description |
|---|---|
| SIPO_Shift_Register.v | Verilog RTL design |
| tb_SIPO_Shift_Register.v | Testbench for functional verification |
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