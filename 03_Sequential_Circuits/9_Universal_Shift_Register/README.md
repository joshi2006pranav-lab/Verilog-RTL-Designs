# Universal Shift Register using Verilog HDL

## Overview
This project implements a Universal Shift Register using Verilog HDL.

A Universal Shift Register can perform multiple operations such as hold, shift left, shift right, and parallel load based on control inputs.

### Data Flow

```text
Shift Left   <==  Universal Shift Register  ==>   Shift Right
                    ||
              Parallel Load
```

It is widely used in digital systems for flexible data storage and transfer operations.

---

## Features

- Hold operation
- Shift left operation
- Shift right operation
- Parallel data loading
- Bidirectional shifting

---

## Operation Modes

| Control Input | Operation |
|---|---|
| 00 | Hold |
| 01 | Shift Right |
| 10 | Shift Left |
| 11 | Parallel Load |

---

## Files Included

| File Name | Description |
|---|---|
| Universal_Shift_Register.v | Verilog RTL design |
| tb_Universal_Shift_Register.v | Testbench for functional verification |
| 00_HOLD.jpeg | Hold operation image |
| 01_SHIFT_RIGHT.png | Shift right operation image |
| 10_SHIFT_LEFT.jpeg | Shift left operation image |
| 11_PARALLEL_LOAD.jpeg | Parallel load operation image |
| Logic_Diagram.jpeg | Logic circuit diagram |
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