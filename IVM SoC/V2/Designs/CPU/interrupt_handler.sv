/*
interrupt_handler.sv
This module will extend support for interrupts in In-Order RISC V Cores
Author: Ishan Moondra
Date: 05/16/2025
*/

module interrupt_handler
    (
        // Universal Signals
        input wire clk,
        input wire rst_n,
        // ISR input vector
        input wire [15:0] interrupt_in,
        // Cache Controller Status
        input wire cache_status,
        // Take Interrupt Signal
        output logic take_interrupt,
        // ISR Address
        output logic [31:0] isr_address,
        // Serving Interrupt Signal
        output logic serving_interrupt,
        // Memory Mapped CSR Logic
        input wire [31:0] data_address, 
        input wire [31:0] set_mask,     // Lower 16 bits disable specific interrupts
        output logic [31:0] curr_mask   // Upper 16 bits provide value of pending interrupts  
    );

// Interrupt In [0] serves as Non Maskable Interrupt
// Set_Mask[0] thus serves as the global interrupt enable
// NMI still taken even if GIE is disabled. 

logic global_interrupt_enable;

// ISR Table: [32] Bit is Interrupt Pending, [31:0] holds ISR Address
reg [32:0] isr_table [0:15];

// Masked Interrupt Vector
logic [15:0] masked_interrupts;

// Double Flopping interrupt_in to solve metastability issues.
reg [15:0] interrupt_in_ff0;
reg [15:0] interrupt_in_ff1;

always_ff @( posedge clk, negedge rst_n ) 
    begin : Interrupt_Vector
        if (~rst_n)
            {interrupt_in_ff1, interrupt_in_ff0} <= 0;
        else
            begin
                interrupt_in_ff0 <= interrupt_in;
                interrupt_in_ff1 <= interrupt_in_ff0;
            end
    end : Interrupt_Vector

// Masked Interrupts Generation
// Current Mask FF
always_ff @( posedge clk, negedge rst_n ) 
    begin : current_mask_ff
        if (~rst_n)
            curr_mask <= 0;
        else if (data_address == 32'hFFFF_FF00)
            curr_mask[15:0] <= set_mask[15:0];
    end

assign masked_interrupts = interrupt_in_ff1 & curr_mask;

// ISR Table update logic
always_ff @(posedge clk, negedge rst_n)
    begin   : Pending_Interrupt
        if (~rst_n)
            begin
                // Need a better way to write out stuff like this. 
                // Also should I keep [0] with address 0?
                isr_table[0]    <= {1'b0, 32'h0000_FF00};
                isr_table[1]    <= {1'b0, 32'h0000_FE00};
                isr_table[2]    <= {1'b0, 32'h0000_FD00};
                isr_table[3]    <= {1'b0, 32'h0000_FC00};
                isr_table[4]    <= {1'b0, 32'h0000_FB00};
                isr_table[5]    <= {1'b0, 32'h0000_FA00};
                isr_table[6]    <= {1'b0, 32'h0000_F900};
                isr_table[7]    <= {1'b0, 32'h0000_F800};
                isr_table[8]    <= {1'b0, 32'h0000_F700};
                isr_table[9]    <= {1'b0, 32'h0000_F600};
                isr_table[10]   <= {1'b0, 32'h0000_F500};
                isr_table[11]   <= {1'b0, 32'h0000_F400};
                isr_table[12]   <= {1'b0, 32'h0000_F300};
                isr_table[13]   <= {1'b0, 32'h0000_F200};
                isr_table[14]   <= {1'b0, 32'h0000_F100};
                isr_table[15]   <= {1'b0, 32'h0000_F000};
            end
        else
            isr_table[32] <= masked_interrupts;
    end     : Pending_Interrupt

endmodule
