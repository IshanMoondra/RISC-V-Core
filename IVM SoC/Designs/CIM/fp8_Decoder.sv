`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 02:01:56 PM
// Design Name: 
// Module Name: fp8_Decoder
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


module fp8_Decoder(
    input  [7:0] fp [35:0],  // Array of 36 8-bit floating-point numbers
    output [35:0] sign,      // Array of 36 sign bits
    output [4:0] exp [35:0], // Array of 36 5-bit exponents
    output [1:0] mant [35:0] // Array of 36 2-bit mantissas with implicit leading 1
);
    
    // Loop over each fp element and extract sign, exponent, and mantissa
    genvar i;
    generate
        for (i = 0; i < 36; i = i + 1) begin : fp_decoder_loop
            assign sign[i]   = fp[i][7];    // Extract sign bit (MSB)
            assign exp[i]    = fp[i][6:2];  // Extract exponent bits (6 to 2)
            assign mant[i]   = fp[i][1:0];  // Extract mantissa bits (1 to 0)
        end
    endgenerate

endmodule
