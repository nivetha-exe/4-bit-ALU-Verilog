# 4-bit ALU using Verilog

This is a simple 4-bit ALU designed using Verilog HDL in Xilinx Vivado.

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

I created a Verilog testbench and tested the ALU using Vivado Simulator.

Some of the tests include:
- 3 + 2 = 5
- 7 - 3 = 4
- AND, OR and XOR operations
- 15 + 1 → result = 0, carry = 1

## Tools
- Verilog
- Xilinx Vivado
- Vivado Simulator

## FPGA
Target device: Artix-7 (`xc7a35tftg256-1`)

This project was made without a physical FPGA board, so the design was tested through simulation and Vivado implementation.
