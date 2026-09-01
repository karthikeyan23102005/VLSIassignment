`timescale 1ns/1ps

module tb_comparator4bit;
    reg [3:0] A, B;
    wire A_gt_B, A_eq_B, A_lt_B;

    comparator4bit dut(A, B, A_gt_B, A_eq_B, A_lt_B);

    initial begin
        $monitor("A=%b B=%b | A>B=%b A=B=%b A<B=%b",
                 A, B, A_gt_B, A_eq_B, A_lt_B);

        A=4'b0101; B=4'b0101; #10;
        A=4'b1000; B=4'b0011; #10;
        A=4'b0010; B=4'b0110; #10;

        $finish;
    end
endmodule
