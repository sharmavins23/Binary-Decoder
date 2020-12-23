`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Module Name: Binary Decoder
//
// Description: Converts an input 8-bit signal to an output on the FPGA.
////////////////////////////////////////////////////////////////////////////////

module BinaryDecoder (
    // Inputs
    input clockIn,
    input [3:0] controlButtons,         // LED enable/disable buttons
    input [7:0] dipSwitch,              // Input 8-bit data line
    // Outputs
    output reg [7:0] leds,              // DIP switch LEDs
    output reg [7:0] sevenSegmentData,  // Data output lines
    output reg [3:0] sevenSegmentEnable // Enable lines
    );

    // Module wiring
    wire counter; // Clock Divider
    reg clockOut;
    reg [3:0] topNibble; // 8-Bit Split Inverter
    reg [3:0] botNibble;

    // Module instantiation
    ClockDivider clockDivider(clockIn, counter, clockOut, counter);
    EightBitSplitInverter eightBitSplitInverter(
        dipSwitch,
        topNibble,
        bottomNibble
    );
    SevenSegmentController sevenSegmentController(
        counter,
        topNibble,
        bottomNibble,
        sevenSegmentEnable,
        sevenSegmentData
    );

    always @(*) begin
        // Set LEDs
        leds = ~dipSwitch;
    end
endmodule
