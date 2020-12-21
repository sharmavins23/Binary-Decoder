`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Module Name: Binary Decoder
//
// Description: Converts an input 8-bit signal to an output on the FPGA.
////////////////////////////////////////////////////////////////////////////////


module BinaryDecoder(
    // Inputs
    input [7:0] value,                  // Input 8-bit data line
    // Outputs
    output reg [7:0] leds,              // DIP switch LEDs
    output reg [7:0] sevenSegmentData,  // Data output lines
    output reg [3:0] sevenSegmentEnable // Enable lines
    );

    // Since improper documentation exists, implementation 1 will swap between
    //  inputs to illustrate the individual LCD displays

    always @(*) begin
        // Enable the first of four displays (active-LOW)
        sevenSegmentEnable = 4'b1110;

        // Next, connect the DIP switch and the individual segment
        sevenSegmentData = value;
        // Also log the DIP switch value with the LEDs
        leds = value;
    end
endmodule
