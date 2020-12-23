`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Module Name: Binary Decoder
//
// Description: Converts an input 8-bit signal to an output on the FPGA.
////////////////////////////////////////////////////////////////////////////////

module BinaryDecoder (
    // Inputs
    input [3:0] controlButtons,         // LED enable/disable buttons
    input [7:0] dipSwitch,              // Input 8-bit data line
    // Outputs
    output reg [7:0] leds,              // DIP switch LEDs
    output reg [7:0] sevenSegmentData,  // Data output lines
    output reg [3:0] sevenSegmentEnable // Enable lines
    );

    always @(*) begin
        
    end
endmodule
