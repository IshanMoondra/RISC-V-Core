`timescale 1ns / 1ps
module CIM_Compute(
    input clk,                               // Clock signal for all Timing modules
    input DataValid,                         // DataValid signal for each Timing module (packed array for 72 bits)
    input RSTN,                              // RESET Signal
    input InFp,                              // Indicates the mode of the CIM, 0 for Int, 1 for fp
    input [7:0] products_buff0 [0:35],       // 72 elements, each 8-bit wide output product
    input [3:0] products_sign [0:35],        // This matches the input W_sign's dimensions
    input [0:35] SDO,
    input [3:0]cnt,
    input [4:0] exp_max_buf,          
    input [4:0] Diff [0:35],
    output wire signed[21:0] FinalOut_INT,
    output wire [7:0]FinalOut_FP0,
    output wire [7:0]FinalOut_FP1,
    output wire [7:0]FinalOut_FP2,
    output wire [7:0]FinalOut_FP3,
    output reg CIM_done
    );
    
    reg [7:0] products_buff1[0:35];
    reg [7:0] products_buff2[0:35];
    reg [7:0] products_buff3[0:35];
    reg [7:0] products_buff4[0:35];    
    reg [7:0] products [0:35];           
    reg [0:35]SDO_buf0;
    reg [0:35]SDO_buf1;
    reg [0:35]SDO_buf2;
    reg [0:35]SDO_buf3;
    reg [0:35]SDO_buf4;
    reg [0:35]SDO_buf5;
    
    //Split products for 4 parts 
    wire [2:0] CIM_out0 [0:35];        // Array of 36 2-bit numbers (MSB part of input)
    wire [2:0] CIM_out1 [0:35];        // Array of 36 2-bit numbers (next 2 bits)
    wire [2:0] CIM_out2 [0:35];        // Array of 36 2-bit numbers (next 2 bits)
    wire [2:0] CIM_out3 [0:35];        // Array of 36 2-bit numbers (LSB part of input)    
//    reg [3:0] CIM_out0_buf [0:35];     //test signal
    //Adder tree intput combination of the products sign and result
    reg signed [4:0] addIn0 [0:35];
    reg signed [4:0] addIn1 [0:35];
    reg signed [4:0] addIn2 [0:35];
    reg signed [4:0] addIn3 [0:35];

    //SUM result
    reg signed [9:0] sum0; // reg --> wire --> reg
    reg signed [9:0] sum1;
    reg signed [9:0] sum2;
    reg signed [9:0] sum3;
    
    //accumulator flag signa
    reg accumulator_DataValid;
    reg accum_out_valid0, accum_out_valid1, accum_out_valid2, accum_out_valid3;
    
    wire signed[17:0]accum_out0;
    wire signed[17:0]accum_out1;
    wire signed[17:0]accum_out2;
    wire signed[17:0]accum_out3;
    
    //Shift in fixedpoint case
    reg signed[21:0] accum_shifted3;
    reg signed[21:0] accum_shifted2;
    reg signed[21:0] accum_shifted1;
    reg signed[21:0] accum_shifted0;
    
    //Carry processing 
    wire Final_sign0;
    reg [4:0] Final_exp0;
    reg [2:0] Final_mant0;
    wire carry_done0;
    
    wire Final_sign1;
    reg [4:0] Final_exp1;
    reg [2:0] Final_mant1;
    wire carry_done1;
    
    wire Final_sign2;
    reg [4:0] Final_exp2;
    reg [2:0] Final_mant2;
    wire carry_done2;
    
    wire Final_sign3;
    reg [4:0] Final_exp3;
    reg [2:0] Final_mant3;
    wire carry_done3;
        // Shift register implementation for 5-clock cycle delay
    always @(posedge clk ) begin
        if (!RSTN) begin
            for (int i = 0; i < 36; i = i + 1) begin
                products_buff1[i] <= 0;
                products_buff2[i] <= 0;
                products_buff3[i] <= 0;
                products_buff4[i] <= 0;
                products[i] <= 0;
            end         
                SDO_buf0<= SDO;
                SDO_buf1<= SDO_buf0;
                SDO_buf2<= SDO_buf1;
                SDO_buf3<= SDO_buf2;
                SDO_buf4<= SDO_buf3;
                SDO_buf5<= SDO_buf4;
        end else begin
            if (InFp) begin
                // Shift data through the buffer (from products_buff[0] to products_buff[4])
                products_buff1 <= products_buff0;
                products_buff2 <= products_buff1;
                products_buff3 <= products_buff2;
                products_buff4 <= products_buff3;
                products <= products_buff4;
                
                SDO_buf0<= SDO;
                SDO_buf1<= SDO_buf0;
                SDO_buf2<= SDO_buf1;
                SDO_buf3<= SDO_buf2;
                SDO_buf4<= SDO_buf3;
                SDO_buf5<= SDO_buf4;
            end else begin
                products <= products_buff0;
            end
        end     
    end

    Split_decoder split(
        .input_data(products),
        .out0(CIM_out0),             //for fp, I0*W0*W1
        .out1(CIM_out1),             //for fp, I0*W2*W3
        .out2(CIM_out2),             //for fp, I0*W4*W5
        .out3(CIM_out3)              //for fp, I0*W6*W7
    );
    
    //Select the Input to the adder tree
    always@(posedge clk)begin
        if (!RSTN)begin
            for (int i = 0; i < 36; i = i + 1) begin
                addIn0[i] <= 0;
                addIn1[i] <= 0;
                addIn2[i] <= 0;
                addIn3[i] <= 0;
            end
        end else begin
            if (InFp) begin
                for (int i = 0; i < 36; i = i + 1) begin
                    // test signal
    //                SDO_buf5<=SDO_buf4;
    //                CIM_out0_buf[i] <= {SDO_buf4[i],CIM_out0[i]}>>Diff[i];
                    if (({SDO_buf4[i], CIM_out0[i]} >> Diff[i]) == 0) begin
                        addIn0[i] <= 0;
                    end else begin
                        if (products_sign[i][0] == 1'b0) begin
                            // Positive case: shift directly
                            addIn0[i] <= {products_sign[i][0], {SDO_buf4[i], CIM_out0[i]} >> Diff[i]};
                        end else if (products_sign[i][0] == 1'b1) begin
                            // Negative case: shift magnitude, then apply two's complement to keep sign
                            addIn0[i] <= {1'b1, -({SDO_buf4[i], CIM_out0[i]} >> Diff[i])};
                        end
                    end
                    
                    // Process addIn1[i]
                    if (({SDO_buf4[i], CIM_out1[i]} >> Diff[i])==0) begin
                        addIn1[i] <= 0;
                    end else begin
                        if (products_sign[i][1] == 1'b0) begin
                            // Positive case
                            addIn1[i] <= {products_sign[i][1], {SDO_buf4[i], CIM_out1[i]} >> Diff[i]};
                        end else if (products_sign[i][1] == 1'b1) begin
                            // Negative case
                            addIn1[i] <= {1'b1, -({SDO_buf4[i], CIM_out1[i]} >> Diff[i])};
                        end
                    end
            
                    // Process addIn2[i]
                    if (({SDO_buf4[i], CIM_out2[i]} >> Diff[i])==0) begin
                        addIn2[i] <= 0;
                    end else begin
                        if (products_sign[i][2] == 1'b0) begin
                            // Positive case
                            addIn2[i] <= {products_sign[i][2], {SDO_buf4[i], CIM_out2[i]} >> Diff[i]};
                        end else if (products_sign[i][2] == 1'b1) begin
                            // Negative case
                            addIn2[i] <= {1'b1, -({SDO_buf4[i], CIM_out2[i]} >> Diff[i])};
                        end
                    end
                    
                    // Process addIn3[i]
                    if (({SDO_buf4[i], CIM_out3[i]} >> Diff[i])==0) begin
                        addIn3[i] <= 0;
                    end else begin
                        if (products_sign[i][3] == 1'b0) begin
                            // Positive case
                            addIn3[i] <= {products_sign[i][3], {SDO_buf4[i], CIM_out3[i]} >> Diff[i]};
                        end else if (products_sign[i][3] == 1'b1) begin
                            // Negative case
                            addIn3[i] <= {1'b1, -({SDO_buf4[i], CIM_out3[i]} >> Diff[i])};
                        end
                    end
                end
            end else if (!InFp)begin
                for (int i = 0; i < 36; i = i + 1) begin
                    addIn0[i] <= {1'b0,CIM_out0[i][2:1],2'b00};
                    addIn1[i] <= {1'b0,CIM_out1[i][2:1],2'b00};
                    addIn2[i] <= {1'b0,CIM_out2[i][2:1],2'b00};
                    addIn3[i] <= {CIM_out3[i][2],CIM_out3[i][2:1],2'b00};
                end            
            end
        end
    end
    

    
    Adder_tree add0(
        .clk(clk),
        .RSTN(RSTN),
        .numbers(addIn0),
        .finalSum(sum0)
    );

    Adder_tree add1(
        .clk(clk),
        .RSTN(RSTN),
        .numbers(addIn1),
        .finalSum(sum1)
    );    

    Adder_tree add2(
        .clk(clk),
        .RSTN(RSTN),
        .numbers(addIn2),
        .finalSum(sum2)
    );

    Adder_tree add3(
        .clk(clk),
        .RSTN(RSTN),
        .numbers(addIn3),
        .finalSum(sum3)
    );
    
    always@(posedge clk )begin

        if (InFp && cnt==10) begin
            accumulator_DataValid <= 1'b1;
        end else if (!InFp && cnt == 6) begin
            accumulator_DataValid <= 1'b1;
        end else begin
            accumulator_DataValid <= 1'b0;
        end
    end
    
    accumulator accum0(
        .clk(clk),
        .InFp(InFp),
        .RSTN(RSTN),
        .data(sum0),
        .DataValid(accumulator_DataValid),
        .accum_out(accum_out0),
        .accum_out_valid(accum_out_valid0)
    );
    
    accumulator accum1(
        .clk(clk),
        .InFp(InFp),
        .RSTN(RSTN),
        .data(sum1),
        .DataValid(accumulator_DataValid),
        .accum_out(accum_out1),
        .accum_out_valid(accum_out_valid1)
    );

    accumulator accum2(
        .clk(clk),
        .InFp(InFp),
        .RSTN(RSTN),
        .data(sum2),
        .DataValid(accumulator_DataValid),
        .accum_out(accum_out2),
        .accum_out_valid(accum_out_valid2)
    );
    
    accumulator accum3(
        .clk(clk),
        .InFp(InFp),
        .data(sum3),
        .RSTN(RSTN),
        .DataValid(accumulator_DataValid),
        .accum_out(accum_out3),
        .accum_out_valid(accum_out_valid3)
    );
        
    carry_processing carr0 (
        .input_number(accum_out0),
        .clk(clk),
        .InFp(InFp),
        .RSTN(RSTN),
        .sign_buf(accum_out0[17]),
        .exp_max(exp_max_buf),
        .accum_out_valid(accum_out_valid0),
        .sign(Final_sign0),
        .Final_exp(Final_exp0),
        .Final_mant(Final_mant0),
        .carry_done(carry_done0)
    );
    
    carry_processing carr1 (
        .input_number(accum_out1),
        .clk(clk),
        .InFp(InFp),
        .RSTN(RSTN),
        .sign_buf(accum_out1[17]),
        .exp_max(exp_max_buf),
        .accum_out_valid(accum_out_valid1),
        .sign(Final_sign1),
        .Final_exp(Final_exp1),
        .Final_mant(Final_mant1),
        .carry_done(carry_done1)
    );
    
    carry_processing carr2 (
        .input_number(accum_out2),
        .clk(clk),
        .InFp(InFp),
        .RSTN(RSTN),
        .sign_buf(accum_out2[17]),
        .exp_max(exp_max_buf),
        .accum_out_valid(accum_out_valid2),
        .sign(Final_sign2),
        .Final_exp(Final_exp2),
        .Final_mant(Final_mant2),
        .carry_done(carry_done2)
    );
    
    carry_processing carr3 (
        .input_number(accum_out3),
        .clk(clk),
        .InFp(InFp),
        .RSTN(RSTN),
        .sign_buf(accum_out3[17]),
        .exp_max(exp_max_buf),
        .accum_out_valid(accum_out_valid3),
        .sign(Final_sign3),
        .Final_exp(Final_exp3),
        .Final_mant(Final_mant3),
        .carry_done(carry_done3)
    );
    
    always @(posedge clk) begin
        if (!RSTN) begin
            accum_shifted0 <= 0;
            accum_shifted1 <= 0;
            accum_shifted2 <= 0;
            accum_shifted3 <= 0;
            CIM_done <= 0;
        end else begin
            if (InFp && carry_done0) begin
                CIM_done <= 1'b1;  // CIM_done is set when accum_out_valid is true
            end else if (!InFp && accum_out_valid0) begin
                // Handle shifting based on InFp being 0
                accum_shifted0 <= accum_out0 >>> 2;  // Shift right by 2
                accum_shifted1 <= accum_out1;       // No shift
                accum_shifted2 <= accum_out2 <<< 2;  // Shift left by 2
                accum_shifted3 <= accum_out3 <<< 4;  // Shift left by 4
                CIM_done <= 1'b1;  // CIM_done is set when accum_out_valid is true
            end else begin
                CIM_done <= 1'b0;  // Reset CIM_done when no valid output
            end
        end
    end
    
    //Final Out put
    assign FinalOut_INT = accum_shifted0 + accum_shifted1 + accum_shifted2 + accum_shifted3;
    assign FinalOut_FP0 = {Final_sign0, Final_exp0, Final_mant0[2:1]};
    assign FinalOut_FP1 = {Final_sign1, Final_exp1, Final_mant1[2:1]};
    assign FinalOut_FP2 = {Final_sign2, Final_exp2, Final_mant2[2:1]};
    assign FinalOut_FP3 = {Final_sign3, Final_exp3, Final_mant3[2:1]};
endmodule
