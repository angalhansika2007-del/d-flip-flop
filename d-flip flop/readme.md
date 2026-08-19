Description

This project implements a D Flip-Flop using Verilog HDL.

A D Flip-Flop stores one bit of data and transfers the input `D` to the output `Q` on the rising edge of the clock.

The design also includes an active-high asynchronous reset.
 Files

- `d_flip_flop.v` - D Flip-Flop design
- `d_flip_flop_tb.v` - Testbench
- `README.md` - Project documentation

Inputs

| Signal | Description |
|--------|-------------|
| `clk` | Clock signal |
| `reset` | Active-high reset |
| `d` | Data input |

 Output

| Signal | Description |
|--------|-------------|
| `q` | Stored data output |

 Truth Table

| Reset | D | Q |
|-------|---|---|
| 1 | X | 0 |
| 0 | 0 | 0 |
| 0 | 1 | 1 |

 Working Principle

The output changes only on the rising edge of the clock.

