`timescale 1ns / 1ps
module Timing(
    input clk,                         // Clock signal
    input InFp,
    input DataValid,                   // Signal indicating the data is valid
    input RSTN,                        // Reset Signal
    input [7:0] DataIn [0:35],         // 72-element array, each 8-bit wide
    output reg [0:35] SDO,             // Serial Data Outputs for each 72 elements
    output reg [2:0] BitIndex,         // Index of the current output bit (0 to 7)
    output reg DataDone                // Signal indicating the 72x8-bit transmission is complete
);

    reg [7:0] ShiftReg [0:35];         // Array of shift registers, one for each DataIn
    //reg [6:0] DataIndex;               // Index of the current data element (0 to 71)
    reg Active = 0;                    // Flag to indicate if the module is actively transmitting
    integer i = 0;
    integer j = 0;
    
    // State initialization
    // initial begin
    //     //DataIndex = 0;
    //     BitIndex = 0;
    //     DataDone = 0;
    //     Active = 0;
    // end

    always @(posedge clk) begin
        if (!RSTN) begin 
            for (i = 0; i < 36; i = i + 1) begin
                ShiftReg[i] <= 0;  // Load each byte into its respective shift register
            end
            SDO <= 0;
            BitIndex <= 0;
            DataDone <= 0;
            Active <= 0;
        end else begin
            if (DataValid && !Active) begin
                // Start of transmission, load all the data into shift registers
                for (i = 0; i < 36; i = i + 1) begin
                    ShiftReg[i] <= DataIn[i];  // Load each byte into its respective shift register
                end
                SDO <= 0;
                BitIndex <= 0;                  // Reset the BitIndex to 0
                Active <= 1;                    // Start transmission
                DataDone <= 0;                  // Reset DataDone signal
            end else if (Active) begin
                // Transmission is active
                for (i = 0; i < 36; i = i + 1) begin
                    SDO[i] <= ShiftReg[i][BitIndex];  // Output the current bit from each shift register
                end
    
                BitIndex <= BitIndex + 1;       // Increment the BitIndex for the next bit
    
                if (BitIndex == 7 && !InFp) begin
                    // If all bits for this cycle have been transmitted
                    Active <= 0;                // End transmission
                    DataDone <= 1;              // Set DataDone to indicate completion
                end else if(BitIndex == 2 && InFp)begin
                    Active <= 0;                // End transmission
                    DataDone <= 1;              // Set DataDone to indicate completion            
                end
            end else begin
                DataDone <= 0;                  // Reset DataDone when not active
            end
        end
    end
endmodule


