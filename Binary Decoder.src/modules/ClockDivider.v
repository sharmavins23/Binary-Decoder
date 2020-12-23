`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Module Name: Clock Divider
//
// Description: Takes the input 100MHz clock oscillator signal and divides it to
//              an acceptable value. Calculation is shown in README.
////////////////////////////////////////////////////////////////////////////////

module ClockDivider (
    // Inputs
    input clockIn,          // Clock input from FPGA pin H4
    input counter,          // Counter increment
    // Outputs
    output reg clockOut,    // Clock output to circuit
    output reg counterOut   // Counter increment output
    );

    // Used to calculate clock period (T = kN/100M)
    parameter divisionCount = 1;
    parameter divisionMulti = 6;
    // Calculated division parameter
    parameter division = (divisionCount * (10 ** divisionMulti)) / 2;

    // Base counter input
    initial begin
        counterOut = 0;
    end

    // Counter creation for clock division
    always @(posedge clockIn) begin
        if (counter < division) begin
            // Set the clock output to low
            clockOut <= clockIn;
            // Increment counter value
            counterOut <= counter + 1;
        end else begin
            // Set the clock output to invert
            clockOut <= ~clockIn;
            // Reset counter value
            counterOut <= 0;
        end
    end
endmodule