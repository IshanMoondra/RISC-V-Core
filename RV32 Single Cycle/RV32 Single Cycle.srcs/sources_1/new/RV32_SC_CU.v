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


module RV32_SC_CU
    (
        input clk,
        input [31:0] code_bus,
        inout [31:0] data_bus,
        output wire [31:0] data_addr,
        output reg [31:0] Destination,
        output reg [31:0] PC
    );

//RISC V Single Cycle Implementation.
//Will keep Code and Data Memories outside the CU.      

// Register File
reg signed [31:0] RF [31:0];

// Program Counter
//reg [31:0] PC; 

reg data_bus_direction;

// Instruction Buffer.
reg [31:0] IBUF;

// Helper Registers. For What??
//reg [8:0] counter; 

initial
begin
    Destination <= 0;
    //counter <= 0;
    IBUF <= {12'd0, 5'd0, 3'd0, 5'd0, 7'b0010011};      //Replace with the NOP Instruction.
    PC <= 0;
end

always @(posedge clk, negedge rst_n) 
    begin
        if (!rst_n)
            begin
                IBUF <= {12'd0, 5'd0, 3'd0, 5'd0, 7'b0010011};
                //PC <= 0;
            end
        else
            begin
                IBUF <= code_bus;
            end        
    end

always@(posedge clk)
begin
    //IBUF <= code_bus;
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
        7'b0000011: data_bus_direction <= 0;
        7'b0100011: data_bus_direction <= 1;
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

assign data_addr = (data_bus_direction) ? 
    (RF[IBUF[19:15]] + {IBUF[31:25], IBUF[11:7]}) : (RF[IBUF[19:15]] + {{20{IBUF[31]}}, IBUF[31:20]});

assign data_bus = (data_bus_direction) ? (RF[IBUF[24:20]]) : (32'hZZZZ_ZZZZ);

always@(negedge clk)
begin
    Destination <= RF[IBUF[11:7]];
end
    
endmodule
