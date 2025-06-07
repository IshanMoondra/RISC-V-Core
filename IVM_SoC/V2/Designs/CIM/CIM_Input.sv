`timescale 1ns / 1ps
module CIM_Input(
    input clk,                               // Clock signal for all Timing modules
    input DataValid,                  // DataValid signal for each Timing module (packed array for 72 bits)
    input RSTN,                       //RESET Signal
    input InFp,                       //Indicates the mode of the CIM, 0 for Int, 1 for fp
    input [7:0] DataIn [0:35],               // Input data for each Timing module (unpacked array of 72 elements, each 8 bits wide)
    output reg [3:0]cnt,
    output wire [0:35] sign,                       // Array of 36 sign bits
    output wire [4:0] exp [0:35],                  // Array of 36 5-bit exponents
    output wire [0:35] A,                           // Inverted version of SDO to pass as input A to the CIM module (packed array)
    output wire [0:35] SDO
);

    
    reg count_enable;                        // Signal to enable counting once DataValid is received
    reg [7:0] DataIn_SEL [0:35];
    wire [2:0] BitIndex; 
    wire [1:0] mant [0:35];

    wire DataDone;
    
    fp8_Decoder dec(
        .fp(DataIn),
        .sign(sign),
        .exp(exp),
        .mant(mant)
    );
        
    always @(*) begin
        if(InFp)begin
            for (int i = 0; i < 36; i = i + 1) begin
                DataIn_SEL[i] <= {6'b000001, mant[i]};
            end    
        end else begin
            DataIn_SEL <= DataIn;
        end       
    end
    
    Timing timing_inst (
        .clk(clk),
        .InFp(InFp),
        .RSTN(RSTN),
        .DataValid(DataValid),
        .DataIn(DataIn_SEL),
        .SDO(SDO),              // SDO output from Timing module
        .BitIndex(BitIndex),  // Export DataIndex output
        .DataDone(DataDone)     // Export DataDone signal
    );   
    
    genvar i;
    generate
        for (i = 0; i < 36; i = i + 1) begin    
            assign A[i] = ~SDO[i];         // Invert the SDO signal and assign to A
        end     
    endgenerate

    always @(posedge clk) begin
        if (!RSTN || cnt == 14) begin
            cnt <= 4'b0000;        // Reset the counter when RSTN is asserted
            count_enable <= 1'b0;  // Disable counting when reset
        end
        else if (DataValid) begin
            count_enable <= 1'b1;  // Enable counting when DataValid pulse is received
            cnt <= 4'b0000;
        end
        if (count_enable) begin
            cnt <= cnt + 1;        // Continue counting while count_enable is active
        end
    end

endmodule