`timescale 1ns/1ps

module tb_xor_using_mux;
    reg A, B;
    wire Y;

    xor_using_mux dut(A, B, Y);

    initial begin
        $monitor("A=%b B=%b | XOR=%b", A, B, Y);

        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;

        $finish;
    end
endmodule
