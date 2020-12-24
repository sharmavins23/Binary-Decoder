`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Module Name: Seven Segment Controller
//
// Description: Takes in 4-bit nibbles, and displays them to the seven segment
//              display on the FPGA.
////////////////////////////////////////////////////////////////////////////////

module SevenSegmentController (
    // Inputs
    input counter,
    input [3:0] segment2,
    input [3:0] segment1,
    // Outputs
    output reg [3:0] sevenSegmentEnable,
    output reg [7:0] sevenSegmentData
    );

    // Module wiring
    wire [3:0] dataNibble;

    // Module instantiation
    Mux4Bit2Input mux4Bit2Input(counter, segment2, segment1, dataNibble);

    always @(counter) begin
        // Set enable as a concatenation with counter
        sevenSegmentEnable = {2'b11, ~counter, counter};

        // Hex data segment output
        case(dataNibble)
            4'b0000: sevenSegmentData <= 8'b00010001; // 0
            4'b0001: sevenSegmentData <= 8'b11010111; // 1
            4'b0010: sevenSegmentData <= 8'b00110010; // 2
            4'b0011: sevenSegmentData <= 8'b10010010; // 3
            4'b0100: sevenSegmentData <= 8'b11010100; // 4
            4'b0101: sevenSegmentData <= 8'b10011000; // 5
            4'b0110: sevenSegmentData <= 8'b00011000; // 6
            4'b0111: sevenSegmentData <= 8'b11010011; // 7
            4'b1000: sevenSegmentData <= 8'b00010000; // 8
            4'b1001: sevenSegmentData <= 8'b10010000; // 9
            4'b1010: sevenSegmentData <= 8'b01010000; // A
            4'b1011: sevenSegmentData <= 8'b00011100; // b
            4'b1100: sevenSegmentData <= 8'b00111001; // C
            4'b1101: sevenSegmentData <= 8'b00010110; // d
            4'b1110: sevenSegmentData <= 8'b00111000; // E
            4'b1111: sevenSegmentData <= 8'b01111000; // F
        endcase
    end
endmodule