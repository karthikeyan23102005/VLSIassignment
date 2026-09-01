`timescale 1ns/1ps

module tb_gray_to_binary;
    reg [3:0] G;
    wire [3:0] B;
    integer i;

    gray_to_binary dut(G, B);

    initial begin
        $monitor("Gray=%b | Binary=%b", G, B);

        for(i=0; i<16; i=i+1) begin
            G = i;
            #10;
        end

        $finish;
    end
endmodule
