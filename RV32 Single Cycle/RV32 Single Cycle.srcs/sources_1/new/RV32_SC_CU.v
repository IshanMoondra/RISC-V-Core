`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2024 18:27:02
// Design Name: 
// Module Name: RV32_SC_CU
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


module RV32_SC_CU(
    input clk,
    output reg [15:0] led,
    output reg [7:0] JA,
    output reg [7:0] JB,
    output reg [31:0] PC
    );

//RISC V Single Cycle Implementation.
//Will keep Code and Data Memories inside the CU itself.      

// Register File
reg signed [31:0] RF [31:0];

// Program Counter
//reg [31:0] PC;

// Code Memory
reg [31:0] CODE [255:0]; 

// Data Memory
reg [31:0] DATA [255:0];

// Instruction Buffer.
reg [31:0] IBUF;

// Helper Registers.
reg [8:0] counter; 

initial
begin
    led <= 0;
    JA <= 0;
    JB <= 0;
    //counter <= 0;
    IBUF <= {12'd0, 5'd0, 3'd0, 5'd0, 7'b0010011};      //Replace with the NOP Instruction.
    PC <= 0;
    for (counter = 0; counter < 32; counter = counter + 1)
    begin
        RF [counter] <= 0;
    end
    for (counter = 0; counter < 256; counter = counter + 1)
    begin
        CODE [counter] <= {12'd0, 5'd0, 3'd0, 5'd0, 7'b0010011};    //Replace with the NOP instruction.
        DATA [counter] <= counter; 
    end
    
    CODE[1] <= {12'd4, 5'd0, 3'd0, 5'd1, 7'b0010011};
    CODE[2] <= {12'd4, 5'd1, 3'd0, 5'd2, 7'b0010011};
    CODE[3] <= {12'd8, 5'd1, 3'd0, 5'd3, 7'b0010011}; 
    
end

always@(posedge clk)
begin
    IBUF <= CODE[PC];
    case (IBUF[6:0])
        7'b0110011:
            begin
                case (IBUF[14:12])
                    3'b000: 
                        begin
                            case (IBUF[30])
                            0: RF[IBUF[11:7]] <= RF[IBUF[19:15]] + RF[IBUF[24:20]];
                            1: RF[IBUF[11:7]] <= RF[IBUF[19:15]] - RF[IBUF[24:20]];
                            endcase
                        end
                    3'b111: RF[IBUF[11:7]] <= RF[IBUF[19:15]] & RF[IBUF[24:20]];
                    3'b110: RF[IBUF[11:7]] <= RF[IBUF[19:15]] | RF[IBUF[24:20]];
                    3'b100: RF[IBUF[11:7]] <= RF[IBUF[19:15]] ^ RF[IBUF[24:20]];
                    3'b001: RF[IBUF[11:7]] <= RF[IBUF[19:15]] << RF[IBUF[24:20]];
                    3'b101: 
                        begin
                            case (IBUF[30])
                            0: RF[IBUF[11:7]] <= RF[IBUF[19:15]] >> RF[IBUF[24:20]];
                            1: RF[IBUF[11:7]] <= RF[IBUF[19:15]] >>> RF[IBUF[24:20]];
                            endcase
                        end
                    3'b010: 
                        begin
                            case (IBUF[30])
                            0: 
                                begin
                                    if (RF[IBUF[19:15]] < RF[IBUF[24:20]])
                                        RF[IBUF[11:7]] <= 1;                                    
                                    else
                                        RF[IBUF[11:7]] <= 0;
                                end
                            1: 
                                begin
                                    if ((RF[IBUF[19:15]][31] & RF[IBUF[24:20]][31]) | (~RF[IBUF[19:15]][31] & ~RF[IBUF[24:20]][31]))
                                    begin
                                        if (RF[IBUF[19:15]] < RF[IBUF[24:20]])
                                            RF[IBUF[11:7]] <= 1;                                    
                                        else
                                            RF[IBUF[11:7]] <= 0;
                                    end
                                    if ((RF[IBUF[19:15]][31] & ~RF[IBUF[24:20]][31]))
                                        RF[IBUF[11:7]] <= 1;
                                    if ((~RF[IBUF[19:15]][31] & RF[IBUF[24:20]][31]))
                                        RF[IBUF[11:7]] <= 0;    
                                end
                            endcase
                        end                    
                endcase    
            end
        7'b0010011:
            begin
                case (IBUF[14:12])
                    3'b000: RF[IBUF[11:7]] <= RF[IBUF[19:15]] + {{20{IBUF[31]}}, IBUF[31:20]};
                    3'b111: RF[IBUF[11:7]] <= RF[IBUF[19:15]] & {{20{IBUF[31]}}, IBUF[31:20]};
                    3'b110: RF[IBUF[11:7]] <= RF[IBUF[19:15]] | {{20{IBUF[31]}}, IBUF[31:20]};
                    3'b100: RF[IBUF[11:7]] <= RF[IBUF[19:15]] ^ {{20{IBUF[31]}}, IBUF[31:20]};
                    3'b001: RF[IBUF[11:7]] <= RF[IBUF[19:15]] << IBUF[24:20];
                    3'b101: 
                        begin
                            case (IBUF[30])
                            0: RF[IBUF[11:7]] <= RF[IBUF[19:15]] >> RF[IBUF[24:20]];
                            1: RF[IBUF[11:7]] <= RF[IBUF[19:15]] >>> RF[IBUF[24:20]];
                            endcase
                        end
                    3'b010: 
                        begin
                            if (RF[IBUF[19:15]] < {{20{IBUF[31]}}, IBUF[31:20]})
                                        RF[IBUF[11:7]] <= 1;                                    
                            else
                                RF[IBUF[11:7]] <= 0;
                        end
                    3'b011:
                        begin
                            if ((RF[IBUF[19:15]][31] & IBUF[31]) | (~RF[IBUF[19:15]][31] & ~IBUF[31]))
                            begin
                                if (RF[IBUF[19:15]] < {{20{IBUF[31]}}, IBUF[31:20]})
                                    RF[IBUF[11:7]] <= 1;                                    
                                else
                                    RF[IBUF[11:7]] <= 0;
                            end
                            if ((RF[IBUF[19:15]][31] & ~IBUF[31]))
                                RF[IBUF[11:7]] <= 1;
                            if ((~RF[IBUF[19:15]][31] & IBUF[31]))
                                RF[IBUF[11:7]] <= 0;
                        end
                endcase
            end
        7'b0000011: RF[IBUF[11:7]] <= DATA[RF[IBUF[19:15]] + {{20{IBUF[31]}}, IBUF[31:20]}];
        7'b0100011: DATA[RF[IBUF[19:15]] + {IBUF[31:25], IBUF[11:7]}] <= RF[IBUF[24:20]];
        7'b1100011: 
            begin
                case (IBUF[14:12])
                    3'b000:
                        begin
                            if (RF[IBUF[19:15]] == RF[IBUF[24:20]])
                                PC <= PC + {19'b0, IBUF[31], IBUF[7], IBUF[30:25], IBUF[11:8], 1'b0};
                            else
                                PC <= PC + 1;                         
                        end
                    3'b101:
                        begin
                            if (RF[IBUF[19:15]] >= RF[IBUF[24:20]])
                                PC <= PC + {19'b0, IBUF[31], IBUF[7], IBUF[30:25], IBUF[11:8], 1'b0};
                            else
                                PC <= PC + 1;                         
                        end    
                    3'b111:
                        begin
                            if ((RF[IBUF[19:15]][31] & RF[IBUF[24:20]][31]) | (~RF[IBUF[19:15]][31] & ~RF[IBUF[24:20]][31]))
                            begin
                                if (RF[IBUF[19:15]] >= RF[IBUF[24:20]])
                                    PC <= PC + {19'b0, IBUF[31], IBUF[7], IBUF[30:25], IBUF[11:8], 1'b0};                                    
                                else
                                    PC <= PC + 1;
                            end
                            if ((RF[IBUF[19:15]][31] & ~RF[IBUF[24:20]][31]))
                                PC <= PC + {19'b0, IBUF[31], IBUF[7], IBUF[30:25], IBUF[11:8], 1'b0};
                            if ((~RF[IBUF[19:15]][31] & RF[IBUF[24:20]][31]))
                                PC <= PC + 1;                         
                        end    
                    3'b100:
                        begin
                            if (RF[IBUF[19:15]] < RF[IBUF[24:20]])
                                PC <= PC + {19'b0, IBUF[31], IBUF[7], IBUF[30:25], IBUF[11:8], 1'b0};
                            else
                                PC <= PC + 1;                         
                        end    
                     3'b110:
                        begin
                            if ((RF[IBUF[19:15]][31] & RF[IBUF[24:20]][31]) | (~RF[IBUF[19:15]][31] & ~RF[IBUF[24:20]][31]))
                            begin
                                if (RF[IBUF[19:15]] < RF[IBUF[24:20]])
                                    PC <= PC + {19'b0, IBUF[31], IBUF[7], IBUF[30:25], IBUF[11:8], 1'b0};                                    
                                else
                                    PC <= PC + 1;
                            end
                            if ((RF[IBUF[19:15]][31] & ~RF[IBUF[24:20]][31]))
                                PC <= PC + 1;
                            if ((~RF[IBUF[19:15]][31] & RF[IBUF[24:20]][31]))
                                PC <= PC + {19'b0, IBUF[31], IBUF[7], IBUF[30:25], IBUF[11:8], 1'b0};                         
                        end
                     3'b001:
                        begin
                            if (RF[IBUF[19:15]] != RF[IBUF[24:20]])
                                PC <= PC + {19'b0, IBUF[31], IBUF[7], IBUF[30:25], IBUF[11:8], 1'b0};
                            else
                                PC <= PC + 1;                         
                        end
                       
                endcase
            end        
        7'b1101111:
            begin
                RF[IBUF[11:7]] <= PC + 1;
                PC <= PC + {{11{1'b0}}, IBUF[31], IBUF[19:12], IBUF[20], IBUF[30:21], 1'b0};
            end
        7'b1100111:
            begin
                case (IBUF[14:12])
                    3'b000:
                    begin
                        RF[IBUF[11:7]] <= PC + 1;
                        PC <= RF[IBUF[19:15]] + {{20{1'b0}}, IBUF[31:20]};
                    end
                endcase    
            end
        7'b0010111: RF[IBUF[11:7]] <= PC + {IBUF[31:12], 12'b0};
        7'b0110111: RF[IBUF[11:7]] <= {IBUF[31:12], 12'b0};
        7'b1110011: 
            begin
                case (IBUF[14:12])
                    3'b000: 
                    begin
                        if (IBUF[20] == 0)
                            PC <= 0;        //Replace with Address of Debugging Routine.
                        else
                            PC <= 1111;    //Replace with Address of OS Routine.
                    end    
                endcase 
            end                      
    endcase
    if (IBUF[6:0] != 7'b1100011 | IBUF[6:0] != 7'b1101111 | IBUF[6:0] != 7'b1100111)
        PC <= PC + 1;
end

always@(negedge clk)
begin
    {JB, JA, led} = RF[IBUF[11:7]];
end
    
endmodule
