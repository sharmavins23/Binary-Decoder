`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Module Name: Multiplexer - Four Bit, Two Input
//
// Description: Selects between two four bit nibbles.
////////////////////////////////////////////////////////////////////////////////


module Mux4Bit2Input (
    // Inputs
    input selector,
    input [3:0] nibbleA,
    input [3:0] nibbleB,
    // Outputs
    output reg [3:0] nibbleOut
    );

    always @(*) begin
        if (selector) begin
            nibbleOut = nibbleA; // In this case, high DIP input
        end else begin
            nibbleOut = nibbleB; // In this case, low DIP input
        end
    end


endmodule
