# Asynchronous Ripple Up Counter using Verilog HDL

## Overview
This project implements an Asynchronous Ripple Up Counter using Verilog HDL.

In an asynchronous ripple counter, the output of one flip-flop acts as the clock input for the next flip-flop, causing the count to ripple through the stages.

### Counting Sequence

```text
0 ==> 1 ==> 2 ==> 3 ==> ...
```

It is commonly used in low-speed counting and frequency division applications.

---

## Features

- Asynchronous counting operation
- Ripple carry propagation
- Binary up-counting
- Multi-stage flip-flop implementation

---

## Files Included

| File Name | Description |
|---|---|
| Async_Ripple_Up_Counter.v | Verilog RTL design |
| tb_Async_Ripple_Up_Counter.v | Testbench for functional verification |
| Results_Async_Ripple_Up_Counter.png | Simulation result image |

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