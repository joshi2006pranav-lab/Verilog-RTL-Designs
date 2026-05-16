# 101 Sequence Detector using Moore FSM in Verilog HDL

## Overview
This project implements a 101 Sequence Detector using a Moore Finite State Machine (FSM) in Verilog HDL.

The detector continuously monitors a serial input stream and generates an output whenever the sequence `101` is detected.

In a Moore FSM, the output depends only on the present state.

### Sequence Detection

```text
Input Stream  ==>  FSM State Transitions  ==>  Sequence Detected (101)
```

---

## Features

- Moore FSM implementation
- Serial sequence detection
- State-dependent output generation
- Overlapping sequence detection support

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
| 101_Sequence_Detector_Moore_FSM.v | Verilog RTL design |
| tb_101_Sequence_Detector_Moore_FSM.v | Testbench for functional verification |
| State_diagram_101_Seq_detector_Moore_FSM.jpeg | FSM state diagram |
| Results_101_Sequence_Detector_Moore_FSM.png | Simulation result image |

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