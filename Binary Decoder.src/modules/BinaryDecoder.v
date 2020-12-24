`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Module Name: Binary Decoder
//
// Description: Converts an input 8-bit signal to an output on the FPGA.
////////////////////////////////////////////////////////////////////////////////

module BinaryDecoder (
    // Inputs
    input cmosClock,                        // CMOS oscillator clock input
    input [7:0] dipSwitch,                  // Input 8-bit data line
    // Outputs
    output reg [7:0] leds,                  // DIP switch LEDs
    output reg [3:0] sevenSegmentEnable,    // Enable lines
    output reg [7:0] sevenSegmentData       // Data output lines
    );

    // Module wiring
    wire [19:0] counter; // Clock Divider
    wire clockFeedback;
    wire clockOut;
    assign clockOut = clockFeedback;
    wire [3:0] topNibble; // 8-Bit Split Inverter
    wire [3:0] botNibble;
    wire [3:0] enableLine; // 7-Seg Controller
    wire [7:0] dataLine;

    // Module instantiation
    ClockDivider clockDivider(
        cmosClock,
        clockFeedback,
        counter,
        clockFeedback,
        counter
    );
    EightBitSplitInverter eightBitSplitInverter(
        dipSwitch,
        topNibble,
        bottomNibble
    );
    SevenSegmentController sevenSegmentController(
        counter,
        topNibble,
        bottomNibble,
        enableLine,
        dataLine
    );

    always @(*) begin
        // Set LEDs
        leds = ~dipSwitch;

        // Set enable line
        sevenSegmentEnable = enableLine;
        
        // Set data line
        sevenSegmentData = dataLine;
    end
endmodule
