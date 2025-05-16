`timescale 1ns / 1ps
module CIM_FP(
    input clk,
    input DataValid,              // Input signal that starts the process
    input RSTN,                        // Reset Signal
    input [4:0] W_exp,                       // Weight Exponential, needed, when, InFp = 1
    input [3:0] W_sign [0:35],               // Weight Sign, needed, When InFp = 1;
    input [0:35] sign,                       // Array of 36 sign bits
    input [4:0] exp [0:35],                  // Array of 36 5-bit exponents
    output reg [3:0] products_sign [0:35], // This matches the input W_sign's dimensions
    output reg [4:0] exp_max_buf,          // The largest number, named "exp_max"
    output reg FindDone,                   // Done flag to indicate completion
    output reg [4:0] Diff [0:35] // Array to store the difference between each item and max
    );
    
    wire [4:0] exp_max;
    always@(posedge clk)begin
        if (!RSTN) begin
            for (int i = 0; i < 36; i = i + 1) begin 
                for (int j = 0; j < 4; j = j + 1) begin 
                    products_sign[i][j] <= 1'b0;
                end
            end        
        end else begin
            if (DataValid) begin
                for (int i = 0; i < 36; i = i + 1) begin 
                    for (int j = 0; j < 4; j = j + 1) begin 
                        products_sign[i][j] <= sign[i] ^ W_sign[i][j];
                    end
                end
            end 
        end
    end
    
    FindMax_tree MAX(
        .clk(clk),
        .DataValid(DataValid),
        .RSTN(RSTN),
        .exp(exp),
        .final_max(exp_max),
        .done(FindDone),
        .difference(Diff)
    );
    
    //FP get the exp product result
    always@(posedge clk)begin
        if (!RSTN)begin
            exp_max_buf <= 5'b00000;
        end else begin
            if (FindDone)begin
                exp_max_buf <= exp_max + W_exp - 4'b1111;
            end 
        end
    end
    
endmodule
