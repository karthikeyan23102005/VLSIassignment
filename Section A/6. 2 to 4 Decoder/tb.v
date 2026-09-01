`timescale 1ns/1ps

module tb_decoder2to4;
    reg A, B, Enable;
    wire [3:0] Y;

    decoder2to4 dut(A, B, Enable, Y);

    initial begin
        $monitor("Enable=%b A=%b B=%b | Y=%b",
                 Enable, A, B, Y);

        Enable=0; A=0; B=0; #10;

        Enable=1;
        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;

        $finish;
    end
endmodule
