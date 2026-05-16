# PIPO Shift Register using Verilog HDL

## Overview
This project implements a PIPO (Parallel-In Parallel-Out) Shift Register using Verilog HDL.

A PIPO Shift Register loads multiple bits simultaneously and transfers all bits together to the output in parallel form.

### Data Flow

```text
Parallel Input  ==>  Shift Register  ==>  Parallel Output
```

It is commonly used for temporary data storage and high-speed parallel data transfer applications.

---

## Features

- Parallel data loading
- Parallel data output
- Synchronous data storage
- Multi-bit data transfer

---

## Files Included

| File Name | Description |
|---|---|
| PIPO_Shift_Register.v | Verilog RTL design |
| tb_PIPO_Shift_Register.v | Testbench for functional verification |
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