`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2024 02:57:17 PM
// Design Name: 
// Module Name: Adder_tree
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//4bit Adder Tree
module Adder_tree(
    input clk,                         // Clock signal
    input RSTN,                        //RSTN
    input signed [4:0] numbers [0:35], // 36 signed 5-bit numbers
    output reg signed [9:0] finalSum   // Final 9-bit signed sum output
);

    // Temporary registers to store partial sums at each stage
    reg signed [5:0] TempSum_0 [0:17];  // Stage 1 partial sums (6-bit each, for 36 -> 18 reduction)
    reg signed [7:0] TempSum_1 [0:8];   // Stage 2 partial sums (7-bit each, for 18 -> 9 reduction)
    reg signed [8:0] TempSum_2 [0:2];   // Stage 3 partial sums (8-bit each, for 9 -> 3 reduction)

    integer i;

    always @(posedge clk) begin
        if (!RSTN) begin
            finalSum <= 0;
            for (i = 0; i < 18; i = i + 1) begin
                TempSum_0[i] <= 0;
            end
            // Stage 2: Pairwise addition (18 -> 9)
            for (i = 0; i < 9; i = i + 1) begin
                TempSum_1[i] <= 0;
            end
            // Stage 3: Triplet addition (9 -> 3)
            for (i = 0; i < 3; i = i + 1) begin
                TempSum_2[i] <= 0;
            end
        end else begin
            // Stage 1: Pairwise addition (36 -> 18)
            for (i = 0; i < 18; i = i + 1) begin
                TempSum_0[i] <= numbers[i * 2] + numbers[i * 2 + 1];
            end
    
            // Stage 2: Pairwise addition (18 -> 9)
            for (i = 0; i < 9; i = i + 1) begin
                TempSum_1[i] <= TempSum_0[i * 2] + TempSum_0[i * 2 + 1];
            end
    
            // Stage 3: Triplet addition (9 -> 3)
            for (i = 0; i < 3; i = i + 1) begin
                TempSum_2[i] <= TempSum_1[i * 3] + TempSum_1[i * 3 + 1] + TempSum_1[i * 3 + 2];
            end
    
            // Final sum (add the 3 partial sums from the last stage)
            finalSum <= TempSum_2[0] + TempSum_2[1] + TempSum_2[2];
        end    
    end

endmodule




