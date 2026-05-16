# Synchronous Up-Down Binary Counter using Verilog HDL

## Overview
This project implements a Synchronous Up-Down Binary Counter using Verilog HDL.

The counter increments or decrements its binary count value depending on the control input.

### Counting Operation

```text
UP Mode    : 0 ==> 1 ==> 2 ==> 3 ==> ...
DOWN Mode  : ... ==> 3 ==> 2 ==> 1 ==> 0
```

It is commonly used in digital systems requiring reversible counting operations.

---

## Features

- Synchronous counting
- Up-counting mode
- Down-counting mode
- Clock-driven operation

---

## Files Included

| File Name | Description |
|---|---|
| Sync_UpDown_Binary_Counter.v | Verilog RTL design |
| tb_Sync_UpDown_Binary_Counter.v | Testbench for functional verification |
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