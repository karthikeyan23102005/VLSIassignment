`timescale 1ns/1ps

module mux2to1(
    input I0, I1, S,
    output Y
);
    assign Y = S ? I1 : I0;
endmodule

module mux4to1(
    input I0, I1, I2, I3,
    input S1, S0,
    output Y
);
    wire W0, W1;

    mux2to1 M0(I0, I1, S0, W0);
    mux2to1 M1(I2, I3, S0, W1);
    mux2to1 M2(W0, W1, S1, Y);
endmodule
