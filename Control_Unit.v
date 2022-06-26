`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:48:29 05/07/2022 
// Design Name: 
// Module Name:    Control_Unit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Control_Unit(opCode, branchEn, EXE_CMD, Branch_command, Is_Imm, ST_or_BNE,
						  WB_EN, MEM_R_EN, MEM_W_EN, hazard_detected, start
    );
  // hazard_detected signals if a hazard is detected
  input hazard_detected, start;
  // opCode is Operation Code of assembler instruction
  input [5:0] opCode;
  // branchEn signals if a instruction is branching and this signal is used to acticate branching
  output reg branchEn;
  // EXE_CMD defines a type of instruction which ALU is supposed to execute
  output reg [3:0] EXE_CMD;
  // Branch_command signifies type of branch
  output reg [1:0] Branch_command;
  // Is_Imm is a signal which signifies if a immediate is present in instruction
  // ST_or_BNE signifies if a instruction is BNE or STORE or LOAD (it is used to proceed value from Rd register to next stage)
  // WB_EN is a signal that enables writing instruction result in a destination register
  // MEM_R_EN is a signal that enables read from memory in MEM Stage
  // MEM_W_EN is a signal that enables write to a memory in MEM stage
  output reg Is_Imm, ST_or_BNE, WB_EN, MEM_R_EN, MEM_W_EN;
  initial begin
	 branchEn=0;
  end
  always @ ( * ) begin
	 // If hazard is not detected then CPU is in normal operating mode
    if ((hazard_detected == 0)/*&&(start == 1)*/) begin
      {branchEn, EXE_CMD, Branch_command, Is_Imm, ST_or_BNE, WB_EN, MEM_R_EN, MEM_W_EN} <= 0;
      case (opCode)
        // operations writing to the register file
        1: begin EXE_CMD <= 0; WB_EN <= 1; end
        3: begin EXE_CMD <= 2; WB_EN <= 1; end
		  5: begin EXE_CMD <= 4; WB_EN <= 1; end
        5:  begin EXE_CMD <= 5;  WB_EN <= 1; end
        7: begin EXE_CMD <= 6; WB_EN <= 1; end
        8: begin EXE_CMD <= 7; WB_EN <= 1; end
        9: begin EXE_CMD <= 8; WB_EN <= 1; end
        10: begin EXE_CMD <= 8; WB_EN <= 1; end
        11: begin EXE_CMD <= 9; WB_EN <= 1; end
        12: begin EXE_CMD <= 10; WB_EN <= 1; end
		   // operations using an immediate value embedded in the instruction
        32: begin EXE_CMD <= 0; WB_EN <= 1; Is_Imm <= 1; end
        33: begin EXE_CMD <= 2; WB_EN <= 1; Is_Imm <= 1; end
         // memory operations
        36: begin EXE_CMD <= 0; WB_EN <= 1; Is_Imm <= 1; ST_or_BNE <= 1; MEM_R_EN <= 1; end
        37: begin EXE_CMD <= 0; Is_Imm <= 1; MEM_W_EN <= 1; ST_or_BNE <= 1; end
         // branch operations
		  40: begin EXE_CMD <= 15; Is_Imm <= 1; Branch_command <= 3; branchEn <= 1; end
        41: begin EXE_CMD <= 15; Is_Imm <= 1; Branch_command <= 1; branchEn <= 1; ST_or_BNE <= 1; end
        42: begin EXE_CMD <= 15; Is_Imm <= 1; Branch_command <= 2; branchEn <= 1; end
        default: {branchEn, EXE_CMD, Branch_command, Is_Imm, ST_or_BNE, WB_EN, MEM_R_EN, MEM_W_EN} <= 0;
      endcase
    end
   else if (hazard_detected ==  1) begin
      // preventing any writes to the register file or the memory
      {EXE_CMD, WB_EN, MEM_W_EN} <= 0;
       end
   end
endmodule
