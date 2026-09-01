`timescale 1ns/1ps

module tb_bcd_to_7segment;
    reg [3:0] BCD;
    wire [6:0] seg;
    integer i;

    bcd_to_7segment dut(BCD, seg);

    initial begin
        $monitor("BCD=%b | Segment=%b", BCD, seg);

        for(i=0; i<10; i=i+1) begin
            BCD = i;
            #10;
        end

        $finish;
    end
endmodule
