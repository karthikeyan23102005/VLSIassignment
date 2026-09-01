`timescale 1ns/1ps

module tb_comparator1bit;
    reg A, B;
    wire A_gt_B, A_eq_B, A_lt_B;

    comparator1bit dut(A, B, A_gt_B, A_eq_B, A_lt_B);

    initial begin
        $monitor("A=%b B=%b | A>B=%b A=B=%b A<B=%b",
                 A, B, A_gt_B, A_eq_B, A_lt_B);

        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;

        $finish;
    end
endmodule
