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
        // Set the enable signals for seven segment to input DIP switches
        sevenSegmentEnable = value[3:0];

        // Enable all data lines on active low
        sevenSegmentData = 8'b00000000;

        // Enable lights with on/off position of switch
        leds = ~value;
    end
endmodule
