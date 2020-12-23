`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Module Name: Eight Bit Split Inverter
//
// Description: Splits the input DIP switches into low and high nibbles for
//              later hex conversion, and flips inputs from active-LOW DIP out.
////////////////////////////////////////////////////////////////////////////////

module EightBitSplitInverter (
    // Inputs
    input [7:0] dipSwitch,
    // Outputs
    output reg [3:0] topNibble,
    output reg [3:0] botNibble
    );

    always @(*) begin
        topNibble = ~dipSwitch[7:4];
        botNibble = ~dipSwitch[3:0];
    end
endmodule