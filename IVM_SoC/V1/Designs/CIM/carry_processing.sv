`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 03:04:28 PM
// Design Name: 
// Module Name: carry_processing
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
module carry_processing (
    input signed [17:0] input_number,  // Signed input number (18-bit)
    input InFp,
    input sign_buf,
    input accum_out_valid,
    input RSTN,
    input clk,                         // Clock signal
    input [4:0]exp_max,
    output reg sign,
    output wire [4:0] Final_exp,      // Output for log2(abs(input_number))
    output wire signed [2:0]Final_mant,              // Output for input_number % 2
    output reg carry_done
);
    integer i;
    reg signed [17:0] abs_input;  // To store the absolute value of input_number
    reg [4:0] log2_result;
    reg [4:0]exp_max_buf;
    
    always @(posedge clk) begin
        if (!RSTN) begin
            //exp_max <= 5'b00000;
            log2_result <= 5'b00000;
            abs_input <= 18'h00000;
            exp_max_buf <= 0;
            sign<=0;
            carry_done <= 0;
        end else begin
            if (InFp && accum_out_valid)begin
                exp_max_buf <= exp_max;
                // Calculate the absolute value of input_number
                if (input_number < 0)
                    abs_input <= -input_number;
                else
                    abs_input <= input_number;
                
                // Find the position of the most significant bit (MSB) for log2(abs(input_number))
                for (i = 0; i < 18; i = i + 1) begin
                    if (abs_input[i] == 1'b1) begin
                        log2_result <= i-5;
                    end
                end
                sign <= sign_buf;
                carry_done <= 1'b1;
            end else begin
                carry_done <= 1'b0;
            end
        end
    end
    assign Final_exp = exp_max_buf + log2_result;
    assign Final_mant = abs_input>>(log2_result+2);
endmodule




