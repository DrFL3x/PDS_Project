`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:35 06/01/2022 
// Design Name: 
// Module Name:    WB_Stage 
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
module WB_Stage(MEM_R_EN, memData, aluRes, WB_res
    );
	input MEM_R_EN;
   input [31:0] memData, aluRes;
   output [31:0] WB_res;

   assign WB_res = (MEM_R_EN) ? memData : aluRes;

endmodule
