`timescale 1ns / 1ps
module CIM(
    input [0:35] A,                    // 72-bit input A (each bit corresponds to a 1D array element)
    input [7:0] W [0:35],              // 72 elements, each containing an 8-bit value for W
    output wire [7:0] products [0:35]  // 72 elements, each 8-bit wide output product
);

    genvar i, j;

    generate
        for(i = 0; i < 36; i = i + 1) begin : product_loop
            for(j = 0; j < 8; j = j + 1) begin : bitwise_op
                // For each bit in W[i], combine with A[i] and assign to the products array
                assign products[i][j] = ~(A[i] | W[i][j]); // Perform bitwise OR and negate it
            end
        end  
    endgenerate

endmodule

