`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Module Name: Clock Divider
//
// Description: Takes the input 100MHz clock oscillator signal and divides it to
//              an acceptable value. Calculation is shown in README.
////////////////////////////////////////////////////////////////////////////////

module ClockDivider (
    // Inputs
    input clockIn,      // Clock input from FPGA pin H4
    // Outputs
    output clockOut     // Clock output to circuit
    );

    // Used to calculate clock period (T = N/100M)
    parameter divisionCount = 400;

    always @(posedge clockIn) begin
        
    end
endmodule