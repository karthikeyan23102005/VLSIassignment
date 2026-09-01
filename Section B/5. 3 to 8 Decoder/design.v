`timescale 1ns/1ps

module decoder2to4(
    input A, B, Enable,
    output [3:0] Y
);
    assign Y[0] = Enable & ~A & ~B;
    assign Y[1] = Enable & ~A & B;
    assign Y[2] = Enable & A & ~B;
    assign Y[3] = Enable & A & B;
endmodule

module decoder3to8(
    input [2:0] A,
    input Enable,
    output [7:0] Y
);
    wire E0, E1;

    assign E0 = Enable & ~A[2];
    assign E1 = Enable & A[2];

    decoder2to4 D0(A[1], A[0], E0, Y[3:0]);
    decoder2to4 D1(A[1], A[0], E1, Y[7:4]);
endmodule
