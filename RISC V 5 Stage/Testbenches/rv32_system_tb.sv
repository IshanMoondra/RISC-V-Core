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
    rst_n   = 1;

    @(negedge clk);
    rst_n   = 0;
    repeat(5) @(negedge clk);
    rst_n   = 1;

    @(posedge clk);
    fork
        begin: Timeout            
            while (count < 100)
                begin
                    @(posedge clk);
                    count = count + 1;                    
                end
            $display("More than 100 cycles of simulation, timeout!");
            $stop();
        end: Timeout
        begin: Testing
            @(posedge halt);
            disable Timeout;
            $display("Processor Halted!");
            // @(posedge clk);
            $stop("Test done!");
        end: Testing
    join
end

always
    #5 clk <= ~clk;

endmodule