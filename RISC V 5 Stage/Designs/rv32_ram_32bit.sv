`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2023 17:06:57
// Design Name: 
// Module Name: rv32_ram_32bit
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

module rv32_ram_32bit
    (
        input clk,
        input enable,
        input read,
        input [31:0] address,
        input [31:0] data_write,
        output reg [31:0] data_read
    );
    
reg [31:0] RAM [255:0];    
integer i;

//Module Incomplete.
//Time for RV32 Assembly.

initial
begin
    data_read = {12'b0, 5'b0, 3'b0, 5'b0, 7'b0010011}; //NOP Instruction.
    for ( i = 0; i < 256; i = i + 1)
    begin
        // RAM[i] = {12'b0, 5'b0, 3'b0, 5'b0, 7'b0010011}; 
        // RAM[i] = 32'hFFFF_FFFF;
        RAM[i] = 0;       
    end
    // /*
    // Note: This program adds 2 numbers properly, with the required forwarding.
    // However, the results seem to be stored back in the wrong spot. 
    // Program Start
    // RAM[0] = {12'd0, 5'd0, 3'd0, 5'd31, 7'b0010011};    // Load 0 into x31
    // RAM[1] = {12'd0, 5'd0, 3'd0, 5'd0, 7'b0010011};     // NOP
    RAM[0] = {12'd7, 5'd0, 3'd0, 5'd1, 7'b0010011};    // Load 8 into x1
    RAM[1] = {12'd8, 5'd0, 3'd0, 5'd2, 7'b0010011};     // Load 1 into x2
    // RAM[4] = {12'd0, 5'd0, 3'd0, 5'd0, 7'b0010011};     // NOPs
    // RAM[5] = {12'd0, 5'd0, 3'd0, 5'd0, 7'b0010011};
    // RAM[6] = {12'd0, 5'd0, 3'd0, 5'd0, 7'b0010011};
    // RAM[0] = {12'h0, 5'd0, 3'b010, 5'd1, 7'b0000011};    //Load Instruction. 
    // RAM[3] = {12'h0, 5'd0, 3'b010, 5'd2, 7'b0000011};    //Load Instruction. 
    RAM[2] = {7'd0, 5'd1, 5'd2, 3'd0, 5'd3, 7'b0110011};    // x3 = x2 + x1
    // RAM[3] = {7'd0, 5'd1, 5'd2, 3'd0, 5'd3, 7'b0110011};    // x3 = x2 + x1
    // RAM[3] = {7'd0, 5'd0, 5'd1, 3'd0, 5'd1, 7'b0110011};    // x1 = x1 + 0
    // RAM[4] = {7'd0, 5'd0, 5'd2, 3'd0, 5'd2, 7'b0110011};    // x2 = x2 + 0
    // RAM[5] = {7'd0, 5'd0, 5'd3, 3'd0, 5'd3, 7'b0110011};   // x3 = x3 + 0
    RAM[4] = 32'hFFFF_FFFF;    // HLT
    // */
    /*
    RAM[1] = {12'd1, 5'd0, 3'd0, 5'd1, 7'b0010011};
    RAM[2] = {12'd4, 5'd1, 3'd0, 5'd1, 7'b0010011};
    RAM[3] = {12'd6, 5'd0, 3'd0, 5'd2, 7'b0010011};
    RAM[4] = {12'd1, 5'd2, 3'd0, 5'd1, 7'b0010011};
    RAM[5] = {12'd0, 5'd1, 3'd0, 5'd1, 7'b0010011};
    RAM[6] = {12'd44, 5'd0, 3'd0, 5'd2, 7'b0010011};
    RAM[7] = {12'd1, 5'd2, 3'd0, 5'd2, 7'b0010011};
    RAM[8] = {12'd45, 5'd0, 3'd0, 5'd1, 7'b0010011};
    RAM[9] = {7'd0, 5'd1, 5'd2, 3'd0, 5'd3, 7'b0110011};
    RAM[10] = {12'd1, 5'd3, 3'd0, 5'd3, 7'b0010011};
    RAM[11] = {12'd5, 5'd0, 3'd0, 5'd5, 7'b0010011};
    RAM[12] = {12'd0, 5'd5, 3'd0, 5'd5, 7'b0010011};
    RAM[13] = {12'd6, 5'd0, 3'd0, 5'd6, 7'b0010011};
    RAM[14] = {12'd0, 5'd6, 3'd0, 5'd6, 7'b0010011};
    RAM[15] = {7'b0100000, 5'd5, 5'd6, 3'd0, 5'd6, 7'b0110011};
    RAM[16] = {12'd1, 5'd6, 3'd0, 5'd6, 7'b0010011};
    */
    /*
    RAM[0] = {12'd32, 5'd2, 3'd0, 5'd2, 7'b0010011};
    RAM[1] = {12'd32, 5'd2, 3'd0, 5'd2, 7'b0010011};
    RAM[2] = {12'd0, 5'd2, 3'd0, 5'd2, 7'b0010011};
    RAM[3] = {12'd0, 5'd2, 3'd0, 5'd2, 7'b0010011};
    RAM[4] = {12'd36, 5'd1, 3'd0, 5'd1, 7'b0010011};
    RAM[5] = {12'd36, 5'd1, 3'd0, 5'd1, 7'b0010011};
    RAM[6] = {12'd0, 5'd1, 3'd0, 5'd1, 7'b0010011};
    RAM[7] = {12'd0, 5'd1, 3'd0, 5'd1, 7'b0010011};
    */
    /*
    RAM[2] = {12'd04, 5'd1, 3'd0, 5'd2, 7'b0010011};
    //RAM[2] = {12'd0, 5'd0, 3'd0, 5'd0, 7'b0010011};
    RAM[3] = {7'd0, 5'd2, 5'd1, 3'd0, 5'd1, 7'b0110011};
    RAM[4] = {12'b0, 5'b0, 3'b0, 5'b0, 7'b0010011};
    */ 
     /*
    // Verification Testing Code    
    RAM[0] = {12'd0, 5'd0, 3'd0, 5'd31, 7'b0010011};
    RAM[1] = {12'd2, 5'd0, 3'd0, 5'd1, 7'b0010011};
    RAM[2] = {12'd1, 5'd0, 3'd0, 5'd2, 7'b0010011};
    RAM[3] = {7'd0, 5'd1, 5'd2, 3'd0, 5'd3, 7'b0110011};   //Addition
    RAM[4] = {12'd1, 5'd3, 3'd0, 5'd3, 7'b0010011};
    RAM[5] = {7'b0100000, 5'd1, 5'd2, 3'd0, 5'd3, 7'b0110011}; //Subtraction
    RAM[6] = {12'd3, 5'd0, 3'd0, 5'd3, 7'b0010011};
    RAM[7] = {7'd0, 5'd3, 5'd1, 3'b111, 5'd3, 7'b0110011}; //Bitwise AND
    RAM[8] = {12'd0, 5'd3, 3'd0, 5'd3, 7'b0010011};
    RAM[9] = {7'd0, 5'd2, 5'd1, 3'b110, 5'd3, 7'b0110011}; //Bitwise OR
    RAM[10] = {12'd0, 5'd3, 3'd0, 5'd3, 7'b0010011};
    RAM[11] = {7'd0, 5'd3, 5'd0, 3'b100, 5'd3, 7'b0110011}; //Bitwise XOR
    RAM[12] = {12'd0, 5'd0, 3'd0, 5'd3, 7'b0010011};
    RAM[13] = {12'h840, 5'd0, 3'd0, 5'd1, 7'b0010011};
    RAM[14] = {12'd2, 5'd3, 3'd0, 5'd2, 7'b0010011};
    RAM[15] = {7'd0, 5'd2, 5'd1, 3'b001, 5'd3, 7'b0110011}; //Shift Left Logical !Issues!
    RAM[16] = {7'd0, 5'd2, 5'd1, 3'b101, 5'd3, 7'b0110011}; //Shift Right Logical !Issues!
    RAM[17] = {7'b0100000, 5'd2, 5'd1, 3'b101, 5'd3, 7'b0110011}; //Shift Right Arithmetic !Issues!
    RAM[18] = {12'd0, 5'd0, 3'd0, 5'd0, 7'b0010011};
    RAM[19] = {12'd5, 5'd0, 3'd0, 5'd6, 7'b0010011};
    RAM[20] = {12'd8, 5'd0, 3'd0, 5'd7, 7'b0010011};
    RAM[21] = {7'd0, 5'd2, 5'd1, 3'b010, 5'd4, 7'b0110011}; //Set Less Than (Signed)
    RAM[22] = {12'd0, 5'd4, 3'd0, 5'd4, 7'b0010011};
    RAM[23] = {7'd0, 5'd1, 5'd2, 3'b010, 5'd4, 7'b0110011}; //Set Less Than (Signed)
    RAM[24] = {12'd0, 5'd4, 3'd0, 5'd4, 7'b0010011};
    RAM[25] = {7'b0100000, 5'd7, 5'd6, 3'd0, 5'd8, 7'b0110011}; //Subtraction
    RAM[26] = {12'd0, 5'd8, 3'd0, 5'd8, 7'b0010011};
    RAM[27] = {7'd0, 5'd0, 5'd8, 3'b010, 5'd9, 7'b0110011}; //Set Less Than (Signed)
    RAM[28] = {12'd0, 5'd9, 3'd0, 5'd9, 7'b0010011};
    RAM[29] = {7'd0, 5'd0, 5'd8, 3'b011, 5'd9, 7'b0110011}; //Set Less Than (Unsigned)
    RAM[30] = {12'd0, 5'd9, 3'd0, 5'd9, 7'b0010011};
    RAM[31] = {12'h55, 5'd0, 3'd0, 5'd10, 7'b0010011}; //ADD Immediate.
    RAM[32] = {12'h0, 5'd10, 3'd0, 5'd10, 7'b0010011}; 
    RAM[33] = {12'h55, 5'd10, 3'd0, 5'd10, 7'b0010011};    //ADD Immediate.
    RAM[34] = {12'h0, 5'd10, 3'd0, 5'd10, 7'b0010011}; 
    RAM[35] = {12'hfff, 5'd10, 3'b111, 5'd11, 7'b0010011}; //AND Immediate.
    RAM[36] = {12'h0, 5'd11, 3'd0, 5'd11, 7'b0010011};
    RAM[37] = {12'h0aa, 5'd10, 3'b111, 5'd11, 7'b0010011}; //AND Immediate.
    RAM[38] = {12'h0, 5'd11, 3'd0, 5'd11, 7'b0010011}; 
    RAM[39] = {12'h8aa, 5'd10, 3'b110, 5'd11, 7'b0010011}; //OR Immediate.
    RAM[40] = {12'h0, 5'd11, 3'd0, 5'd11, 7'b0010011}; 
    RAM[41] = {12'h8aa, 5'd10, 3'b100, 5'd11, 7'b0010011}; //XOR Immediate.
    RAM[42] = {12'h0, 5'd11, 3'd0, 5'd11, 7'b0010011}; 
    RAM[43] = {12'h8aa, 5'd0, 3'b010, 5'd11, 7'b0010011}; //Set Less Than (Signed) Immediate.
    RAM[44] = {12'h0, 5'd11, 3'd0, 5'd11, 7'b0010011}; 
    RAM[45] = {12'h8aa, 5'd0, 3'b011, 5'd11, 7'b0010011}; //Set Less Than (Unsigned) Immediate.
    RAM[46] = {12'h0, 5'd11, 3'd0, 5'd11, 7'b0010011}; 
    RAM[47] = {12'h840, 5'd0, 3'd0, 5'd12, 7'b0010011}; 
    RAM[48] = {7'd0, 5'h2, 5'd12, 3'b001, 5'd12, 7'b0010011};  //Shift Left Logical Immediate !Issues! //Check CU definitions. 
    RAM[49] = {7'd0, 5'h2, 5'd12, 3'b101, 5'd12, 7'b0010011};  //Shift Right Logical Immediate !Issues!
    RAM[50] = {7'b0100000, 5'h2, 5'd12, 3'b101, 5'd12, 7'b0010011};    //Shift Right Arithmetic Immediate !Issues!
    RAM[51] = {12'h0, 5'd12, 3'd0, 5'd0, 7'b0010011};
    RAM[52] = {12'h0, 5'd0, 3'd0, 5'd0, 7'b0010011};
    RAM[53] = {12'h4, 5'd0, 3'b010, 5'd13, 7'b0000011};    //Load Instruction. 
    RAM[54] = {12'h0, 5'd13, 3'd0, 5'd13, 7'b0010011};
    RAM[55] = {12'h10, 5'd0, 3'b010, 5'd14, 7'b0000011};    //Load Instruction. 
    RAM[56] = {12'h0, 5'd14, 3'd0, 5'd14, 7'b0010011}; 
    RAM[57] = {12'h0, 5'd0, 3'd0, 5'd0, 7'b0010011}; 
    RAM[58] = {12'h45, 5'd0, 3'd0, 5'd15, 7'b0010011};
    RAM[59] = {7'd0, 5'd15, 5'd0, 3'd0, 5'd0, 7'b0110011};   //Addition 
    RAM[60] = {7'h0, 5'd15, 5'd0, 3'b010, 5'h1f, 7'b0100011};  //Store Instruction. !Issue!
    RAM[61] = {12'h0, 5'd15, 3'd0, 5'd15, 7'b0010011};
    RAM[62] = {12'h20, 5'd0, 3'b010, 5'd17, 7'b0000011};    //Load Instruction. 
    RAM[63] = {12'h0, 5'd17, 3'd0, 5'd17, 7'b0010011};
    RAM[64] = {12'h1f, 5'd0, 3'b010, 5'd16, 7'b0000011};    //Load Instruction. 
    RAM[65] = {12'h0, 5'd16, 3'd0, 5'd16, 7'b0010011};    
    RAM[66] = {12'h1, 5'd15, 3'd0, 5'd15, 7'b0010011};     //Somehow works!?
    RAM[67] = {12'h42, 5'd0, 3'd0, 5'd18, 7'b0010011};
    RAM[68] = {12'h24, 5'd0, 3'd0, 5'd19, 7'b0010011};
    RAM[69] = {1'b0, 6'h0, 5'd18, 5'd19, 3'd0, 4'h0, 1'b0, 7'b1100011};    //BEQ for $r18 & $r19. 
    RAM[70] = {12'h24, 5'd0, 3'd0, 5'd18, 7'b0010011};
    RAM[71] = {12'h45, 5'd0, 3'd0, 5'd19, 7'b0010011};
    RAM[72] = {1'b0, 6'h0, 5'd0, 5'd0, 3'd0, 4'h0, 1'b0, 7'b1100011};    //BEQ for $r18 & $r19.
    RAM[73] = {7'h0, 5'd19, 5'd0, 3'b010, 5'h10, 7'b0100011};  //Store Instruction. !Issue!
    RAM[74] = {7'h0, 5'd18, 5'd0, 3'b010, 5'h11, 7'b0100011};  //Store Instruction. !Issue!
    RAM[75] = {12'h10, 5'd0, 3'b010, 5'd20, 7'b0000011};    //Load Instruction.
    RAM[76] = {12'h11, 5'd0, 3'b010, 5'd21, 7'b0000011};    //Load Instruction.
    RAM[77] = {12'h0, 5'd0, 3'd0, 5'd20, 7'b0010011};
    RAM[78] = {12'h0, 5'd0, 3'd0, 5'd21, 7'b0010011};
    RAM[79] = {7'h0, 5'd15, 5'd0, 3'b010, 5'h1f, 7'b0100011};  //Store Instruction. !Issue!
    RAM[80] = {12'h0, 5'd15, 3'd0, 5'd15, 7'b0010011};
    RAM[81] = {12'h20, 5'd0, 3'b010, 5'd17, 7'b0000011};    //Load Instruction. 
    RAM[82] = {12'h0, 5'd17, 3'd0, 5'd17, 7'b0010011};
    RAM[83] = {12'h1f, 5'd0, 3'b010, 5'd16, 7'b0000011};    //Load Instruction. 
    RAM[84] = {12'h0, 5'd16, 3'd0, 5'd16, 7'b0010011};    
    RAM[85] = {12'h1, 5'd15, 3'd0, 5'd15, 7'b0010011};     //Somehow works!?
    RAM[86] = 32'hFFFF_FFFF;
    */
    //RAM[18] = {12'd0, 5'd3, 3'd0, 5'd3, 7'b0010011};
    /*
    RAM[0] = {12'h78, 5'd0, 3'd0, 5'd20, 7'b0010011};
    RAM[1] = {12'h89, 5'd0, 3'd0, 5'd21, 7'b0010011};
    RAM[2] = {12'h00, 5'd0, 3'b010, 5'd0, 7'b0000011};    //Load Instruction.
    RAM[3] = {7'h0, 5'd0, 5'd0, 3'b010, 5'h00, 7'b0100011};  //Store Instruction. !Issue!
    RAM[4] = {7'h0, 5'd0, 5'd0, 3'b010, 5'h00, 7'b0100011};  //Store Instruction. !Issue!
    RAM[5] = {7'h0, 5'd20, 5'd0, 3'b010, 5'h00, 7'b0100011};  //Store Instruction. !Issue!
    RAM[6] = {7'h0, 5'd21, 5'd0, 3'b010, 5'h01, 7'b0100011};  //Store Instruction. !Issue!
    RAM[7] = {12'h00, 5'd0, 3'b010, 5'd0, 7'b0000011};    //Load Instruction.
    RAM[8] = {12'h00, 5'd0, 3'b010, 5'd22, 7'b0000011};    //Load Instruction.
    RAM[9] = {12'h0f, 5'd0, 3'b010, 5'd23, 7'b0000011};    //Load Instruction.
    RAM[10] = {12'h0, 5'd22, 3'd0, 5'd22, 7'b0010011};
    RAM[11] = {12'h0, 5'd23, 3'd0, 5'd23, 7'b0010011};
    */
    /*
    RAM[0] = {12'h78, 5'd0, 3'd0, 5'd20, 7'b0010011};
    RAM[1] = {12'h4, 5'd0, 3'd0, 5'd21, 7'b0010011};
    RAM[2] = {7'd0, 5'd20, 5'd21, 3'd0, 5'd20, 7'b0110011};   //Addition     
    RAM[3] = {12'h0, 5'd21, 3'd0, 5'd21, 7'b0010011};
    RAM[4] = {12'h12, 5'd22, 3'b010, 5'd0, 7'b0000011};    //Load Instruction.
    RAM[5] = {12'h0, 5'd22, 3'd0, 5'd22, 7'b0010011};
    RAM[6] = {7'h0, 5'd22, 5'd20, 3'b010, 5'h1c, 7'b0100011};  //Store Instruction. !Issue!
    RAM[8] = {12'h1c, 5'd22, 3'b010, 5'd0, 7'b0000011};    //Load Instruction.
    //RAM[9] = {12'h0, 5'd22, 3'd0, 5'd22, 7'b0010011};
    RAM[10] = {12'h0, 5'd22, 3'd0, 5'd22, 7'b0010011};
    RAM[10] = {7'd0, 5'h2, 5'd20, 3'b001, 5'd23, 7'b0010011};  //Shift Left Logical Immediate !Issues! //Check CU definitions.
    RAM[11] = {12'h0, 5'd23, 3'd0, 5'd23, 7'b0010011};
    RAM[12] = {7'd0, 5'd21, 5'd20, 3'b001, 5'd23, 7'b0110011}; //Shift Left Logical !Issues!
    RAM[13] = {12'h0, 5'd23, 3'd0, 5'd23, 7'b0010011};
    */
    /*
    RAM[1] = {12'd2, 5'd0, 3'd0, 5'd1, 7'b0010011};
    RAM[2] = {12'd1, 5'd0, 3'd0, 5'd2, 7'b0010011};
    RAM[3] = {7'd0, 5'd1, 5'd2, 3'd0, 5'd3, 7'b0110011};   //Addition
    RAM[4] = {12'd1, 5'd3, 3'd0, 5'd3, 7'b0010011};
    RAM[5] = {12'd0, 5'd0, 3'd0, 5'd3, 7'b0010011};
    RAM[6] = {12'h840, 5'd0, 3'd0, 5'd1, 7'b0010011};
    RAM[7] = {12'd2, 5'd3, 3'd0, 5'd2, 7'b0010011};
    RAM[8] = {7'd0, 5'd2, 5'd1, 3'b001, 5'd3, 7'b0110011}; //Shift Left Logical !Issues!
    RAM[9] = {12'd0, 5'd3, 3'd0, 5'd3, 7'b0010011};
    RAM[10] = {7'd0, 5'd2, 5'd1, 3'b101, 5'd3, 7'b0110011}; //Shift Right Logical !Issues!
    RAM[12] = {12'd0, 5'd3, 3'd0, 5'd3, 7'b0010011};
    RAM[13] = {7'b0100000, 5'd2, 5'd1, 3'b101, 5'd3, 7'b0110011}; //Shift Right Arithmetic !Issues!
    RAM[14] = {12'd0, 5'd3, 3'd0, 5'd3, 7'b0010011};
    */
    /*
    RAM[0] = {12'h840, 5'd0, 3'd0, 5'd1, 7'b0010011};
    RAM[1] = {12'd2, 5'd3, 3'd0, 5'd2, 7'b0010011};
    RAM[2] = {7'd0, 5'd2, 5'd1, 3'b001, 5'd3, 7'b0110011}; //Shift Left Logical !Works!
    RAM[3] = {12'd0, 5'd3, 3'd0, 5'd3, 7'b0010011};
    */
    /*
    RAM[0] = {12'h840, 5'd0, 3'd0, 5'd1, 7'b0010011};
    RAM[1] = {12'd2, 5'd3, 3'd0, 5'd2, 7'b0010011};
    RAM[2] = {7'd0, 5'd2, 5'd1, 3'b101, 5'd3, 7'b0110011}; //Shift Right Logical !Works!
    RAM[3] = {12'd0, 5'd3, 3'd0, 5'd3, 7'b0010011};
    */
    /*
    RAM[0] = {12'h840, 5'd0, 3'd0, 5'd1, 7'b0010011};
    RAM[1] = {12'd2, 5'd3, 3'd0, 5'd2, 7'b0010011};
    RAM[2] = {7'b0100000, 5'd2, 5'd1, 3'b101, 5'd3, 7'b0110011}; //Shift Right Arithmetic !Works!
    RAM[3] = {12'd0, 5'd3, 3'd0, 5'd3, 7'b0010011};
    */
    /*
    RAM[0] = {12'h840, 5'd0, 3'd0, 5'd1, 7'b0010011};
    RAM[1] = {12'd2, 5'd3, 3'd0, 5'd2, 7'b0010011};
    RAM[2] = {7'd0, 5'h2, 5'd1, 3'b001, 5'd31, 7'b0010011};  //Shift Left Logical Immediate !Works!
    RAM[3] = {12'd0, 5'd31, 3'd0, 5'd3, 7'b0010011};
    */
    /*
    RAM[0] = {12'h740, 5'd0, 3'd0, 5'd1, 7'b0010011};
    RAM[1] = {12'd2, 5'd0, 3'd0, 5'd2, 7'b0010011};
    RAM[2] = {7'd0, 5'h3, 5'd1, 3'b101, 5'd7, 7'b0010011};  //Shift Right Logical Immediate !Works!
    RAM[3] = {12'd0, 5'd7, 3'd0, 5'd7, 7'b0010011};
    RAM[4] = {12'd15, 5'd0, 3'd0, 5'd3, 7'b0010011};
    RAM[5] = {12'd24, 5'd0, 3'd0, 5'd4, 7'b0010011};    
    RAM[6] = {7'd0, 5'd3, 5'd4, 3'd0, 5'd7, 7'b0110011};   //Addition    
    RAM[7] = {12'd0, 5'd7, 3'd0, 5'd7, 7'b0010011};
    */    
    /*
    RAM[1] = {12'h740, 5'd0, 3'd0, 5'd1, 7'b0010011};
    RAM[2] = {12'd2, 5'd0, 3'd0, 5'd2, 7'b0010011};
    RAM[3] = {7'b0100000, 5'h2, 5'd1, 3'b101, 5'd2, 7'b0010011};    //Shift Right Arithmetic Immediate !Issues! Can't do X = X << 2
    RAM[4] = {12'd0, 5'd2, 3'd0, 5'd2, 7'b0010011};
    RAM[5] = {12'h840, 5'd0, 3'd0, 5'd4, 7'b0010011};
    RAM[6] = {12'd2, 5'd2, 3'd0, 5'd5, 7'b0010011};
    RAM[7] = {7'd0, 5'd5, 5'd4, 3'd0, 5'd7, 7'b0110011};   //Addition    
    RAM[8] = {12'd0, 5'd7, 3'd0, 5'd7, 7'b0010011};
    */
    /*
    RAM[1] = {12'h740, 5'd0, 3'd0, 5'd1, 7'b0010011};
    RAM[2] = {12'd2, 5'd0, 3'd0, 5'd2, 7'b0010011};
    //RAM[3] = {7'b0100000, 5'h2, 5'd1, 3'b101, 5'd2, 7'b0010011};    //Shift Right Arithmetic Immediate !Issues! Can't do X = X << 2
    RAM[3] = {7'b0100000, 5'h2, 5'd1, 3'b101, 5'd2, 7'b0010011};    //Shift Right Arithmetic Immediate !Issues! Can't do X = X << 2
    RAM[4] = {12'd0, 5'd2, 3'd0, 5'd2, 7'b0010011};
    */
    /*
    //Loads Verified and Stores Verified and Store Loads also Verified!
    RAM[0] = {12'h78, 5'd0, 3'd0, 5'd20, 7'b0010011};
    RAM[1] = {12'h10, 5'd0, 3'd0, 5'd01, 7'b0010011};
    RAM[2] = {12'h00, 5'd0, 3'b010, 5'd19, 7'b0000011};    //Load Instruction.
    RAM[3] = {12'h0, 5'd19, 3'd0, 5'd19, 7'b0010011};      //Load Verified.
    // RAM[4] = {12'h00, 5'd1, 3'b010, 5'd21, 7'b0000011};    //Load Instruction.
    RAM[5] = {12'h0, 5'd21, 3'd0, 5'd21, 7'b0010011};      //Load Verified.    
    RAM[6] = {7'h00, 5'd19, 5'd01, 3'b010, 5'h06, 7'b0100011};  //Store Instruction. !Issue!
    RAM[7] = {12'h06, 5'd01, 3'b010, 5'd22, 7'b0000011};    //Load Instruction.
    RAM[8] = {12'h00, 5'd22, 3'd0, 5'd22, 7'b0010011};      //Load Verified.
    RAM[5] = 32'hFFFF_FFFF;
    */
    /*
    RAM[0] = {12'h40, 5'd0, 3'd0, 5'd1, 7'b0010011};
    RAM[1] = {12'h41, 5'd0, 3'd0, 5'd2, 7'b0010011};
    RAM[2] = {12'h0, 5'd5, 3'd0, 5'd5, 7'b0010011};
    RAM[3] = {1'b0, -10'd2, 1'b0, 8'd0, 5'd6, 7'b1101111};    //JAL
    //RAM[3] = {1'b0, 6'h1, 5'd2, 5'd1, 3'd0, 4'h0, 1'b0, 7'b1100011};    //BEQ for $r1 & $r2. !Issues! 
    //RAM[3] = {1'b1, 6'h1, 5'd1, 5'd2, 3'b001, 4'h0, 1'b0, 7'b1100011};    //BNE for $r1 & $r2. !Issues!
    //RAM[3] = {1'b0, 6'h0, 5'd2, 5'd0, 3'b101, 4'h0, 1'b0, 7'b1100011};    //BGT for $r1 & $r2. !Issues! 
    //RAM[2] = {1'b0, 10'h0, 1'd0, 8'd00, 5'd5, 7'b1101111};
    //RAM[3] = {1'b0, 10'h0, 1'd0, 8'd00, 5'd5, 7'b1101111};
    //RAM[4] = {1'b1, 6'h0, 5'd1, 5'd2, 3'b001, 4'hf, 1'b0, 7'b0010011};    //BNE for $r1 & $r2. !Issues!
    RAM[4] = {12'h4, 5'd5, 3'd0, 5'd5, 7'b0010011}; 
    RAM[16] = {12'h10, 5'd0, 3'd0, 5'd3, 7'b0010011};
    RAM[17] = {12'h20, 5'd3, 3'd0, 5'd4, 7'b0010011};
    RAM[18] = {12'h1, 5'd5, 3'd0, 5'd5, 7'b0010011};
    RAM[19] = {12'h0, 5'd6, 3'd0, 5'd6, 7'b0010011};
    RAM[36] = {12'h1, 5'd6, 3'd0, 5'd6, 7'b0010011};
    */
    /*
    RAM[0] = {12'h0, 5'd0, 3'd0, 5'd5, 7'b0010011};
    RAM[1] = {12'h0, 5'd0, 3'd0, 5'd4, 7'b0010011};    
    RAM[2] = {12'h0, 5'd5, 3'd0, 5'd5, 7'b0010011};
    RAM[3] = {12'h1, 5'd4, 3'd0, 5'd4, 7'b0010011}; 
    RAM[4] = {1'b0, -10'd2, 1'b0, 8'd0, 5'd5, 7'b1101111};    //JAL Works!
    RAM[5] = {12'h1, 5'd1, 3'd0, 5'd1, 7'b0010011};
    */
    /*
    RAM[0] = {12'h0, 5'd0, 3'd0, 5'd5, 7'b0010011};
    RAM[1] = {12'h3, 5'd0, 3'd0, 5'd4, 7'b0010011};    
    //RAM[2] = {12'h0, 5'd5, 3'd0, 5'd5, 7'b0010011};
    //RAM[3] = {12'h0, 5'd4, 3'd0, 5'd4, 7'b0010011}; 
    RAM[6] = {1'b1, 6'h0f, 5'd4, 5'd5, 3'b001, 4'he, 1'b0, 7'b0010011};    //BNE for $r4 & $r5. !Issues!    
    //RAM[4] = {1'b0, 6'h0f, 5'd0, 5'd5, 3'b000, 4'he, 1'b0, 7'b1100011};    //BEQ for $r0 & $r0. Works
    //RAM[5] = {12'h1, 5'd4, 3'b0, 5'd4, 7'b0010011};
    //RAM[8] = {1'b0, 6'h0f, 5'd4, 5'd0, 3'd0, 4'he, 1'b000, 7'b1100011};    //BEQ for $r0 & $r0. Works
    */
    /*
    RAM[0] = {12'd24, 5'd0, 3'd0, 5'd1, 7'b0010011};
    RAM[1] = {12'd12, 5'd0, 3'd0, 5'd2, 7'b0010011};
    RAM[2] = {7'd0, 5'd1, 5'd2, 3'd0, 5'd3, 7'b0110011};   //Addition
    RAM[3] = {7'd0, 5'd3, 5'd0, 3'd0, 5'd3, 7'b0110011};   //Addition
    // RAM[2] = {7'd0, 5'h2, 5'd2, 3'b001, 5'd2, 7'b0010011};  //Shift Left Logical Immediate !Works!
    // RAM[5] = {1'b0, -10'd2, 1'b0, 8'd0, 5'd5, 7'b1101111};    //JAL Works!
    RAM[4] = 32'hFFFF_FFFF;
    */
    
    // Program Start
    // RAM[0] = {12'd0, 5'd0, 3'd0, 5'd31, 7'b0010011};
    // RAM[1] = {12'd6, 5'd0, 3'd0, 5'd01, 7'b0010011};
    // RAM[2] = {12'd3, 5'd0, 3'd0, 5'd02, 7'b0010011};
    // RAM[6] = {7'd0, 5'd02, 5'd01, 3'd0, 5'd01, 7'b0110011};   //Addition
    // // RAM[4] = {7'd0, 5'd01, 5'd0, 3'd0, 5'd0, 7'b0110011};
    // RAM[10] = {7'd0, 5'd01, 5'd0, 3'd0, 5'd0, 7'b0110011};
    // RAM[11] = 32'hFFFF_FFFF;

    // // Verification Testing Code
    // RAM[1] = {12'd16, 5'd0, 3'd0, 5'd1, 7'b0010011};
    // RAM[2] = {12'd10, 5'd0, 3'd0, 5'd2, 7'b0010011};
    // RAM[3] = {7'd0, 5'd1, 5'd2, 3'd0, 5'd3, 7'b0110011};   //Addition
    // // RAM[4] = {12'd0, 5'd3, 3'd0, 5'd3, 7'b0010011};
    // RAM[4] = {7'h00, 5'd3, 5'd0, 3'b010, 5'h00, 7'b0100011};  //Store Instruction. !Issue!
    // // RAM[5] = {7'b0100000, 5'd1, 5'd2, 3'd0, 5'd3, 7'b0110011}; //Subtraction
    // RAM[5] = {12'h00, 5'd0, 3'b010, 5'd19, 7'b0000011};    //Load Instruction.
    // RAM[6] = {12'h0, 5'd19, 3'd0, 5'd19, 7'b0010011};      //Load Verified.
    // RAM[6] = {12'd3, 5'd0, 3'd0, 5'd3, 7'b0010011};
    // RAM[7] = {7'd0, 5'd3, 5'd1, 3'b111, 5'd3, 7'b0110011}; //Bitwise AND
    // RAM[8] = {12'd0, 5'd3, 3'd0, 5'd3, 7'b0010011};
    // RAM[9] = {7'd0, 5'd2, 5'd1, 3'b110, 5'd3, 7'b0110011}; //Bitwise OR
    // RAM[10] = {12'd0, 5'd3, 3'd0, 5'd3, 7'b0010011};
    // RAM[11] = {7'd0, 5'd3, 5'd0, 3'b100, 5'd3, 7'b0110011}; //Bitwise XOR
    // RAM[12] = {12'd0, 5'd0, 3'd0, 5'd3, 7'b0010011};
    // RAM[13] = {12'h840, 5'd0, 3'd0, 5'd1, 7'b0010011};
    // RAM[14] = {12'd2, 5'd3, 3'd0, 5'd2, 7'b0010011};
    // RAM[15] = {7'd0, 5'd2, 5'd1, 3'b001, 5'd3, 7'b0110011}; //Shift Left Logical !Issues!
    // RAM[16] = {7'd0, 5'd2, 5'd1, 3'b101, 5'd3, 7'b0110011}; //Shift Right Logical !Issues!
    // RAM[17] = {7'b0100000, 5'd2, 5'd1, 3'b101, 5'd3, 7'b0110011}; //Shift Right Arithmetic !Issues!
    // RAM[18] = {12'd0, 5'd0, 3'd0, 5'd0, 7'b0010011};
    // RAM[7] = 32'hFFFF_FFFF;
    
 end

always@(posedge clk)
begin
    if (enable)
        if (read)
            data_read <= RAM[address[7:0]];
        else
            RAM[address[7:0]] <= data_write;
    else
        data_read <= 0;
end
    
endmodule
