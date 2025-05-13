module CIM_TOP_WRAPPER (
    input clk,
    input resetn,

    // RISC-V Memory-Mapped Interface
    input         mem_valid,
    input  [31:0] mem_addr,
    input  [31:0] mem_wdata,
    input  [3:0]  mem_wstrb,
    output [31:0] mem_rdata,
    output        cim_done
);

    // Flattened Register Arrays for CIM_TOP Inputs
    reg [287:0] reg_DataIn_flat;  // 36 x 8 bits
    reg [287:0] reg_W_flat;       // 36 x 8 bits
    reg [143:0] reg_W_sign_flat;  // 36 x 4 bits
    reg [4:0]   reg_W_exp;

    reg cim_trigger;
    reg [1:0] cim_status;  // Bit 0 = CIM_DONE, Bit 1 = Busy

    wire signed [21:0] FinalOut_INT_wire;
    wire [7:0] FinalOut_FP0_wire, FinalOut_FP1_wire, FinalOut_FP2_wire, FinalOut_FP3_wire;
    // wire CIM_done_wire;
    
    reg cim_trigger_dly_1cyc; // && !cim_status[1];
    reg cim_trigger_dly_2cyc; // && !cim_status[1];
    always @(posedge clk) begin
        if (!resetn) begin
            cim_trigger_dly_1cyc <= 0; 
            // cim_trigger_dly_2cyc <= 0; 
        end
        else begin
            cim_trigger_dly_1cyc <= cim_trigger;
            // cim_trigger_dly_2cyc <= cim_trigger;
        end        
    end
    wire DataValid_internal = cim_trigger_dly_1cyc & cim_trigger;// && !cim_status[1];
    // wire DataValid_internal = cim_trigger; 

    // Reconstruct Arrays Internally
    wire [7:0] DataIn [0:35];
    wire [7:0] W [0:35];
    wire [3:0] W_sign [0:35];

    genvar i;
    generate
        for (i = 0; i < 36; i = i + 1) begin : UNFLATTEN_INPUTS
            assign DataIn[i]  = reg_DataIn_flat[i*8 +: 8];
            assign W[i]       = reg_W_flat[i*8 +: 8];
            assign W_sign[i]  = reg_W_sign_flat[i*4 +: 4];
        end
    endgenerate

    // Instantiate CIM_TOP
    CO_PROCESSOR CO_PROCESSOR_inst (
        .clk(clk),
        .DataValid(DataValid_internal),
        .RSTN(resetn),
        .InFp(1'b0),
        .DataIn(DataIn),
        .W(W),
        .W_exp(reg_W_exp),
        .W_sign(W_sign),
        .FinalOut_INT(FinalOut_INT_wire),
        .FinalOut_FP0(FinalOut_FP0_wire),
        .FinalOut_FP1(FinalOut_FP1_wire),
        .FinalOut_FP2(FinalOut_FP2_wire),
        .FinalOut_FP3(FinalOut_FP3_wire),
        .CIM_done(cim_done)
    );

    // CIM Control Logic
    always @(posedge clk or negedge resetn) begin
        if (!resetn) begin
            cim_trigger <= 0;
            cim_status <= 2'b00;
            reg_W_exp <= 0;
            reg_DataIn_flat <= 0;
            reg_W_flat <= 0;
            reg_W_sign_flat <= 0;
        end else begin
            if (cim_trigger) begin
                cim_status[1] <= 1;  // Busy
                if (cim_done) begin
                    cim_status[0] <= 1;  // Done
                    cim_status[1] <= 0;  // Clear Busy
                    cim_trigger <= 0;
                end
            end
            if (mem_valid && mem_addr >= 32'h0300_0000 && mem_addr <= 32'h03FF_FFFF && mem_wstrb != 0) begin
                case (mem_addr[11:2])
                    // Each entry writes 4 bytes (32 bits) to DataIn_flat
                    10'h000: reg_DataIn_flat[31:0]   <= mem_wdata;
                    10'h001: reg_DataIn_flat[63:32]  <= mem_wdata;
                    10'h002: reg_DataIn_flat[95:64]  <= mem_wdata;
                    10'h003: reg_DataIn_flat[127:96] <= mem_wdata;
                    10'h004: reg_DataIn_flat[159:128] <= mem_wdata;
                    10'h005: reg_DataIn_flat[191:160] <= mem_wdata;
                    10'h006: reg_DataIn_flat[223:192] <= mem_wdata;
                    10'h007: reg_DataIn_flat[255:224] <= mem_wdata;
                    10'h008: reg_DataIn_flat[287:256] <= mem_wdata;

                    // Each entry writes 4 bytes (32 bits) to W_flat
                    10'h010: reg_W_flat[31:0]    <= mem_wdata;
                    10'h011: reg_W_flat[63:32]   <= mem_wdata;
                    10'h012: reg_W_flat[95:64]   <= mem_wdata;
                    10'h013: reg_W_flat[127:96]  <= mem_wdata;
                    10'h014: reg_W_flat[159:128] <= mem_wdata;
                    10'h015: reg_W_flat[191:160] <= mem_wdata;
                    10'h016: reg_W_flat[223:192] <= mem_wdata;
                    10'h017: reg_W_flat[255:224] <= mem_wdata;
                    10'h018: reg_W_flat[287:256] <= mem_wdata;

                    // W_exp (still only needs 5 bits)
                    10'h020: reg_W_exp <= mem_wdata[4:0];

                    // Each 32-bit word fills **8 entries** of 4-bit W_sign fields
                    10'h021: begin
                        reg_W_sign_flat[31:0]    <= mem_wdata[31:0];
                    end

                    10'h022: begin
                        reg_W_sign_flat[63:32]  <= mem_wdata[31:0];
                    end

                    10'h023: begin
                        reg_W_sign_flat[95:64]  <= mem_wdata[31:0];
                    end

                    10'h024: begin
                        reg_W_sign_flat[127:96]   <= mem_wdata[31:0];
                    end

                    10'h025: begin
                        reg_W_sign_flat[143:128] <= mem_wdata[15:0];
                    end

                    // Trigger and Status
                    10'h070: cim_trigger <= mem_wdata[0]; // should be a pulse signal rather than a level signal;
                    10'h071: cim_status <= cim_status & ~mem_wdata[1:0];
                    default: ;
                endcase
            end
        end
    end

    // assign mem_ready = mem_valid && mem_addr >= 32'h0300_0000 && mem_addr <= 32'h03FF_FFFF;

    assign mem_rdata =
        (mem_addr[11:2] == 10'h030) ? {10'd0, FinalOut_INT_wire} :
        (mem_addr[11:2] == 10'h031) ? {FinalOut_FP3_wire, FinalOut_FP2_wire, FinalOut_FP1_wire, FinalOut_FP0_wire} :
        (mem_addr[11:2] == 10'h032) ? {30'd0, cim_status} :
        32'h0000_0000;


endmodule
// caution about this part. it is flattenning the array or in 2D array.
module CO_PROCESSOR(
    input clk,                               // Clock signal for all Timing modules
    input DataValid,                         // DataValid signal for each Timing module (packed array for 72 bits)
    input RSTN,                              // RESET Signal
    input InFp,                              // Indicates the mode of the CIM, 0 for Int, 1 for fp
    input [7:0] DataIn [0:35],               // Input data for each Timing module (unpacked array of 72 elements, each 8 bits wide)
    input [7:0] W [0:35],                    // 8-bit weight arrays for the CIM module (unpacked array) 
    input [4:0] W_exp,                       // Weight Exponential, needed, when, InFp = 1
    input [3:0] W_sign [0:35],               // Weight Sign, needed, When InFp = 1;
    output wire signed [21:0] FinalOut_INT,
    output wire [7:0]FinalOut_FP0,
    output wire [7:0]FinalOut_FP1,
    output wire [7:0]FinalOut_FP2,
    output wire [7:0]FinalOut_FP3,
    output reg CIM_done
);

    CIM_TOP_reconstruct CIM_TOP_reconstruct_inst (
        .clk(clk),
        .DataValid(DataValid),
        .RSTN(RSTN),
        .InFp(InFp),
        .DataIn(DataIn),
        .W(W),
        .W_exp(W_exp),
        .W_sign(W_sign),
        .FinalOut_INT(FinalOut_INT),
        .FinalOut_FP0(FinalOut_FP0),
        .FinalOut_FP1(FinalOut_FP1),
        .FinalOut_FP2(FinalOut_FP2),
        .FinalOut_FP3(FinalOut_FP3),
        .CIM_done(CIM_done));

endmodule