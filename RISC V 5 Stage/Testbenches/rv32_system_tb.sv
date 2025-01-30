`timescale 1ns / 1ps

/*
rv32_system_tb.sv
Testbench file for the RV32I System
*/

module rv32_system_tb ();

// Testbench Signals
reg clk;
reg rst_n;
wire flush;
wire stall;
wire halt;
wire [31:0] wb_result;
int count;

// Instantiating the system
rv32_system_top iSoC
    (
        .clk(clk),
        .rst_n(rst_n),
        .flush(flush),
        .stall(stall),
        .halt(halt),
        .wb_result(wb_result)
    );

initial
begin

    clk     = 0;
    rst_n   = 0;
    count = 0;
    repeat(1) @(negedge clk);
    rst_n   = 1;
    
    @(posedge clk);
    fork
        begin: Timeout            
            while (count < 265)
                begin
                    @(posedge clk);
                    $display("Cycle Count, PC, WB Result: %d  %d  %d", count, iSoC.pc_fetch, wb_result);
                    count = count + 1;                    
                end
            $display("More than 200 cycles of simulation, timeout!");
            $stop();
        end: Timeout
        begin: Testing
            @(posedge halt);
            disable Timeout;
            @(posedge clk);
            $display("Processor Halted!");
            $display("Cycle Count: %d", count);
            // @(posedge clk);
            $stop("Test done!");
        end: Testing
    join
end

always
    #5 clk <= ~clk;

endmodule