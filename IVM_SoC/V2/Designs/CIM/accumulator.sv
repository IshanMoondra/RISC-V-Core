`timescale 1ns / 1ps
module accumulator (
    input clk,
    input DataValid,                     // One-cycle signal to trigger accumulation
    input signed [9:0] data,             // Input 10-bit signed data
    input InFp,
    input RSTN,                          // RESET Signal (active low)
    output reg signed [17:0] accum_out,  // Output 18-bit accumulated result
    output reg accum_out_valid
);
    reg signed [17:0] accum_reg;         // Internal accumulator register
    reg signed [9:0] data_buf;
    reg [2:0] index;                     // 3-bit index (0 to 7)

    reg active;       
    reg accum_out_valid_buf0;
    reg accum_out_valid_buf1;
    
    // Initialization block
    // initial begin
    //     data_buf = 0;
    //     accum_out = 0;
    //     accum_reg = 0;
    //     accum_out_valid = 0;
    //     index = 0;
    //     active = 0;                      // Active is initially low (not active)
    // end
    
    //assign the value for the data_buf aim for one clock buffer
    always @(posedge clk ) begin
        if(! RSTN) begin
            data_buf<=0;
        end else begin
            data_buf <= data;
        end
    end

    always @(posedge clk ) begin
        if (!RSTN) begin
            // Reset condition (active low reset)
            accum_out <= 0;
            accum_reg <= 0;
            // data_buf <= 0;
            index <= 0;
            active <= 0;
           // data_buf <= 0;
            accum_out_valid <= 0;
            index <= 0;
            active <= 0;   
            accum_out_valid_buf0 <= 0;
            accum_out_valid_buf1 <= 0;
        end else begin
            // Trigger accumulation when DataValid = 1 and active = 0
            if (DataValid && !active) begin
               // data_buf <= data;
                active <= 1;                 // Set active high to start accumulation
//                accum_reg <= 0;            // Reset the accumulator register
                index <= 0;                  // Reset the index
//                accum_out_valid <= 0;
//                accum_out_valid_buf0 <=0;
//                accum_out_valid_buf1 <=0;
            end

            if (accum_out_valid_buf0) begin
                accum_out <= accum_reg;
                accum_out_valid_buf0 <= 1'b0;
            end
            //accum_out_valid_buf0<=accum_out_valid;
            if (!InFp)begin
                accum_out_valid_buf1<=accum_out_valid_buf0;
                accum_out_valid<=accum_out_valid_buf1;
            
            end else begin
                accum_out_valid<=accum_out_valid_buf0;
            end
            // Accumulate when active is high
            if (active) begin
                // When `InFp == 0` and `index == 7` (after 8 cycles), handle MSB
                if (!InFp && index == 3'b111) begin
                    // Negate the data and shift by index
                    accum_reg <= accum_reg-(data_buf << index);
                    active <= 0; 
                    accum_out_valid_buf0 <= 1'b1;  // Indicate the output is ready
                end else if (InFp && index == 3'b010) begin
                    accum_reg <= accum_reg + (data_buf << index);
                    active <= 0; 
                    accum_out_valid_buf0 <= 1'b1;  // Indicate the output is ready
                end else begin
                    // General accumulation with left shift
                    accum_reg <= accum_reg + (data_buf << index);
                    index <= index + 1;   // Increment the index
                end
            end
        end
    end
endmodule



