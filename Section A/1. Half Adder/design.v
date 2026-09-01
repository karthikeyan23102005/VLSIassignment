`timescale 1ns/1ps

module half_adder(
    input A, B,
    output Sum, Carry
);
    xor(Sum, A, B);
    and(Carry, A, B);
endmodule
