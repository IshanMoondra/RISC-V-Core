`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:09:53 PM
// Design Name: 
// Module Name: FindMax_tree
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


module FindMax_tree(
    input wire clk,
    input wire DataValid,              // Input signal that starts the process
    input RSTN,                        // Reset Signal
    input wire [4:0] exp [35:0],       // Array of 36 5-bit numbers named "exp"
    output reg [4:0] final_max,          // The largest number, named "exp_max"
    output reg done,                   // Done flag to indicate completion
    output wire [4:0] difference [35:0] // Array to store the difference between each item and max
);
    reg [4:0] stage1 [17:0];           // Intermediate results after stage 1 (18 comparisons)
    reg [4:0] stage2 [8:0];            // Intermediate results after stage 2 (9 comparisons)
    reg [4:0] stage3 [3:0];            // Intermediate results after stage 3 (4 comparisons)
    reg [4:0] stage4 [1:0];            // Intermediate results after stage 4 (2 comparisons)
    reg [4:0] stage5 ;                 // Intermediate result after stage 5 (1 comparison)
    //reg [4:0] final_max;               // The final maximum value
    reg [4:0] buffer [2:0];            // Buffer for delayed values
    reg [2:0] stage;                   // Keeps track of the current stage (0 to 5)
    reg active;                        // Indicates whether the system is active (processing)
    // reg [5:0] i;                       // Counter for iterating through the difference array
    integer i;
    
    // initial begin
    //     done = 0;
    //     active = 0;
    //     i = 0;
    // end
    
    always @(posedge clk) begin
         if (!RSTN) begin
            active <= 0;
            done <= 0;
            for (i = 0; i < 4; i = i + 1) begin
                stage1[i] <= 0;  
                stage2[i] <= 0;  
                stage3[i] <= 0;  
                stage4[i] <= 0;  
                stage5[i] <= 0;
                final_max[i] <= 0;
                buffer[i] <= 0;
                // difference[i] <= 0;
            end
         end else begin
            if (DataValid && !active) begin
                // Start the process if DataValid is high and the system is not already active
                active <= 1;                // Activate the process
                done <= 0;
                stage <= 0;                 // Initialize the stage counter
            end else if (active && !done) begin
                // Only process when active and not done
                case (stage)
                    0: begin
                        // Stage 1: Compare the exp numbers in pairs 36-18
                        for (int i = 0; i < 18; i = i + 1) begin
                            stage1[i] <= (exp[2*i] > exp[2*i+1]) ? exp[2*i] : exp[2*i+1];
                        end
                        stage <= 1;
                    end
                    1: begin
                        // Stage 2: Compare results from stage 1
                        for (int i = 0; i < 9; i = i + 1) begin
                            stage2[i] <= (stage1[2*i] > stage1[2*i+1]) ? stage1[2*i] : stage1[2*i+1];
                        end
                        stage <= 2;
                    end
                    2: begin
                        // Stage 3: Compare results from stage 2
                        for (int i = 0; i < 4; i = i + 1) begin
                            stage3[i] <= (stage2[2*i] > stage2[2*i+1]) ? stage2[2*i] : stage2[2*i+1];
                        end
                        buffer[0] <= stage2[8];
                        stage <= 3;
                    end
                    3: begin
                        // Stage 4: Compare results from stage 3
                        for (int i = 0; i < 2; i = i + 1) begin
                            stage4[i] <= (stage3[2*i] > stage3[2*i+1]) ? stage3[2*i] : stage3[2*i+1];
                        end
                        buffer[1] <= buffer[0];
                        stage <= 4;
                    end
                    4: begin
                        // Stage 5: Compare results from stage 4
                        stage5 <= (stage4[0] > stage4[1]) ? stage4[0] : stage4[1];
                        buffer[2] <= buffer[1];
                        stage <= 5;
                    end
                    5: begin
                        // Final stage: Compare the final two values
                        final_max <= (stage5 > buffer[2]) ? stage5 : buffer[2];
                        done <= 1;  // Set done flag when the final comparison is complete
                        active <=0;
                    end
                endcase
            end else begin
                 done <= 0;
            end
    
            // Reset active state when done and waiting for the next DataValid signal
            // if (done) begin
            //     active <= 0;   // Reset active state to wait for next valid signal
            // end
         end
    end

    // Once the max is found, calculate the difference for each item
    //integer j;  // Declare loop variable properly

//    always @(posedge clk) begin
//        if (!RSTN) begin
//            exp_max <= 0;
////            for (j = 0; j < 36; j = j + 1) begin
////                difference[j] <= 0;  // Reset difference
////            end
//        end else if(done)begin
//            exp_max <= final_max;  
////            for (j = 0; j < 36; j = j + 1) begin
////                difference[j] <= final_max - exp[j];  // Calculate the difference
////            end
//        end
//        // Remove unnecessary 'else' block
//    end

genvar k;
generate
    for (k = 0; k < 36; k = k + 1) begin : DIFF_ASSIGN
        assign difference[k] = final_max - exp[k];
    end
endgenerate


endmodule


