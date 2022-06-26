`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:41:28 06/01/2022 
// Design Name: 
// Module Name:    IF_Stage 
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
module IF_Stage(start,clk,rst,brTaken,brOffset,PC,freeze,Instruction,UART_in,Enable_UART
    );
	input Enable_UART, clk, rst, brTaken, UART_in, freeze,start;
	input [31:0] brOffset;
	output [31:0] PC, Instruction;
	wire [31:0] adderIn1, adderOut, brOffserTimes4, UART_Instruction;
	wire UART_Ready;
	Mux2_32b mux1 (.in1(32'd1),.in2(brOffserTimes4),.sel(brTaken),.out(adderIn1));
	
	PC_register_b32 PC_ (.start(start),.clock(clk),.reset(rst),.wEn(~freeze),.PCin(adderOut),.PCout(PC));
	
	PC_Adder Adder (.in1(adderIn1),.in2(PC),.out(adderOut));
	
	Instruction_Memory Inst_Mem(.start(start),.rst(rst),.addr(PC),.instruction(Instruction),.write(Enable_UART),.write_Instruction(UART_Instruction),.write_Ready(UART_Ready));
	
	UART_Receiver Rec (.clk(clk),.RxD(UART_in),.RxD_word_data(UART_Instruction),.RxD_word_data_ready(UART_Ready));
	
	assign brOffserTimes4=brOffset;
endmodule
