`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:28:36 06/01/2022 
// Design Name: 
// Module Name:    EXE_Stage 
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
module EXE_Stage(clk, EXE_CMD, val1_sel, val2_sel, ST_val_sel, val1, val2, ALU_res_MEM, result_WB, ST_value_in, ALUResult, ST_value_out
    );
	 input clk;
	input [1:0] val1_sel, val2_sel, ST_val_sel;
   input [3:0] EXE_CMD;
   input [31:0] val1, val2, ALU_res_MEM, result_WB, ST_value_in;
   output [31:0] ALUResult, ST_value_out;

   wire [31:0] ALU_val1, ALU_val2;
	
	mux_3in mux5 (.in1(val1),.in2(ALU_res_MEM),.in3(result_WB),.sel(val1_sel),.out(ALU_val1));
	
	mux_3in mux6 (.in1(val2),.in2(ALU_res_MEM),.in3(result_WB),.sel(val2_sel),.out(ALU_val2));
	
	mux_3in mux7 (.in1(ST_value_in),.in2(ALU_res_MEM),.in3(result_WB),.sel(ST_val_sel),.out(ST_value_out));
	
	ALU Arith_Log_Unit (.val1(ALU_val1),.val2(ALU_val2),.EXE_CMD(EXE_CMD),.aluOut(ALUResult));

endmodule
