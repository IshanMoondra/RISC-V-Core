// WISC Trace P2 - CPU Stats & Logging

module wisc_trace_p3 #(
    parameter ARCH_WIDTH = 16,
    parameter REG_WIDTH  = 4
) (
    input clk,
    input rst,
    input Halt,  // Halt must not set until WriteBack stage, otherwise programs end prematurely!
    input [ARCH_WIDTH-1:0] PC,  // Value of PC in Instruction Fetch stage
    input [ARCH_WIDTH-1:0] Inst,  // The 16 bit instruction word
    input RegWrite,  // True if RF is being written
    input [REG_WIDTH-1:0] WriteRegister,  // What 4-bit register number is written when RegWrite==1
    input [ARCH_WIDTH-1:0] WriteData,  // 16-bit Data being written to the RF when RegWrite==1
    input MemRead,  // True if memory is being read; **do not set if not LW**
    input MemWrite,  // True if memory is being written; **do not set if not SW**
    input [ARCH_WIDTH-1:0] MemAddress,  // DataMemAddress being written
    input [ARCH_WIDTH-1:0] MemDataIn,  // Data being written when RegWrite==1
    input [ARCH_WIDTH-1:0] MemDataOut,  // Data being read when RegRead==1
    input icache_req,  // Icache indicates read request
    input icache_hit,  // Icache indicates cache hit
    input dcache_req,  // Dcache indicates read request
    input dcache_hit  // Dcache indicates cache hit
);

  // Setup
  integer inst_count;
  integer cycle_count;
  integer clocks_since_reset;
  integer trace_file;
  integer sim_log_file;
  integer icache_req_count;
  integer icache_hit_count;
  integer dcache_req_count;
  integer dcache_hit_count;

  initial begin
    cycle_count = 0;
    $dumpvars;
    $display("Simulation starting");
    $display("See verilogsim.log and verilogsim.trace for output");
    inst_count = 0;
    icache_hit_count = 0;
    icache_req_count = 0;
    dcache_hit_count = 0;
    dcache_req_count = 0;
    trace_file = $fopen("verilogsim.trace");
    sim_log_file = $fopen("verilogsim.log");
  end

  always @(posedge clk) begin
    cycle_count <= cycle_count + 1;
    if (cycle_count > 100000) begin
      $display("hmm....more than 100000 cycles of simulation...error?\n");
      $finish;
    end
  end

  always @(posedge clk) begin
    if (!rst) begin
      clocks_since_reset <= clocks_since_reset + 1;
      if (Halt || RegWrite || MemWrite) begin
        inst_count <= inst_count + 1;
      end
      if (icache_req) icache_req_count <= icache_req_count + 1;
      if (icache_hit) icache_hit_count <= icache_hit_count + 1;
      if (dcache_req) dcache_req_count <= dcache_req_count + 1;
      if (dcache_hit) dcache_hit_count <= dcache_hit_count + 1;

      $fdisplay(sim_log_file, "SIMLOG:: Cycle %d PC: %8x I: %8x R: %d %3d %8x M: %d %d %8x %8x %8x",
                cycle_count, PC, Inst, RegWrite, WriteRegister, WriteData, MemRead, MemWrite,
                MemAddress, MemDataIn, MemDataOut);

      if (RegWrite) begin
        // After reset, ID will have Inst==0, which is ADD R0, R0, R0 (aka NOP), but control still decodes
        // and sets the WriteReg flag. clocks_since_reset is used to ignore this spurious non-program NOP.
        if ((clocks_since_reset < 4) & (WriteRegister == 0))
          $display(
              "(NOTICE: ignoring on clk %0d) REG: %d VALUE: 0x%04x",
              cycle_count,
              WriteRegister,
              WriteData
          );
        else $fdisplay(trace_file, "REG: %d VALUE: 0x%04x", WriteRegister, WriteData);
      end

      if (MemRead) begin
        $fdisplay(trace_file, "LOAD: ADDR: 0x%04x VALUE: 0x%04x", MemAddress, MemDataOut);
      end

      if (MemWrite) begin
        $fdisplay(trace_file, "STORE: ADDR: 0x%04x VALUE: 0x%04x", MemAddress, MemDataIn);
      end

      if (Halt) begin
        $fdisplay(sim_log_file, "SIMLOG:: Processor halted\n");
        $fdisplay(sim_log_file, "SIMLOG:: sim_cycles %d\n", cycle_count);
        $fdisplay(sim_log_file, "SIMLOG:: inst_count %d\n", inst_count);
        $fdisplay(sim_log_file, "SIMLOG:: icache_req_count %d\n", icache_req_count);
        $fdisplay(sim_log_file, "SIMLOG:: icache_hit_count %d\n", icache_hit_count);
        $fdisplay(sim_log_file, "SIMLOG:: dcache_req_count %d\n", dcache_req_count);
        $fdisplay(sim_log_file, "SIMLOG:: dcache_hit_count %d\n", dcache_hit_count);

        $writememh("dumpfile_data.img", DUT.dmem.mem);

        $fclose(trace_file);
        $fclose(sim_log_file);
        #5;
        $finish;
      end
    end else begin
      clocks_since_reset <= 0;
    end
  end
endmodule  // wisc_trace_p2
