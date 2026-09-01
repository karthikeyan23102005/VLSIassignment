`timescale 1ns/1ps

module half_subtractor(
    input A, B,
    output Diff, Borrow
);
    xor(Diff, A, B);
    and(Borrow, ~A, B);
endmodule
