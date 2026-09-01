`timescale 1ns/1ps

module mux4to1(
    input I0, I1, I2, I3,
    input S1, S0,
    output Y
);
    assign Y = S1 ? (S0 ? I3 : I2) :
                    (S0 ? I1 : I0);
endmodule

module xor_using_mux(
    input A, B,
    output Y
);
    mux4to1 M1(
        1'b0,
        1'b1,
        1'b1,
        1'b0,
        A,
        B,
        Y
    );
endmodule
