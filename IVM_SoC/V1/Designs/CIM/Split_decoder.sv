`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 03:17:04 PM
// Design Name: 
// Module Name: Split_decoder
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

//8 to 2
module Split_decoder(
    input  [7:0] input_data [0:35],  // Array of 36 8-bit numbers
    output [2:0] out0 [0:35],        // Array of 36 2-bit numbers (MSB part of input)
    output [2:0] out1 [0:35],        // Array of 36 2-bit numbers (next 2 bits)
    output [2:0] out2 [0:35],        // Array of 36 2-bit numbers (next 2 bits)
    output [2:0] out3 [0:35]         // Array of 36 2-bit numbers (LSB part of input)
);
    
    // Generate block to loop through all 36 elements and split them into 4 parts
    genvar i;
    generate
        for (i = 0; i < 36; i = i + 1) begin : decode_loop
            assign out0[i] = {input_data[i][1:0],1'b0};  // Extract bits 7 and 6
            assign out1[i] = {input_data[i][3:2],1'b0};;  // Extract bits 5 and 4
            assign out2[i] = {input_data[i][5:4],1'b0};;  // Extract bits 3 and 2
            assign out3[i] = {input_data[i][7:6],1'b0};;  // Extract bits 1 and 0
        end
    endgenerate

endmodule

