# 4-bit ALU using Verilog

This is a 4-bit Arithmetic Logic Unit (ALU) designed using Verilog HDL in Xilinx Vivado 2026.1.

## Operations

| OP | Operation |
|---|---|
| 000 | Addition |
| 001 | Subtraction |
| 010 | AND |
| 011 | OR |
| 100 | XOR |
| 101 | NOT |
| 110 | Left Shift |
| 111 | Right Shift |

## Inputs
- A: 4-bit input
- B: 4-bit input
- op: 3-bit operation selector

## Outputs
- result: 4-bit output
- carry: carry output for addition

## Verification

I created a Verilog testbench (`alu_4bit_tb.v`) and tested the ALU using Vivado Simulator.

The testbench includes:
- 3 + 2 = 5
- 7 - 3 = 4
- AND, OR and XOR operations
- NOT operation
- Left and right shift operations
- 15 + 1 → result = 0, carry = 1

## Simulation Waveform

![ALU Simulation Waveform](screenshots/alu_waveform.png)

## Synthesized Schematic

![ALU Synthesized Schematic](screenshots/alu_synthesized_schematic.png)

## Tools
- Verilog HDL
- Xilinx Vivado 2026.1
- Vivado Simulator (XSim)

## FPGA
Target device: Artix-7 (`xc7a35tftg256-1`)

This project was developed and tested through simulation and the Vivado implementation flow without a physical FPGA board.
