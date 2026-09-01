# Verilog Combinational Circuits

Coding Practice Assignment based on the provided assignment sheet.

## Topics
1. Full Adder using Half Adders
2. 4-bit Ripple Carry Adder
3. 8:1 Multiplexer
4. Full Subtractor using Half Subtractors
5. 3-to-8 Decoder using 2-to-4 Decoders
6. 8-to-3 Encoder
7. 4-bit Magnitude Comparator
8. OR Gate using 2:1 MUX
9. XOR Gate using 4:1 MUX
10. 4-bit Gray-to-Binary Converter
11. BCD-to-7-Segment Display Converter

Each question contains:
- Verilog design file
- Verilog testbench

## Simulation

These files can be simulated using tools such as Icarus Verilog, Verilator, ModelSim, Vivado, or an online Verilog simulator.

Example with Icarus Verilog:

```bash
iverilog -o sim q1_full_adder.v tb_q1_full_adder.v
vvp sim
```

## Notes

Q11 uses active-low/common-anode 7-segment encoding with
`seg[6:0] = {a,b,c,d,e,f,g}`.
