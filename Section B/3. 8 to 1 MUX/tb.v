`timescale 1ns/1ps

module tb_mux8to1;
    reg [7:0] I;
    reg [2:0] S;
    wire Y;

    mux8to1 dut(I, S, Y);

    initial begin
        I = 8'b10101010;

        $monitor("I=%b S=%b | Y=%b", I, S, Y);

        S=3'b000; #10;
        S=3'b001; #10;
        S=3'b010; #10;
        S=3'b011; #10;
        S=3'b100; #10;
        S=3'b101; #10;
        S=3'b110; #10;
        S=3'b111; #10;

        $finish;
    end
endmodule
