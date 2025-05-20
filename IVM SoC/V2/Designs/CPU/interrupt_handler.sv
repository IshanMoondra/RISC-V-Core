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
        // Cache Controller Status // Not needed?
        // input wire cache_status,
        // Take Interrupt Signal
        output logic take_interrupt,
        // Special NMI Signal
        output logic take_nmi,
        // Special Serving NMI Signal
        output logic serving_nmi,
        // ISR Address
        output logic [31:0] isr_address,
        // Serving Interrupt Signal
        output logic serving_interrupt,
        // Decode Stage PC
        input wire [31:0] decode_pc,
        // Decode Stage IRET
        input wire decode_iret,
        // Memory Mapped CSR Logic
        input wire [31:0] data_address, 
        input wire [31:0] set_mask,     // Lower 16 bits disable specific interrupts
        output logic [31:0] curr_mask   // Upper 16 bits provide value of pending interrupts  
    );

// Interrupt In [0] serves as Non Maskable Interrupt
// Set_Mask[0] thus serves as the global interrupt enable
// NMI still taken even if GIE is disabled. 
// If Mask Bit is set to 0, it means that Interrupt will be IGNORED

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
// R/W Current Mask FF
// Reading Current Mask provides Mask information on lower 16 bits
// Upper 16 bits of Current Mask show status of pending interrupts
// Read Address of Current Mask can be restrained in SoC top layer: FFFF_FF10
always_ff @( posedge clk, negedge rst_n ) 
    begin : current_mask_ff
        if (~rst_n)
            curr_mask <= 0;
        else if (data_address == 32'hFFFF_FF00)
            begin
               curr_mask[15:0]  <= set_mask[15:0];
               curr_mask[31:16] <= interrupt_in_ff1;
            end
        else
            curr_mask[31:16] <= interrupt_in_ff1;
    end

assign global_interrupt_enable = curr_mask[0];

// Set Serving Interrupt iff Decode PC matches any of the ISR PC.
logic set_serving_interrupt;
logic set_serving_nmi;

assign set_serving_interrupt = (decode_pc == isr_table[0][31:0]  | decode_pc == isr_table[1][31:0]
                                decode_pc == isr_table[2][31:0]  | decode_pc == isr_table[3][31:0]
                                decode_pc == isr_table[4][31:0]  | decode_pc == isr_table[5][31:0]
                                decode_pc == isr_table[6][31:0]  | decode_pc == isr_table[7][31:0]
                                decode_pc == isr_table[8][31:0]  | decode_pc == isr_table[9][31:0]
                                decode_pc == isr_table[10][31:0] | decode_pc == isr_table[11][31:0]
                                decode_pc == isr_table[12][31:0] | decode_pc == isr_table[13][31:0]
                                decode_pc == isr_table[14][31:0] | decode_pc == isr_table[15][31:0]);

assign set_serving_nmi = (decode_pc == isr_table[0][31:0]);

always_ff @( posedge clk, negedge rst_n )
    begin : Serving_Interrupt
        if (~rst_n)
            {serving_nmi, serving_interrupt} <= 0;
        else if (set_serving_nmi)
            serving_nmi <= 1;
        else if (set_serving_interrupt)
            serving_interrupt <= 1;
        else if (decode_iret)
            {serving_nmi, serving_interrupt} <= 0;
    end : Serving_Interrupt

assign masked_interrupts = interrupt_in_ff1 & {(~serving_interrupt & global_interrupt_enable & (curr_mask[15:1])), 1b'1};

// ISR Table update logic
always_ff @( posedge clk, negedge rst_n )
    begin   : Pending_Interrupt
        if (~rst_n)
            begin
                // Need a better way to write out stuff like this. 
                // Also should I keep [0] with address 0? // Done
                isr_table[4'hf]   <= {1'b0, 32'h0000_FF00};
                isr_table[4'he]   <= {1'b0, 32'h0000_FE00};
                isr_table[4'hd]   <= {1'b0, 32'h0000_FD00};
                isr_table[4'hc]   <= {1'b0, 32'h0000_FC00};
                isr_table[4'hb]   <= {1'b0, 32'h0000_FB00};
                isr_table[4'ha]   <= {1'b0, 32'h0000_FA00};
                isr_table[4'h9]   <= {1'b0, 32'h0000_F900};
                isr_table[4'h8]   <= {1'b0, 32'h0000_F800};
                isr_table[4'h7]   <= {1'b0, 32'h0000_F700};
                isr_table[4'h6]   <= {1'b0, 32'h0000_F600};
                isr_table[4'h5]   <= {1'b0, 32'h0000_F500};
                isr_table[4'h4]   <= {1'b0, 32'h0000_F400};
                isr_table[4'h3]   <= {1'b0, 32'h0000_F300};
                isr_table[4'h2]   <= {1'b0, 32'h0000_F200};
                isr_table[4'h1]   <= {1'b0, 32'h0000_F100};
                isr_table[4'h0]   <= {1'b0, 32'h0000_F000};
            end
        else
            isr_table[32] <= masked_interrupts;
    end     : Pending_Interrupt

// Interrupt Detect Block: Priority Case Statement
always_comb 
    begin : Interrupt_Detect
        casex (isr_table[32])
            isr_table[32] & 16'h0001: {take_interrupt, isr_address} <= isr_table[0];
            isr_table[32] & 16'h0002: {take_interrupt, isr_address} <= isr_table[1];
            isr_table[32] & 16'h0004: {take_interrupt, isr_address} <= isr_table[2];
            isr_table[32] & 16'h0008: {take_interrupt, isr_address} <= isr_table[3];
            isr_table[32] & 16'h0010: {take_interrupt, isr_address} <= isr_table[4];
            isr_table[32] & 16'h0020: {take_interrupt, isr_address} <= isr_table[5];
            isr_table[32] & 16'h0040: {take_interrupt, isr_address} <= isr_table[6];
            isr_table[32] & 16'h0080: {take_interrupt, isr_address} <= isr_table[7];
            isr_table[32] & 16'h0100: {take_interrupt, isr_address} <= isr_table[8];
            isr_table[32] & 16'h0200: {take_interrupt, isr_address} <= isr_table[9]; 
            isr_table[32] & 16'h0400: {take_interrupt, isr_address} <= isr_table[10];
            isr_table[32] & 16'h0800: {take_interrupt, isr_address} <= isr_table[11];
            isr_table[32] & 16'h1000: {take_interrupt, isr_address} <= isr_table[12];
            isr_table[32] & 16'h2000: {take_interrupt, isr_address} <= isr_table[13];
            isr_table[32] & 16'h4000: {take_interrupt, isr_address} <= isr_table[14];
            isr_table[32] & 16'h8000: {take_interrupt, isr_address} <= isr_table[15];
            default: {take_interrupt, isr_address} <= 0;
        endcase
    end : Interrupt_Detect

// Special NMI Pending Signal
assign take_nmi = isr_table[0][32];

endmodule
