`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2023 16:51:42
// Design Name: 
// Module Name: rv32_cu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//Let's create a Queue where we store preserve the Code Data bus so that if we encounter an Immediate instruction
//we can store the value of the entire code data bus onto this queue, allowing for our Pipeline to continuously run.
//We need to create a top level module that initialises all the modules, and their queues since the pipelined nature
//of the processor means that the Control Unit is not the entire master of the processor. 

module rv32_cu
    (
        input clk,
        input rst_n,
        input [31:0] code_bus,             //From IF/ID Queue.
        output wire [18:0] rb_ctrl,        //To ID/EX Queue.
        output wire [4:0] alu_ctrl,
        output wire [3:0] bshift_ctrl,
        output wire [4:0] pc_ctrl,
        output wire [1:0] data_ctrl
    );
    
//Control Signals for Register Bank.
reg [4:0] reg_sel_s1;
reg [4:0] reg_sel_s2;
reg [4:0] reg_sel_d1;
reg load;
reg store;
reg [1:0] source_sel_dest;

//Control Signals for Program Counter.
reg pc_enable;
reg [2:0] pc_operation_sel;
reg normal_op;

//Control Signals for ALU.
reg alu_enable;
reg [3:0] alu_operation_sel;

//Control Signals for Barrel Shifter.
reg shifter_enable;
reg shifter_logical;
reg shifter_direction;
reg shifter_immediate;

//Control Signals for Data RAM.
reg data_read;
reg data_enable;

initial
begin
    //Control Signals for Register Bank.
    load <= 0;
    store <= 0;
    reg_sel_s1 <= 0;
    reg_sel_s2 <= 0;
    reg_sel_d1 <= 0;
    source_sel_dest <= 0;
    
    //Control Signals for Program Counter.
    pc_enable <= 1;
    pc_operation_sel <= 0;
    normal_op <= 1;
    
    //Control Signals for ALU.
    alu_enable <= 0;
    alu_operation_sel <= 7;
    
    //Control Signals for Barrel Shifter.
    shifter_enable <= 0;
    shifter_logical <= 0;
    shifter_direction <= 0;
    shifter_immediate <= 0;
    
    //Control Signals for DATA RAM.
    data_read <= 1;
    data_enable <= 0;
end

always@(posedge clk, negedge rst_n)
begin
    if (!rst_n)
        begin
            //Control Signals for Register Bank.
            load <= 0;
            store <= 0;
            reg_sel_s1 <= 0;
            reg_sel_s2 <= 0;
            reg_sel_d1 <= 0;
            source_sel_dest <= 0;
            
            //Control Signals for Program Counter.
            pc_enable <= 1;
            pc_operation_sel <= 0;
            normal_op <= 1;
            
            //Control Signals for ALU.
            alu_enable <= 0;
            alu_operation_sel <= 7;
            
            //Control Signals for Barrel Shifter.
            shifter_enable <= 0;
            shifter_logical <= 0;
            shifter_direction <= 0;
            shifter_immediate <= 0;
            
            //Control Signals for DATA RAM.
            data_read <= 1;
            data_enable <= 0;            
        end
    else
        begin
            //Instruction Decode Phase.
            case(code_bus[6:0])     //Case for Opcode Field.
            7'b0110011: //R Type Instruction.
            begin
                case(code_bus[14:12])   //Case for Funct3 Field.
                3'b000:
                begin
                    case (code_bus[30])   //Conditional for Funct7 Field (only 1 Bit changes).
                    0://Add rd rs1 rs2
                    begin
                        normal_op <= 1;         //Not a Branch Instruction        
                        alu_enable <= 1;                    //Enable the ALU
                        shifter_enable <= 0;                //Disable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                        reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 0;               //ALU is the Result Source               
                        alu_operation_sel <= 0;             //Select Add Operation in ALU.
                    end
                    1://Sub rd rs1 rs2
                    begin
                        normal_op <= 1;         //Not a Branch Instruction
                        alu_enable <= 1;                    //Enable the ALU
                        shifter_enable <= 0;                //Disable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                        reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 0;               //ALU is the Result Source               
                        alu_operation_sel <= 1;             //Select Sub Operation in ALU.
                    end
                    endcase
                end
                3'b001: //Shift Left Logical.
                begin
                    normal_op <= 1;         //Not a Branch Instruction
                    alu_enable <= 0;                    //Disable the ALU
                    shifter_enable <= 1;                //Enable the Barrel Shifter.
                    data_enable <= 0;                   //Disable the Data RAM.
                    reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                    reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                    reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                    load <= 0;                          //Not a Load Instruction.
                    store <= 0;                         //Not a Store Instruction.
                    source_sel_dest <= 1;               //Barrel Shifter is the Result Source.              
                    shifter_logical <= 0;             //Don't Care Condition, hence unspecified.
                    shifter_direction <= 0;             //Direction is Left Shift. 
                    shifter_immediate <= 0;             //Not an Immediate Shfit.        
                end
                3'b010: //Set Less Than (Signed).
                begin
                    normal_op <= 1;         //Not a Branch Instruction
                    alu_enable <= 1;                    //Enable the ALU
                    shifter_enable <= 0;                //Disable the Barrel Shifter.
                    data_enable <= 0;                   //Disable the Data RAM.
                    reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                    reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                    reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                    load <= 0;                          //Not a Load Instruction.
                    store <= 0;                         //Not a Store Instruction.
                    source_sel_dest <= 0;               //ALU is the Result Source               
                    alu_operation_sel <= 5;             //Select SLT Operation in ALU.
                end
                3'b011: //Set Less Than Unsigned.
                begin
                    normal_op <= 1;         //Not a Branch Instruction
                    alu_enable <= 1;                    //Enable the ALU
                    shifter_enable <= 0;                //Disable the Barrel Shifter.
                    data_enable <= 0;                   //Disable the Data RAM.
                    reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                    reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                    reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                    load <= 0;                          //Not a Load Instruction.
                    store <= 0;                         //Not a Store Instruction.
                    source_sel_dest <= 0;               //ALU is the Result Source               
                    alu_operation_sel <= 6;             //Select SLTU Operation in ALU.
                end
                3'b100: //Bitwise XOR
                begin
                    normal_op <= 1;         //Not a Branch Instruction
                    alu_enable <= 1;                    //Enable the ALU
                    shifter_enable <= 0;                //Disable the Barrel Shifter.
                    data_enable <= 0;                   //Disable the Data RAM.
                    reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                    reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                    reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                    load <= 0;                          //Not a Load Instruction.
                    store <= 0;                         //Not a Store Instruction.
                    source_sel_dest <= 0;               //ALU is the Result Source               
                    alu_operation_sel <= 4;             //Select XOR Operation in ALU.        
                end
                3'b101:
                begin
                    case (code_bus[30])   //Conditional for Funct7 Field (only 1 Bit changes).
                    0://Shift Right Logical
                    begin
                        normal_op <= 1;         //Not a Branch Instruction
                        alu_enable <= 0;                    //Disable the ALU
                        shifter_enable <= 1;                //Enable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                        reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 1;               //Barrel Shifter is the Result Source.              
                        shifter_logical <= 1;               //Selects Logical Right Shift.
                        shifter_direction <= 1;             //Direction is Right Shift. 
                        shifter_immediate <= 0;             //Not an Immediate Shfit.              
                    end
                    1://Shift Right Arithmetic.
                    begin
                        normal_op <= 1;         //Not a Branch Instruction
                        alu_enable <= 0;                    //Disable the ALU
                        shifter_enable <= 1;                //Enable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                        reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 1;               //Barrel Shifter is the Result Source.              
                        shifter_logical <= 0;               //Selects Arithmetic Shifting.
                        shifter_direction <= 1;             //Direction is Right Shift. 
                        shifter_immediate <= 0;             //Not an Immediate Shfit.  
                    end
                    endcase
                end
                3'b110: //Bitwise OR
                begin
                    normal_op <= 1;         //Not a Branch Instruction
                    alu_enable <= 1;                    //Enable the ALU
                    shifter_enable <= 0;                //Disable the Barrel Shifter.
                    data_enable <= 0;                   //Disable the Data RAM.
                    reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                    reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                    reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                    load <= 0;                          //Not a Load Instruction.
                    store <= 0;                         //Not a Store Instruction.
                    source_sel_dest <= 0;               //ALU is the Result Source               
                    alu_operation_sel <= 3;             //Select OR Operation in ALU.        
                end
                3'b111: //Bitwise AND
                begin
                    normal_op <= 1;         //Not a Branch Instruction
                    alu_enable <= 1;                    //Enable the ALU
                    shifter_enable <= 0;                //Disable the Barrel Shifter.
                    data_enable <= 0;                   //Disable the Data RAM.
                    reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                    reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                    reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                    load <= 0;                          //Not a Load Instruction.
                    store <= 0;                         //Not a Store Instruction.
                    source_sel_dest <= 0;               //ALU is the Result Source               
                    alu_operation_sel <= 2;             //Select AND Operation in ALU.        
                end
                endcase
            end
            7'b0010011:  //I* & I Execute Type Instruction
            begin
                normal_op <= 1;         //Not a Branch Instruction
                case(code_bus[14:12])   //Case for Funct3 Field.
                    3'b000: //Addi Instruction
                    begin
                        normal_op <= 1;         //Not a Branch Instruction
                        alu_enable <= 1;                    //Enable the ALU
                        shifter_enable <= 0;                //Disable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                        reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 0;               //ALU is the Result Source               
                        alu_operation_sel <= 7;             //Select ADDi Operation in ALU.   
                    end
                    3'b111: //ANDi Instruction
                    begin
                        normal_op <= 1;         //Not a Branch Instruction
                        alu_enable <= 1;                    //Enable the ALU
                        shifter_enable <= 0;                //Disable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                        reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 0;               //ALU is the Result Source               
                        alu_operation_sel <= 9;             //Select ANDi Operation in ALU.
                    end
                    3'b110: //ORi Instruction
                    begin
                        normal_op <= 1;         //Not a Branch Instruction
                        alu_enable <= 1;                    //Enable the ALU
                        shifter_enable <= 0;                //Disable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                        reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 0;               //ALU is the Result Source               
                        alu_operation_sel <= 10;            //Select ORi Operation in ALU.
                    end
                    3'b100: //XORi Instruction
                    begin
                        normal_op <= 1;         //Not a Branch Instruction
                        alu_enable <= 1;                    //Enable the ALU
                        shifter_enable <= 0;                //Disable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                        reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 0;               //ALU is the Result Source               
                        alu_operation_sel <= 11;            //Select XORi Operation in ALU.
                    end
                    3'b010: //SLTi Instruction
                    begin
                        normal_op <= 1;         //Not a Branch Instruction
                        alu_enable <= 1;                    //Enable the ALU
                        shifter_enable <= 0;                //Disable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                        reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 0;               //ALU is the Result Source               
                        alu_operation_sel <= 12;            //Select SLTi Operation in ALU.
                    end
                    3'b011: //SLTUi Instruction
                    begin
                        normal_op <= 1;         //Not a Branch Instruction
                        alu_enable <= 1;                    //Enable the ALU
                        shifter_enable <= 0;                //Disable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                        reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 0;               //ALU is the Result Source               
                        alu_operation_sel <= 13;            //Select SLTUi Operation in ALU.
                    end
                    3'b001: //Shift Left Logical Immediate Instruction
                    begin
                        normal_op <= 1;         //Not a Branch Instruction
                        alu_enable <= 0;                    //Disable the ALU
                        shifter_enable <= 1;                //Enable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                        reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 1;               //Barrel Shifter is the Result Source.              
                        shifter_logical <= 0;             //Don't Care Condition, hence unspecified.
                        shifter_direction <= 0;             //Direction is Left Shift. 
                        shifter_immediate <= 1;             //Is an Immediate Shfit.
                    end
                    3'b101:
                begin
                    case (code_bus[30])   //Conditional for Funct7 Field (only 1 Bit changes).
                    0://Shift Right Logical Immediate Instruction
                    begin
                        normal_op <= 1;         //Not a Branch Instruction
                        alu_enable <= 0;                    //Disable the ALU
                        shifter_enable <= 1;                //Enable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                        reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 1;               //Barrel Shifter is the Result Source.              
                        shifter_logical <= 1;               //Selects Logical Right Shift.
                        shifter_direction <= 1;             //Direction is Right Shift. 
                        shifter_immediate <= 1;             //Is an Immediate Shfit.              
                    end
                    1://Shift Right Arithmetic Immediate Instruction
                    begin
                        normal_op <= 1;         //Not a Branch Instruction
                        alu_enable <= 0;                    //Disable the ALU
                        shifter_enable <= 1;                //Enable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                        reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 1;               //Barrel Shifter is the Result Source.              
                        shifter_logical <= 0;               //Selects Arithmetic Shifting.
                        shifter_direction <= 1;             //Direction is Right Shift. 
                        shifter_immediate <= 1;             //Is an Immediate Shfit.  
                    end
                    endcase
                end
                endcase
            end
            7'b0000011: //Load Instructions.
            begin        
                case(code_bus[14:12])   //Case for Funct3 Field.
                    3'b000: //Load Byte Not Implemented due to 32bit Memory.
                    begin
                        //Padding unimplemented instructions with NOPs Addi x0 x0 0.
                        normal_op <= 1;                     //Not a Branch Instruction
                        alu_enable <= 1;                    //Enable the ALU
                        shifter_enable <= 0;                //Disable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= 0;                    //Zero Register is selected as Register S1
                        //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                        reg_sel_d1 <= 0;                    //Zero Register is selected as Register D1 
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 0;               //ALU is the Result Source               
                        alu_operation_sel <= 7;             //Select ADDi Operation in ALU.
                    end
                    3'b100: //Load Byte (Unsigned) Not Implemented due to 32bit Memory.
                    begin
                        //Padding unimplemented instructions with NOPs Addi x0 x0 0.
                        normal_op <= 1;                     //Not a Branch Instruction
                        alu_enable <= 1;                    //Enable the ALU
                        shifter_enable <= 0;                //Disable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= 0;                    //Zero Register is selected as Register S1
                        //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                        reg_sel_d1 <= 0;                    //Zero Register is selected as Register D1 
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 0;               //ALU is the Result Source               
                        alu_operation_sel <= 7;             //Select ADDi Operation in ALU.
                    end
                    3'b001: //Load Half Word Not Implemented due to 32bit Memory.
                    begin
                        //Padding unimplemented instructions with NOPs Addi x0 x0 0.
                        normal_op <= 1;                     //Not a Branch Instruction
                        alu_enable <= 1;                    //Enable the ALU
                        shifter_enable <= 0;                //Disable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= 0;                    //Zero Register is selected as Register S1
                        //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                        reg_sel_d1 <= 0;                    //Zero Register is selected as Register D1 
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 0;               //ALU is the Result Source               
                        alu_operation_sel <= 7;             //Select ADDi Operation in ALU.
                    end
                    3'b101: //Load Half Word (Unsigned) Not Implemented due to 32bit Memory.
                    begin
                        //Padding unimplemented instructions with NOPs Addi x0 x0 0.
                        normal_op <= 1;                     //Not a Branch Instruction
                        alu_enable <= 1;                    //Enable the ALU
                        shifter_enable <= 0;                //Disable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= 0;                    //Zero Register is selected as Register S1
                        //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                        reg_sel_d1 <= 0;                    //Zero Register is selected as Register D1 
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 0;               //ALU is the Result Source               
                        alu_operation_sel <= 7;             //Select ADDi Operation in ALU.
                    end
                    3'b010: //Load Word.
                    begin
                        normal_op <= 1;                     //Not a Branch Instruction
                        alu_enable <= 0;                    //Disable the ALU
                        shifter_enable <= 0;                //Disable the Barrel Shifter.
                        data_enable <= 1;                   //Enable the Data RAM.
                        data_read <= 1;
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                        reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                        load <= 1;                          //Is a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 3;               //Data Memory is the Result Source. 
                    end
                endcase
            end
            7'b0100011: //Store Instruction.
            begin
                case(code_bus[14:12])   //Case for Funct3 Field.
                    3'b000: //Store Byte Not Implemented due to 32bit Memory.
                    begin
                        //Padding unimplemented instructions with NOPs Addi x0 x0 0.
                        normal_op <= 1;                     //Not a Branch Instruction
                        alu_enable <= 1;                    //Enable the ALU
                        shifter_enable <= 0;                //Disable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= 0;                    //Zero Register is selected as Register S1
                        //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                        reg_sel_d1 <= 0;                    //Zero Register is selected as Register D1 
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 0;               //ALU is the Result Source               
                        alu_operation_sel <= 7;             //Select ADDi Operation in ALU.
                    end
                    3'b001: //Store Half Word Not Implemented due to 32bit Memory.
                    begin
                        //Padding unimplemented instructions with NOPs Addi x0 x0 0.
                        normal_op <= 1;                     //Not a Branch Instruction
                        alu_enable <= 1;                    //Enable the ALU
                        shifter_enable <= 0;                //Disable the Barrel Shifter.
                        data_enable <= 0;                   //Disable the Data RAM.
                        reg_sel_s1 <= 0;                    //Zero Register is selected as Register S1
                        //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                        reg_sel_d1 <= 0;                    //Zero Register is selected as Register D1 
                        load <= 0;                          //Not a Load Instruction.
                        store <= 0;                         //Not a Store Instruction.
                        source_sel_dest <= 0;               //ALU is the Result Source               
                        alu_operation_sel <= 7;             //Select ADDi Operation in ALU.
                    end
                    3'b010: //Store Word.
                    begin
                        normal_op <= 1;                     //Not a Branch Instruction
                        alu_enable <= 0;                    //Disable the ALU
                        shifter_enable <= 0;                //Disable the Barrel Shifter.
                        data_enable <= 1;                   //Enable the Data RAM.
                        data_read <= 0;
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                        reg_sel_d1 <= 0;                    //Selects Register D1 as Zero Register.
                        load <= 0;                          //Not a Load Instruction.
                        store <= 1;                         //Is a Store Instruction.
                        source_sel_dest <= 0;               //ALU is the Result Source. Don't Care Condition. 
                    end
                endcase
            end
            7'b1100011: //Control Branching Instructions.
            begin
                alu_enable <= 0;                    //Disable the ALU
                shifter_enable <= 0;                //Disable the Barrel Shifter.
                data_enable <= 0;                   //Disable the Data RAM.
                reg_sel_d1 <= 0;                    //Selects Register D1 as Zero Register.
                load <= 0;                          //Not a Load Instruction.
                store <= 0;                         //Not a Store Instruction.
                source_sel_dest <= 0;               //ALU is the Result Source. Don't Care Condition.
                case(code_bus[14:12])
                    3'b000: //BEQ Instruction.
                    begin
                        normal_op <= 0;                     //Branch Instruction
                        pc_operation_sel <= 2;              //Selects BEQ in the PC.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                    end
                    3'b101: //BGT Instruction.
                    begin
                        normal_op <= 0;                     //Branch Instruction
                        pc_operation_sel <= 5;              //Selects BGT in the PC.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                    end
                    3'b111: //BGTU Instruction.
                    begin
                        normal_op <= 0;                     //Branch Instruction
                        pc_operation_sel <= 7;              //Selects BGTU in the PC.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                    end
                    3'b100: //BLT Instruction.
                    begin
                        normal_op <= 0;                     //Branch Instruction
                        pc_operation_sel <= 4;              //Selects BLT in the PC.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                    end
                    3'b110: //BLTU Instruction.
                    begin
                        normal_op <= 0;                     //Branch Instruction
                        pc_operation_sel <= 6;              //Selects BLTU in the PC.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                    end
                    3'b001: //BNE Instruction.
                    begin
                        normal_op <= 0;                     //Branch Instruction
                        pc_operation_sel <= 3;              //Selects BNE in the PC.
                        reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                        reg_sel_s2 <= code_bus[24:20];      //Selects Register S2
                    end
                endcase
            end
            7'b1101111: //Control Jump & Link
            begin
                alu_enable <= 0;                    //Disable the ALU
                shifter_enable <= 0;                //Disable the Barrel Shifter.
                data_enable <= 0;                   //Disable the Data RAM.
                reg_sel_d1 <= code_bus[11:7];       //Selects Register D1.
                load <= 0;                          //Not a Load Instruction.
                store <= 0;                         //Not a Store Instruction.
                source_sel_dest <= 2;               //PC is the Result Source.
                normal_op <= 0;                     //Branch Instruction
                pc_operation_sel <= 0;              //Selects JAL in the PC.
            end
            7'b1100111: //Control Jump & Link Register
            begin
                alu_enable <= 0;                    //Disable the ALU
                shifter_enable <= 0;                //Disable the Barrel Shifter.
                data_enable <= 0;                   //Disable the Data RAM.
                reg_sel_s1 <= code_bus[19:15];      //Selects Register S1
                reg_sel_d1 <= code_bus[11:7];       //Selects Register D1.
                load <= 0;                          //Not a Load Instruction.
                store <= 0;                         //Not a Store Instruction.
                source_sel_dest <= 2;               //PC is the Result Source.
                normal_op <= 0;                     //Branch Instruction
                pc_operation_sel <= 1;              //Selects JALR in the PC.
            end
            7'b0010111: //AUiPC Instruction
            begin
                normal_op <= 1;                     //Not a Branch Instruction
                alu_enable <= 1;                    //Enable the ALU
                shifter_enable <= 0;                //Disable the Barrel Shifter.
                data_enable <= 0;                   //Disable the Data RAM.
                //reg_sel_s1 <= code_bus[19:15];    //No Register S1 needed for U Type.
                //reg_sel_s2 <= code_bus[24:20];    //No Register S2 needed for U Type.
                reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                load <= 0;                          //Not a Load Instruction.
                store <= 0;                         //Not a Store Instruction.
                source_sel_dest <= 0;               //ALU is the Result Source               
                alu_operation_sel <= 15;            //Select AUiPC Operation in ALU.
            end
            7'b0110111: //LUi Instruction
            begin
                normal_op <= 1;                     //Not a Branch Instruction
                alu_enable <= 1;                    //Enable the ALU
                shifter_enable <= 0;                //Disable the Barrel Shifter.
                data_enable <= 0;                   //Disable the Data RAM.
                //reg_sel_s1 <= code_bus[19:15];    //No Register S1 needed for U Type.
                //reg_sel_s2 <= code_bus[24:20];    //No Register S2 needed for U Type.
                reg_sel_d1 <= code_bus[11:7];       //Selects Register D1
                load <= 0;                          //Not a Load Instruction.
                store <= 0;                         //Not a Store Instruction.
                source_sel_dest <= 0;               //ALU is the Result Source               
                alu_operation_sel <= 14;            //Select LUi Operation in ALU.
            end
            7'b1110011: //Ebreak & Ecall, Not Implemented.
            begin
                case(code_bus[20])  //Checks if Immediate Field is 0 or 1. Bit 20 of the I Type instruction format.
                0:  //Environment Break Instruction. Asks the Debugger to do something.
                begin
                    //Padding unimplemented instructions with NOPs Addi x0 x0 0.
                    normal_op <= 1;                     //Not a Branch Instruction
                    alu_enable <= 1;                    //Enable the ALU
                    shifter_enable <= 0;                //Disable the Barrel Shifter.
                    data_enable <= 0;                   //Disable the Data RAM.
                    reg_sel_s1 <= 0;                    //Zero Register is selected as Register S1
                    //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                    reg_sel_d1 <= 0;                    //Zero Register is selected as Register D1 
                    load <= 0;                          //Not a Load Instruction.
                    store <= 0;                         //Not a Store Instruction.
                    source_sel_dest <= 0;               //ALU is the Result Source               
                    alu_operation_sel <= 7;             //Select ADDi Operation in ALU.
                end
                1:  //Environment Call Instruction. Asks the OS to do something.
                begin
                    //Padding unimplemented instructions with NOPs Addi x0 x0 0.
                    normal_op <= 1;                     //Not a Branch Instruction
                    alu_enable <= 1;                    //Enable the ALU
                    shifter_enable <= 0;                //Disable the Barrel Shifter.
                    data_enable <= 0;                   //Disable the Data RAM.
                    reg_sel_s1 <= 0;                    //Zero Register is selected as Register S1
                    //reg_sel_s2 <= code_bus[24:20];    //No Register S2 for Immediates.
                    reg_sel_d1 <= 0;                    //Zero Register is selected as Register D1 
                    load <= 0;                          //Not a Load Instruction.
                    store <= 0;                         //Not a Store Instruction.
                    source_sel_dest <= 0;               //ALU is the Result Source               
                    alu_operation_sel <= 7;             //Select ADDi Operation in ALU.
                end
                endcase
            end
            endcase
        end
end

assign rb_ctrl = {reg_sel_s1, reg_sel_s2, reg_sel_d1, load, store, source_sel_dest};
assign pc_ctrl = {pc_enable, pc_operation_sel, normal_op};
assign alu_ctrl = {alu_enable, alu_operation_sel};
assign bshift_ctrl = {shifter_enable, shifter_logical, shifter_direction, shifter_immediate};
assign data_ctrl = {data_enable, data_read};
 
endmodule
