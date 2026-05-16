# Synchronous BCD MOD-10 Counter using Verilog HDL

## Overview
This project implements a Synchronous BCD MOD-10 Counter using Verilog HDL.

The counter counts decimal digits from 0 to 9 in Binary Coded Decimal (BCD) format and resets back to 0 after reaching 9.

### Counting Sequence

```text
0 ==> 1 ==> 2 ==> 3 ==> 4 ==> 5 ==> 6 ==> 7 ==> 8 ==> 9 ==> 0
```

It is commonly used in digital clocks, timers, and decimal counting applications.

---

## Features

- Synchronous counting operation
- BCD output representation
- MOD-10 counting sequence
- Automatic reset after decimal 9

---

## Files Included

| File Name | Description |
|---|---|
| Sync_BCD_MOD10_Counter.v | Verilog RTL design |
| tb_Sync_BCD_MOD10_Counter.v | Testbench for functional verification |
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