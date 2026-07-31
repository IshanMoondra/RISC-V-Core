#include <memory>
#include "Vsoc_fpga_tb_v1.h" // Verilated top module header
#include "verilated.h"
#include "verilated_fst_c.h" // Using high-performance FST files over VCD

int main(int argc, char** argv) {
    // 1. Initialize simulation context and extract plusargs (+dump_on)
    const std::unique_ptr<VerilatedContext> contextp{new VerilatedContext};
    contextp->commandArgs(argc, argv);

    // 2. Instantiate your SystemVerilog Testbench Top
    const std::unique_ptr<Vsoc_fpga_tb_v1> top{new Vsoc_fpga_tb_v1{contextp.get(), "TOP"}};

    // 3. Conditional Waveform setup matching your SV logic
    std::unique_ptr<VerilatedFstC> tfp = nullptr;
    const char* dump_on = contextp->commandArgsPlusMatch("dump_on");
    
    if (dump_on && std::string(dump_on) != "0") {
        contextp->traceEverOn(true);
        tfp = std::make_unique<VerilatedFstC>();
        top->trace(tfp.get(), 99); // Trace 99 levels deep
        tfp->open("waveform.fst");  // Compact FST format readable by GTKWave
    }

    // 4. Main Event Execution Engine Loop
    while (!contextp->gotFinish()) {
        // Evaluate the current time slice delta/event queues
        top->eval();
        
        // Dump trace if enabled
        if (tfp) {
            tfp->dump(contextp->time());
        }

        // Advance Verilator internal timing engine by 1 timescale step (1ns)
        contextp->timeInc(1);
    }

    // 5. Cleanup and Flush buffers
    top->final();
    if (tfp) {
        tfp->close();
    }

    return 0;
}
