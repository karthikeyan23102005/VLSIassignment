`timescale 1ns/1ps

module mux2to1_gate(
    input I0, I1, S,
    output Y
);
    wire nS, W0, W1;

    not(nS, S);
    and(W0, I0, nS);
    and(W1, I1, S);
    or(Y, W0, W1);
endmodule
