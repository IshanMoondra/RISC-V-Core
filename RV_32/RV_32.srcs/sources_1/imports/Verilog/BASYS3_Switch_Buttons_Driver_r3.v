module BASYS3_Switch_Buttons_Driver_r3
	(
    input clk,
    input [15:0] sw,
    input btnC,
    input btnD,
    input btnL,
    input btnR,
    input btnU,
    output reg [15:0] switch,
    output reg [4:0] buttons
	);

reg [16:0] counter = 0;
reg [1:0] state = 0;

always@(posedge clk)
begin
   case(state)
   	0:
   	begin
   	   	if ((sw | 16'hFFFF) | ({btnC ,btnU, btnR, btnD, btnL} | 5'h1F))
   	   		state <= 1;
   	   	else
   	   		state <= 0;
   	end
   	
   	1:
   	begin
   	    if (counter == 24999)
   	    begin	
   	    	counter <= 0;
   	    	state <= 2;
   	    end	
   	    else
   	    begin
   	    	counter <= counter + 1;
   	    	state <= 1;
   	    end	
   	end
   	
   	2:
   	begin
		buttons <= {btnC ,btnU, btnR, btnD, btnL};
		switch <= sw;
		state <= 0;   	   
   	end   
   
   endcase
end

endmodule
