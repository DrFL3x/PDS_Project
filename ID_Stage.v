`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:06:00 06/01/2022 
// Design Name: 
// Module Name:    ID_Stage 
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
module ID_Stage(clk, rst, start, hazard_detected_in, is_imm_out, ST_or_BNE_out, instruction, reg1, reg2, src1, src2_reg_file, src2_forw, val1, val2, brTaken, EXE_CMD, MEM_R_EN, MEM_W_EN, WB_EN, branch_comm
    );
	input clk, rst, hazard_detected_in,start;
   input [31:0] instruction, reg1, reg2;
   output brTaken, MEM_R_EN, MEM_W_EN, WB_EN, is_imm_out, ST_or_BNE_out;
   output [1:0] branch_comm;
   output [3:0] EXE_CMD;
   output [4:0] src1, src2_reg_file, src2_forw;
   output [31:0] val1, val2;
	
	wire CU2and, Cond2and;
   wire [1:0] CU2Cond;
   wire Is_Imm, ST_or_BNE;
   wire [31:0] signExt2Mux;
	
	Control_Unit Controller (.start(start),.opCode(instruction[31:26]),.branchEn(CU2and),.EXE_CMD(EXE_CMD),.Branch_command(CU2Cond),.Is_Imm(Is_Imm),.ST_or_BNE(ST_or_BNE),.WB_EN(WB_EN),.MEM_R_EN(MEM_R_EN),.MEM_W_EN(MEM_W_EN),.hazard_detected(hazard_detected_in));
	
	Mux2_5b mux2 (.in1(instruction[15:11]),.in2(instruction[25:21]),.sel(ST_or_BNE),.out(src2_reg_file));
	
	Mux2_32b mux3 (.in1(reg2),.in2(signExt2Mux),.sel(Is_Imm),.out(val2));
	
	Mux2_5b mux4 ( .in1(instruction[15:11]),.in2(5'd0),.sel(Is_Imm),.out(src2_forw));
	
	Sign_extension_b16 Sign_Ext (.in(instruction[15:0]),.out(signExt2Mux));
	
	Condition_Checker Cond_Check(.reg1(reg1),.reg2(reg2),.cuBranchComm(CU2Cond),.brCond(Cond2and));
	
	assign brTaken = CU2and && Cond2and;
   assign val1 = reg1;
   assign src1 = instruction[20:16];
   assign is_imm_out = Is_Imm;
   assign ST_or_BNE_out = ST_or_BNE;
   assign branch_comm = CU2Cond;
endmodule
