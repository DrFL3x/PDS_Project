`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:35:08 06/01/2022 
// Design Name: 
// Module Name:    MEM_Stage 
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
module MEM_Stage(clk, rst, MEM_R_EN, MEM_W_EN, ALU_res, ST_value, dataMem_out, UART_Data, UART_Enable
    );
	input clk, rst, MEM_R_EN, MEM_W_EN,UART_Enable;
   input [31:0] ALU_res, ST_value;
   output [31:0]  dataMem_out;
	output UART_Data;

	Data_Memory Data_Mem (.clk(clk),.rst(rst),.writeEn(MEM_W_EN),.readEn(MEM_R_EN),.address(ALU_res),.dataIn(ST_value),.dataOut(dataMem_out),.dataUart(UART_Data),.enableUart(UART_Enable));
	
endmodule
