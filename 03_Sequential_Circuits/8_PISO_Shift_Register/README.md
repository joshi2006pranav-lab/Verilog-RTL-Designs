# PISO Shift Register using Verilog HDL

## Overview
This project implements a PISO (Parallel-In Serial-Out) Shift Register using Verilog HDL.

A PISO Shift Register loads multiple bits simultaneously in parallel form and shifts the data out serially one bit at a time.

### Data Flow

```text
Parallel Input  ==>  Shift Register Stages  ==>  Serial Output
```

It is commonly used for parallel-to-serial data conversion in digital communication systems.

---

## Features

- Parallel data loading
- Serial data output
- Sequential bit shifting
- Parallel-to-serial data conversion

---

## Operation Table

| Mode | Operation |
|---|---|
| Load Mode | Parallel data is loaded |
| Shift Mode | Data shifts serially |

---

## Files Included

| File Name | Description |
|---|---|
| PISO_Shift_Register.v | Verilog RTL design |
| tb_PISO_Shift_Register.v | Testbench for functional verification |
| Logic_diagram.jpeg | Logic circuit diagram |
| Operation_Table.png | Operation table image |
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