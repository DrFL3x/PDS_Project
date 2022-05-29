`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:03:22 05/07/2022 
// Design Name: 
// Module Name:    Baud_Generator 
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
module Baud_Generator(clk,BaudTick 
    );
	input clk;
	output BaudTick;
	// FPGA clk frequency
	parameter ClkFrequency = 1000_000; // 25MHz
	// Baud rate for UART
	parameter Baud = 125_000;
	parameter BaudGeneratorAccWidth = 16;
	// BAUDGeneratorInc is increment for algorithm which produces baud rate clk from FPGA clk
	parameter BaudGeneratorInc = ((Baud<<(BaudGeneratorAccWidth-4))+(ClkFrequency>>5))/(ClkFrequency>>4);
	// BaudGeneratorAcc is a register which accumulates sum of BaudGeneratorInc over time and produces excess every (clk/BaudRate) times
	reg [BaudGeneratorAccWidth:0] BaudGeneratorAcc;
	
	initial begin
		BaudGeneratorAcc=0;
	end
	
	always @(posedge clk)
		BaudGeneratorAcc <= BaudGeneratorAcc[BaudGeneratorAccWidth-1:0] + BaudGeneratorInc;
   // BaudGeneratorAcc MSB is BaudRate clk
	wire BaudTick = BaudGeneratorAcc[BaudGeneratorAccWidth];
endmodule
