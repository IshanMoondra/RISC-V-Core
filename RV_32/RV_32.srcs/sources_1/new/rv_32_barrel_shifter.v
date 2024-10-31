`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2023 12:20:58
// Design Name: 
// Module Name: rv_32_barrel_shifter
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


module rv_32_barrel_shifter(
    input clk,
    input [31:0] data_bus,
    input enable,
    input logical,
    input direction,
    input [4:0] shift_amount,
    input [31:0] data_to_shift,
    output reg [31:0] shift_out
    );
    
always@(negedge clk)
begin
    if (enable)
    begin
        if (direction)
        begin
            if (logical)
            begin
                //Right Shift, Logical.
                case (shift_amount)
                    0: shift_out <= {data_to_shift[31:0]};
                    1: shift_out <= {1'b0, data_to_shift[31:1]};
                    2: shift_out <= {2'b0, data_to_shift[31:2]};
                    3: shift_out <= {3'b0, data_to_shift[31:3]};
                    4: shift_out <= {4'b0, data_to_shift[31:4]};
                    5: shift_out <= {5'b0, data_to_shift[31:5]};
                    6: shift_out <= {6'b0, data_to_shift[31:6]};
                    7: shift_out <= {7'b0, data_to_shift[31:7]};
                    8: shift_out <= {8'b0, data_to_shift[31:8]};
                    9: shift_out <= {9'b0, data_to_shift[31:9]};
                    10: shift_out <= {10'b0, data_to_shift[31:10]};
                    11: shift_out <= {11'b0, data_to_shift[31:11]};
                    12: shift_out <= {12'b0, data_to_shift[31:12]};
                    13: shift_out <= {13'b0, data_to_shift[31:13]};
                    14: shift_out <= {14'b0, data_to_shift[31:14]};
                    15: shift_out <= {15'b0, data_to_shift[31:15]};
                    16: shift_out <= {16'b0, data_to_shift[31:16]};
                    17: shift_out <= {17'b0, data_to_shift[31:17]};
                    18: shift_out <= {18'b0, data_to_shift[31:18]};
                    19: shift_out <= {19'b0, data_to_shift[31:19]};
                    20: shift_out <= {20'b0, data_to_shift[31:20]};
                    21: shift_out <= {21'b0, data_to_shift[31:21]};
                    22: shift_out <= {22'b0, data_to_shift[31:22]};
                    23: shift_out <= {23'b0, data_to_shift[31:23]};
                    24: shift_out <= {24'b0, data_to_shift[31:24]};
                    25: shift_out <= {25'b0, data_to_shift[31:25]};
                    26: shift_out <= {26'b0, data_to_shift[31:26]};
                    27: shift_out <= {27'b0, data_to_shift[31:27]};
                    28: shift_out <= {28'b0, data_to_shift[31:28]};
                    29: shift_out <= {29'b0, data_to_shift[31:29]};
                    30: shift_out <= {30'b0, data_to_shift[31:30]};
                    31: shift_out <= {31'b0, data_to_shift[31]};
                endcase
            end
            else
            begin
                //Right Shift, Arithmetic.
                //Will use of an additonal If Else Block help reduce on chip complexity?
                case (shift_amount)
                    0: shift_out <= {data_to_shift[31:0]};
                    1: shift_out <= {data_to_shift[31], data_to_shift[31:1]};
                    2: shift_out <= {{2{data_to_shift[31]}}, data_to_shift[31:2]};
                    3: shift_out <= {{3{data_to_shift[31]}}, data_to_shift[31:3]};
                    4: shift_out <= {{4{data_to_shift[31]}}, data_to_shift[31:4]};
                    5: shift_out <= {{5{data_to_shift[31]}}, data_to_shift[31:5]};
                    6: shift_out <= {{6{data_to_shift[31]}}, data_to_shift[31:6]};
                    7: shift_out <= {{7{data_to_shift[31]}}, data_to_shift[31:7]};
                    8: shift_out <= {{8{data_to_shift[31]}}, data_to_shift[31:8]};
                    9: shift_out <= {{9{data_to_shift[31]}}, data_to_shift[31:9]};
                    10: shift_out <= {{10{data_to_shift[31]}}, data_to_shift[31:10]};
                    11: shift_out <= {{11{data_to_shift[31]}}, data_to_shift[31:11]};
                    12: shift_out <= {{12{data_to_shift[31]}}, data_to_shift[31:12]};
                    13: shift_out <= {{13{data_to_shift[31]}}, data_to_shift[31:13]};
                    14: shift_out <= {{14{data_to_shift[31]}}, data_to_shift[31:14]};
                    15: shift_out <= {{15{data_to_shift[31]}}, data_to_shift[31:15]};
                    16: shift_out <= {{16{data_to_shift[31]}}, data_to_shift[31:16]};
                    17: shift_out <= {{17{data_to_shift[31]}}, data_to_shift[31:17]};
                    18: shift_out <= {{18{data_to_shift[31]}}, data_to_shift[31:18]};
                    19: shift_out <= {{19{data_to_shift[31]}}, data_to_shift[31:19]};
                    20: shift_out <= {{20{data_to_shift[31]}}, data_to_shift[31:20]};
                    21: shift_out <= {{21{data_to_shift[31]}}, data_to_shift[31:21]};
                    22: shift_out <= {{22{data_to_shift[31]}}, data_to_shift[31:22]};
                    23: shift_out <= {{23{data_to_shift[31]}}, data_to_shift[31:23]};
                    24: shift_out <= {{24{data_to_shift[31]}}, data_to_shift[31:24]};
                    25: shift_out <= {{25{data_to_shift[31]}}, data_to_shift[31:25]};
                    26: shift_out <= {{26{data_to_shift[31]}}, data_to_shift[31:26]};
                    27: shift_out <= {{27{data_to_shift[31]}}, data_to_shift[31:27]};
                    28: shift_out <= {{28{data_to_shift[31]}}, data_to_shift[31:28]};
                    29: shift_out <= {{29{data_to_shift[31]}}, data_to_shift[31:29]};
                    30: shift_out <= {{30{data_to_shift[31]}}, data_to_shift[31:30]};
                    31: shift_out <= {{31{data_to_shift[31]}}, data_to_shift[31]};
                endcase
            end
        end
        else
        begin
            //Left Shift, Logical.
            case (shift_amount)
            0: shift_out <= {data_to_shift[31:0]};
            1: shift_out <= {data_to_shift[30:0], 1'b0};
            2: shift_out <= {data_to_shift[29:0], 2'b0};
            3: shift_out <= {data_to_shift[28:0], 3'b0};
            4: shift_out <= {data_to_shift[27:0], 4'b0};
            5: shift_out <= {data_to_shift[26:0], 5'b0};
            6: shift_out <= {data_to_shift[25:0], 6'b0};
            7: shift_out <= {data_to_shift[24:0], 7'b0};
            8: shift_out <= {data_to_shift[23:0], 8'b0};
            9: shift_out <= {data_to_shift[22:0], 9'b0};
            10: shift_out <= {data_to_shift[21:0], 10'b0};
            11: shift_out <= {data_to_shift[20:0], 11'b0};
            12: shift_out <= {data_to_shift[19:0], 12'b0};
            13: shift_out <= {data_to_shift[18:0], 13'b0};
            14: shift_out <= {data_to_shift[17:0], 14'b0};
            15: shift_out <= {data_to_shift[16:0], 15'b0};
            16: shift_out <= {data_to_shift[15:0], 16'b0};
            17: shift_out <= {data_to_shift[14:0], 17'b0};
            18: shift_out <= {data_to_shift[13:0], 18'b0};
            19: shift_out <= {data_to_shift[12:0], 19'b0};
            20: shift_out <= {data_to_shift[11:0], 20'b0};
            21: shift_out <= {data_to_shift[10:0], 21'b0};
            22: shift_out <= {data_to_shift[9:0], 22'b0};
            23: shift_out <= {data_to_shift[8:0], 23'b0};
            24: shift_out <= {data_to_shift[7:0], 24'b0};
            25: shift_out <= {data_to_shift[6:0], 25'b0};
            26: shift_out <= {data_to_shift[5:0], 26'b0};
            27: shift_out <= {data_to_shift[4:0], 27'b0};
            28: shift_out <= {data_to_shift[3:0], 28'b0};
            29: shift_out <= {data_to_shift[2:0], 29'b0};
            30: shift_out <= {data_to_shift[1:0], 30'b0};
            31: shift_out <= {data_to_shift[0], 31'b0};
            endcase
        end
    end
end    
    
endmodule
