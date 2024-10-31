`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2023 23:10:33
// Design Name: 
// Module Name: rv32_pc
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


module rv32_pc(
    input clk,
    input enable,
    input [31:0] data_bus,
    input [31:0] reg_s1,
    input [31:0] reg_s2,
    output reg [31:0] return_d1,
    output reg [31:0] pc,
    output reg flush,
    input normal_op,
    input [2:0] pc_opsel,
    input busy
    );

reg [31:0]buffer;

initial 
begin
    buffer <= 0;
    pc <= 0;
    flush <= 0;
    return_d1 <= 32'bz;
end

always@(posedge clk)
begin
    pc <= buffer;
end

always@(negedge clk)
begin
    if (enable)
    begin
        if (busy)
            buffer <= buffer;
        else
        begin            
            casex ({normal_op, pc_opsel})
            4'b1xxx: begin
                        buffer <= buffer + 1;
                     end
            
            0: begin            //JAL
                    return_d1 <= buffer + 1;
                    buffer <= buffer + {{11{data_bus[31]}}, data_bus[31], data_bus[19:12], data_bus[20], data_bus[30:21], 1'b0};
                    //flush <= 1;
               end
            1: begin            //JALR
                    return_d1 <= buffer + 1;
                    buffer <= (reg_s1 + {{20{data_bus[31]}}, data_bus[31:20]}) & {{31{1'b1}}, 1'b0};
                    //flush <= 1;
               end 
            2: begin            //BEQ
                    if (reg_s1 == reg_s2)
                    begin
                        //buffer <= (buffer + {{20{data_bus[31]}}, data_bus[31], data_bus[7], data_bus[30:25], data_bus[11:8], 1'b0}) & {{31{1'b1}}, 1'b0};
                        buffer <= (buffer + {{19{data_bus[31]}}, data_bus[31], data_bus[7], data_bus[30:25], data_bus[11:8], 1'b0});
                        //flush <= 1;
                    end
                    else
                    begin
                        buffer <= buffer + 1;
                        flush <= 0;
                    end
               end
            3: begin            //BNE
                    if (reg_s1 != reg_s2)
                    begin
                        //buffer <= (buffer + {{20{data_bus[31]}}, data_bus[31], data_bus[7], data_bus[30:25], data_bus[11:8], 1'b0}) & {{31{1'b1}}, 1'b0};
                        buffer <= (buffer + {{19{data_bus[31]}}, data_bus[31], data_bus[7], data_bus[30:25], data_bus[11:8], 1'b0});
                        //flush <= 1;
                    end
                    else
                    begin
                        buffer <= buffer + 1;
                        flush <= 0;
                    end
               end
            4: begin            //BLT
                    if ((~reg_s1[31] & ~reg_s2[31]) | (reg_s1[31] & reg_s2[31]))
                    begin
                        if (reg_s1 < reg_s2)
                        begin
                            //buffer <= (buffer + {{20{data_bus[31]}}, data_bus[31], data_bus[7], data_bus[30:25], data_bus[11:8], 1'b0}) & {{31{1'b1}}, 1'b0};
                            buffer <= (buffer + {{19{data_bus[31]}}, data_bus[31], data_bus[7], data_bus[30:25], data_bus[11:8], 1'b0});
                            //flush <= 1;
                        end
                        else
                        begin
                            buffer <= buffer + 1;
                            flush <= 0;
                        end
                    end
                                                
                    if (~reg_s1[31] & reg_s2[31])
                    begin
                        buffer <= buffer + 1;
                        flush <= 0;
                    end                            
                    
                    if (reg_s1[31] & ~reg_s2[31])
                    begin
                        //buffer <= (buffer + {{20{data_bus[31]}}, data_bus[31], data_bus[7], data_bus[30:25], data_bus[11:8], 1'b0}) & {{31{1'b1}}, 1'b0};
                        buffer <= (buffer + {{19{data_bus[31]}}, data_bus[31], data_bus[7], data_bus[30:25], data_bus[11:8], 1'b0});
                        //flush <= 1;
                    end                                                
               end
            5: begin            //BGT
                    if ((~reg_s1[31] & ~reg_s2[31]) | (reg_s1[31] & reg_s2[31]))
                    begin
                        if (reg_s1 >= reg_s2)
                        begin
                            //buffer <= (buffer + {{20{data_bus[31]}}, data_bus[31], data_bus[7], data_bus[30:25], data_bus[11:8], 1'b0}) & {{31{1'b1}}, 1'b0};
                            buffer <= (buffer + {{19{data_bus[31]}}, data_bus[31], data_bus[7], data_bus[30:25], data_bus[11:8], 1'b0});
                            //flush <= 1;
                        end
                        else
                        begin
                            buffer <= buffer + 1;
                            flush <= 0;
                        end
                    end
                                                
                    if (~reg_s1[31] & reg_s2[31])
                    begin
                        //buffer <= (buffer + {{20{data_bus[31]}}, data_bus[31], data_bus[7], data_bus[30:25], data_bus[11:8], 1'b0}) & {{31{1'b1}}, 1'b0};
                        buffer <= (buffer + {{19{data_bus[31]}}, data_bus[31], data_bus[7], data_bus[30:25], data_bus[11:8], 1'b0});                                                           
                        //flush <= 1;
                    end                            
                    
                    if (reg_s1[31] & ~reg_s2[31])
                    begin
                        buffer <= buffer + 1;
                        flush <= 0;
                    end                                              
               end
            6: begin            //BLTU
                    if (reg_s1 < reg_s2)
                    begin
                        //buffer <= (buffer + {{20{data_bus[31]}}, data_bus[31], data_bus[7], data_bus[30:25], data_bus[11:8], 1'b0}) & {{31{1'b1}}, 1'b0};
                        buffer <= (buffer + {{19{data_bus[31]}}, data_bus[31], data_bus[7], data_bus[30:25], data_bus[11:8], 1'b0});
                        //flush <= 1;
                    end
                    else
                    begin
                        buffer <= buffer + 1;
                        flush <= 0;
                    end
               end
            7: begin            //BGTU
                    if (reg_s1 >= reg_s2)
                    begin
                        //buffer <= (buffer + {{20{data_bus[31]}}, data_bus[31], data_bus[7], data_bus[30:25], data_bus[11:8], 1'b0}) & {{31{1'b1}}, 1'b0};
                        buffer <= (buffer + {{19{data_bus[31]}}, data_bus[31], data_bus[7], data_bus[30:25], data_bus[11:8], 1'b0});
                        //flush <= 1;
                    end
                    else
                    begin
                        buffer <= buffer + 1;
                        flush <= 0;
                    end
               end
            endcase
       end     
    end
end

endmodule
