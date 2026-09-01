`timescale 1ns/1ps

module half_adder(
    input A, B,
    output Sum, Carry
);
    xor(Sum, A, B);
    and(Carry, A, B);
endmodule

module full_adder(
    input A, B, Cin,
    output Sum, Cout
);
    wire S1, C1, C2;

    half_adder HA1(A, B, S1, C1);
    half_adder HA2(S1, Cin, Sum, C2);

    or(Cout, C1, C2);
endmodule
