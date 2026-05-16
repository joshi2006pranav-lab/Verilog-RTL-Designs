# 101 Sequence Detector using Mealy FSM in Verilog HDL

## Overview
This project implements a 101 Sequence Detector using a Mealy Finite State Machine (FSM) in Verilog HDL.

The detector monitors a serial input stream and generates an output whenever the sequence `101` is detected.

In a Mealy FSM, the output depends on both the present state and the current input.

### Sequence Detection

```text
Input Stream  ==>  FSM State Transitions  ==>  Sequence Detected (101)
```

---

## Features

- Mealy FSM implementation
- Serial sequence detection
- Overlapping sequence detection support
- State-based digital design

---

## State Transition

| Input Sequence | Output |
|---|---|
| 101 detected | 1 |
| Otherwise | 0 |

---

## Files Included

| File Name | Description |
|---|---|
| Sequence_Detector_Mealy_FSM.v | Verilog RTL design |
| tb_Sequence_Detector_Mealy_FSM.v | Testbench for functional verification |
| State_diagram_101_Seq_detector_Mealy_FSM.jpeg | FSM state diagram |
| Results_101_Seq_Detector_Mealy_FSM.png | Simulation result image |

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