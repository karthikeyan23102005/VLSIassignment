`timescale 1ns/1ps

module tb_half_adder;
    reg A, B;
    wire Sum, Carry;

    half_adder dut(A, B, Sum, Carry);

    initial begin
        $monitor("A=%b B=%b | Sum=%b Carry=%b",
                 A, B, Sum, Carry);

        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;

        $finish;
    end
endmodule
