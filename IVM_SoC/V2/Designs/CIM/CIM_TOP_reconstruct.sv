`timescale 1ns / 1ps
module CIM_TOP_reconstruct(
    input clk,                               // Clock signal for all Timing modules
    input DataValid,                         // DataValid signal for each Timing module (packed array for 72 bits)
    input RSTN,                              //RESET Signal
    input InFp,                              //Indicates the mode of the CIM, 0 for Int, 1 for fp
    input [7:0] DataIn [0:35],               // Input data for each Timing module (unpacked array of 72 elements, each 8 bits wide)
    input [7:0] W [0:35],                    // 8-bit weight arrays for the CIM module (unpacked array) 
    input [4:0] W_exp,                       // Weight Exponential, needed, when, InFp = 1
    input [3:0] W_sign [0:35],               // Weight Sign, needed, When InFp = 1;
    output wire signed [21:0] FinalOut_INT,
    output wire [7:0]FinalOut_FP0,
    output wire [7:0]FinalOut_FP1,
    output wire [7:0]FinalOut_FP2,
    output wire [7:0]FinalOut_FP3,
    output reg CIM_done
);
    //Input 
    wire [3:0]cnt;
    wire [0:35] sign;                       // Array of 36 sign bits
    wire [4:0] exp [0:35];                  // Array of 36 5-bit exponents
    wire [0:35] A;                           // Inverted version of SDO to pass as input A to the CIM module (packed array)
    wire [0:35] SDO;

    //CIM
    reg [7:0] weight_input[0:35];
    wire [7:0] products_buff0 [0:35];
    //FP
    wire [3:0] products_sign [0:35]; // This matches the input W_sign's dimensions
    wire [4:0] exp_max_buf;          // The largest number, named "exp_max"
    wire FindDone;                   // Done flag to indicate completion
    wire [4:0] Diff [35:0];          // Array to store the difference between each item and max

    
    
    CIM_Input In(
        .clk(clk),                               // Clock signal for all Timing modules
        .DataValid(DataValid),                  // DataValid signal for each Timing module (packed array for 72 bits)
        .RSTN(RSTN),                       //RESET Signal
        .InFp(InFp),                       //Indicates the mode of the CIM, 0 for Int, 1 for fp
        .DataIn(DataIn),               // Input data for each Timing module (unpacked array of 72 elements, each 8 bits wide)
        .cnt(cnt),
        .sign(sign),                       // Array of 36 sign bits
        .exp(exp),                  // Array of 36 5-bit exponents
        .A(A),                           // Inverted version of SDO to pass as input A to the CIM module (packed array)
        .SDO(SDO)
    );

     CIM_FP FP(
        .clk(clk),
        .DataValid(DataValid),              // Input signal that starts the process
        .RSTN(RSTN),                        // Reset Signal
        .W_exp(W_exp),                       // Weight Exponential, needed, when, InFp = 1
        .W_sign(W_sign),               // Weight Sign, needed, When InFp = 1;
        .sign(sign),                       // Array of 36 sign bits
        .exp(exp),                  // Array of 36 5-bit exponents
        .products_sign(products_sign), // This matches the input W_sign's dimensions
        .exp_max_buf(exp_max_buf),          // The largest number, named "exp_max"
        .FindDone(FindDone),                   // Done flag to indicate completion
        .Diff(Diff) // Array to store the difference between each item and max
    );
    
    always @(*) begin
        for (int i = 0; i < 36; i = i + 1) begin
            weight_input[i] = ~W[i];  // Invert each element of the array
        end
    end
     
    CIM cim_inst (
        .A(A),                            // Use the inverted SDO as input A for the CIM module
        .W(weight_input),                            // Pass the weights to the CIM module
        .products(products_buff0)       // Get the products from the CIM module and store in products_buff[0]
    );   
    
    CIM_Compute compute(
        .clk(clk),                               // Clock signal for all Timing modules
        .DataValid(DataValid),                         // DataValid signal for each Timing module (packed array for 72 bits)
        .RSTN(RSTN),                              // RESET Signal
        .InFp(InFp),                              // Indicates the mode of the CIM, 0 for Int, 1 for fp
        .products_buff0(products_buff0),       // 72 elements, each 8-bit wide output product
        .products_sign(products_sign),        // This matches the input W_sign's dimensions
        .SDO(SDO),
        .cnt(cnt),
        .Diff(Diff),
        .exp_max_buf(exp_max_buf),
        .FinalOut_INT(FinalOut_INT),
        .FinalOut_FP0(FinalOut_FP0),
        .FinalOut_FP1(FinalOut_FP1),
        .FinalOut_FP2(FinalOut_FP2),
        .FinalOut_FP3(FinalOut_FP3),
        .CIM_done(CIM_done)
    );
        
endmodule
