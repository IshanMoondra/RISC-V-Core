module BASYS3_7Seg_Driver(
    input clk,
    input [15:0] display,
    output reg [6:0] seg,
    output reg dp,
    output reg [3:0] an
    );
    
reg ENABLE;

reg [15:0] CLK_STABLE;
reg [25:0] seg_clock;
reg [6:0] seg_codes [15:0];
reg [3:0] seg_codes_index;
reg [1:0] seg_index;   

initial
    begin
        CLK_STABLE <= 0;
        
        seg_codes_index <= 0;
        seg_clock <= 0;
        dp <= 1;
        an <= 0;
        seg_index <= 0;
        seg <= 0;
        
        seg_codes[0] <= 7'h40;
        seg_codes[1] <= 7'h79;
        seg_codes[2] <= 7'h24; 
        seg_codes[3] <= 7'h30;
        seg_codes[4] <= 7'h19;
        seg_codes[5] <= 7'h12;
        seg_codes[6] <= 7'h02;
        seg_codes[7] <= 7'h78;
        seg_codes[8] <= 7'h00;
        seg_codes[9] <= 7'h10;
        seg_codes[10] <= 7'h08;
        seg_codes[11] <= 7'h03;
        seg_codes[12] <= 7'h46;
        seg_codes[13] <= 7'h21;
        seg_codes[14] <= 7'h06;
        seg_codes[15] <= 7'h0E;

    end

always@(posedge clk)
begin
    if (CLK_STABLE == 65535)
        begin
            ENABLE <= 1;
            dp <= 0;
        end
    else
        begin
            CLK_STABLE <= CLK_STABLE + 1;
            dp <= 1;
        end
end
    
always@(posedge clk)
    begin
         seg_clock <= seg_clock + 1;           
    end
    
always@(posedge seg_clock[15])
    begin
        case(seg_index)
        0: //Anode 0 controls 2nd Digit from the Right. 
            begin
                an <= 4'b0111;
                seg_codes_index <= display[11:8];
            end
        1: //Anode 1 controls 3rd Digit from the Right.
            begin
                an <= 4'b1011;
                seg_codes_index <= display[7:4];
            end
        2: //Anode 2 controls 4th Digit from the Right. 
            begin
                an <= 4'b1101;
                seg_codes_index <= display[3:0];
            end
        3: //Anode 3 controls 1st Digit from the Right. 
            begin
                an <= 4'b1110;
                seg_codes_index <= display[15:12];
            end
        endcase
        seg_index <= seg_index + 1;
        seg <= seg_codes[seg_codes_index];
    end      

endmodule