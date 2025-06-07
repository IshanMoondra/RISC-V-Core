module register_file( input clk, 
		      input rst, 
  		    input [3:0] src_reg1, 
		      input [3:0] src_reg2, 
		      input [3:0] dst_reg, 
		      input write_reg, 
		      input [15:0] dst_data, 
		      inout [15:0] src_data1, 
		      inout [15:0] src_data2
); 

  wire [15:0] rden1, rden2, wren, sd1, sd2;

  read_decoder_4_16 rd1( .reg_id(src_reg1), .wordline(rden1) );
  read_decoder_4_16 rd2( .reg_id(src_reg2), .wordline(rden2) );
  write_decoder_4_16 wd1( .reg_id(dst_reg), .write_reg(write_reg), .wordline(wren) );
  
  register r0 ( .clk(clk), .rst(rst), .d(dst_data), .write_reg(wren[ 0]), .rden1(rden1[ 0]), .rden2(rden2[ 0]), .bitline1(sd1), .bitline2(sd2));
  register r1 ( .clk(clk), .rst(rst), .d(dst_data), .write_reg(wren[ 1]), .rden1(rden1[ 1]), .rden2(rden2[ 1]), .bitline1(sd1), .bitline2(sd2));
  register r2 ( .clk(clk), .rst(rst), .d(dst_data), .write_reg(wren[ 2]), .rden1(rden1[ 2]), .rden2(rden2[ 2]), .bitline1(sd1), .bitline2(sd2));  
  register r3 ( .clk(clk), .rst(rst), .d(dst_data), .write_reg(wren[ 3]), .rden1(rden1[ 3]), .rden2(rden2[ 3]), .bitline1(sd1), .bitline2(sd2));
  register r4 ( .clk(clk), .rst(rst), .d(dst_data), .write_reg(wren[ 4]), .rden1(rden1[ 4]), .rden2(rden2[ 4]), .bitline1(sd1), .bitline2(sd2));  
  register r5 ( .clk(clk), .rst(rst), .d(dst_data), .write_reg(wren[ 5]), .rden1(rden1[ 5]), .rden2(rden2[ 5]), .bitline1(sd1), .bitline2(sd2));
  register r6 ( .clk(clk), .rst(rst), .d(dst_data), .write_reg(wren[ 6]), .rden1(rden1[ 6]), .rden2(rden2[ 6]), .bitline1(sd1), .bitline2(sd2));
  register r7 ( .clk(clk), .rst(rst), .d(dst_data), .write_reg(wren[ 7]), .rden1(rden1[ 7]), .rden2(rden2[ 7]), .bitline1(sd1), .bitline2(sd2));
  register r8 ( .clk(clk), .rst(rst), .d(dst_data), .write_reg(wren[ 8]), .rden1(rden1[ 8]), .rden2(rden2[ 8]), .bitline1(sd1), .bitline2(sd2));
  register r9 ( .clk(clk), .rst(rst), .d(dst_data), .write_reg(wren[ 9]), .rden1(rden1[ 9]), .rden2(rden2[ 9]), .bitline1(sd1), .bitline2(sd2));
  register r10( .clk(clk), .rst(rst), .d(dst_data), .write_reg(wren[10]), .rden1(rden1[10]), .rden2(rden2[10]), .bitline1(sd1), .bitline2(sd2));
  register r11( .clk(clk), .rst(rst), .d(dst_data), .write_reg(wren[11]), .rden1(rden1[11]), .rden2(rden2[11]), .bitline1(sd1), .bitline2(sd2));
  register r12( .clk(clk), .rst(rst), .d(dst_data), .write_reg(wren[12]), .rden1(rden1[12]), .rden2(rden2[12]), .bitline1(sd1), .bitline2(sd2));
  register r13( .clk(clk), .rst(rst), .d(dst_data), .write_reg(wren[13]), .rden1(rden1[13]), .rden2(rden2[13]), .bitline1(sd1), .bitline2(sd2));
  register r14( .clk(clk), .rst(rst), .d(dst_data), .write_reg(wren[14]), .rden1(rden1[14]), .rden2(rden2[14]), .bitline1(sd1), .bitline2(sd2));
  register r15( .clk(clk), .rst(rst), .d(dst_data), .write_reg(wren[15]), .rden1(rden1[15]), .rden2(rden2[15]), .bitline1(sd1), .bitline2(sd2)); 

  assign src_data1 = ~(|src_reg1) ? 16'h0000 :
                    (write_reg && (src_reg1 == dst_reg)) ? dst_data : sd1;
  assign src_data2 = ~(|src_reg2) ? 16'h0000 : 
                    (write_reg && (src_reg2 == dst_reg)) ? dst_data : sd2;



endmodule // register_file
