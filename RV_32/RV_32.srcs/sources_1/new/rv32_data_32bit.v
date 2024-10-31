`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2023 15:32:17
// Design Name: 
// Module Name: rv32_data_32bit
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


module rv32_data_32bit(
    input clk,
    input enable,
    input [31:0] data_addr,
    input [31:0] data_in,
    output reg [31:0] data_out,
    input read
    );
    
reg [31:0] DATA [255:0];
reg [8:0] i;
reg EN;
reg RD;

initial
begin
    data_out <= 32'bz;
    for ( i = 1; i < 257; i = i + 1)
        DATA[i] <= i*i;
end

//Output from the Memory.
always@(negedge clk)
begin
    if (EN)
    begin
        if (RD == 1'b1)
        begin
            data_out <= DATA[data_addr];
        end
    end
    else
        data_out <= 32'bz;
end    

//Input to the Memory.
always@(posedge clk)
begin

    EN <= enable;
    RD <= read;    
    if (read == 1'b0)
    begin
        DATA[data_addr] <= data_in;
    end    
end        
endmodule
