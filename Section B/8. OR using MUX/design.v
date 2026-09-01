`timescale 1ns/1ps

module mux2to1(
    input I0, I1, S,
    output Y
);
    assign Y = S ? I1 : I0;
endmodule

module or_using_mux(
    input A, B,
    output Y
);
    mux2to1 M1(B, 1'b1, A, Y);
endmodule
