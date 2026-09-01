`timescale 1ns/1ps

// Active-low/common-anode display.
// seg[6:0] = {a,b,c,d,e,f,g}

module bcd_to_7segment(
    input [3:0] BCD,
    output [6:0] seg
);
    assign seg = (BCD == 4'b0000) ? 7'b1000000 :
                 (BCD == 4'b0001) ? 7'b1111001 :
                 (BCD == 4'b0010) ? 7'b0100100 :
                 (BCD == 4'b0011) ? 7'b0110000 :
                 (BCD == 4'b0100) ? 7'b0011001 :
                 (BCD == 4'b0101) ? 7'b0010010 :
                 (BCD == 4'b0110) ? 7'b0000010 :
                 (BCD == 4'b0111) ? 7'b1111000 :
                 (BCD == 4'b1000) ? 7'b0000000 :
                 (BCD == 4'b1001) ? 7'b0010000 :
                                    7'b1111111;
endmodule
