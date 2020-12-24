`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Module Name: Clock Divider
//
// Description: Takes the input 100MHz clock oscillator signal and divides it to
//              an acceptable value. Calculation is shown in README.
////////////////////////////////////////////////////////////////////////////////

module ClockDivider (
    // Inputs
    input cmosClock,                // Clock input from FPGA pin H4
    input clockIn,                  // Clock input feedback
    input [19:0] counter,           // Counter increment
    // Outputs
    output reg clockOut,            // Clock output to circuit
    output reg [19:0] counterOut    // Counter increment output
    );

    // Base counter input
    initial begin
        counterOut = 0;
    end

    // Counter creation for clock division
    always @(posedge cmosClock) begin
        // Iterate counter value
        counterOut <= counter + 1;

        // Apply clock flip
        if (counterOut == 0) begin
            clockOut <= ~clockIn;
        end else begin
            clockOut <= clockIn;
        end
    end
endmodule