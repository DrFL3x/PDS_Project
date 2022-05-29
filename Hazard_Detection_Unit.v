`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:49:07 05/07/2022 
// Design Name: 
// Module Name:    Hazard_Detection_Unit 
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
module Hazard_Detection_Unit(forward_EN, is_imm, ST_or_BNE, src1_ID, src2_ID, dest_EXE, WB_EN_EXE, dest_MEM, WB_EN_MEM,
									  MEM_R_EN_EXE, branch_comm, hazard_detected
    );
  // src1_ID is a source register 1 address
  // src2_ID is a source register 2 address
  input [4:0] src1_ID, src2_ID;
  // dest_EXE is a destination register address for a instruction in EXE Stage
  // dest_MEM is a destination register address for a instruction in MEM stage
  input [4:0] dest_EXE, dest_MEM;
  // Type of branch instruction
  input [1:0] branch_comm;
  // forward_EN is a signal that indicates that a CPU is in a RUN mode
  // WB_EN_EXE is a signal that enables writing resulting value to a destination register for a instruction in EXE Stage
  // WB_EN_MEM is a signal that enables writing resulting value to a destination register for a instruction in MEM Stage
  // MEM_R_EN_EXE is a signal that enables reading from memory for a instruction in EXE Stage
  input forward_EN, WB_EN_EXE, WB_EN_MEM, is_imm, ST_or_BNE, MEM_R_EN_EXE;
  // hazard_detected is an output signal that indicates if a hazard is detected
  output hazard_detected;
  // src2_is_valid indicates that src2_ID is referred to a register address and not immediate
  // exe_has_hazard indicates if a same register is a destination for instruction in EXE Stage and source for instruction in ID Stage
  // mem_has_hazard indicates if a same register is a destination for instruction in MEM Stage and source for instruction in ID Stage
  wire src2_is_valid, exe_has_hazard, mem_has_hazard, hazard, instr_is_branch;

  assign src2_is_valid =  (~is_imm) || ST_or_BNE;
  assign exe_has_hazard = WB_EN_EXE && (src1_ID == dest_EXE || (src2_is_valid && src2_ID == dest_EXE));
  assign mem_has_hazard = WB_EN_MEM && (src1_ID == dest_MEM || (src2_is_valid && src2_ID == dest_MEM));
  // Data hazard occurs if exe_has_hazard or mem_has_hazard is set to 1
  assign hazard = (exe_has_hazard || mem_has_hazard);
  // instr_is_branch indicates if branch is BEZ or BNE
  assign instr_is_branch = (branch_comm == 3) || (branch_comm == 1);

  assign hazard_detected = ~forward_EN ? hazard : (instr_is_branch && hazard) || (MEM_R_EN_EXE && mem_has_hazard);

endmodule
