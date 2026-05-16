# Synchronous MOD-N Counter using Verilog HDL

## Overview
This project implements a Synchronous MOD-N Counter using Verilog HDL.

A MOD-N Counter counts from 0 to N-1 synchronously with the clock signal and then resets back to the initial state.

### Counting Sequence

```text
0 ==> 1 ==> 2 ==> ... ==> N-1 ==> 0
```

It is commonly used in frequency division, digital clocks, timers, and sequential control systems.

---

## Features

- Synchronous counting operation
- Configurable MOD value
- Clock-driven state transition
- Automatic reset after reaching terminal count

---

## Files Included

| File Name | Description |
|---|---|
| Sync_MOD_N_Counter.v | Verilog RTL design |
| tb_Sync_MOD_N_Counter.v | Testbench for functional verification |
| Counter_FSM.png | Counter state diagram |
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