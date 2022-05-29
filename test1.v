`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:28 05/09/2022 
// Design Name: 
// Module Name:    UART_Receiver 
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
module test1(clk, TxD_start, dataIn, dataOver, dataOut
    );
	input clk, TxD_start;
	input [31:0] dataIn;
	output reg dataOver, dataOut;
	wire BaudTick;
	reg [3:0] state;
	reg [31:0] memory;
	reg [2:0] Byte_Counter;
	initial begin
		dataOver=0;
		dataOut=0;
		Byte_Counter=0;
		memory=dataIn;
		state=0;
	end
	
	Baud_Generator baud2 (.clk(clk),.BaudTick(BaudTick));

	always @(posedge clk)
	case(state)
		4'b0000: if(TxD_start) state <= 4'b0100;
		4'b0100: if(BaudTick) state <= 4'b1000; // start
		4'b1000: if(BaudTick) state <= 4'b1001; // bit 0
		4'b1001: if(BaudTick) state <= 4'b1010; // bit 1
		4'b1010: if(BaudTick) state <= 4'b1011; // bit 2
		4'b1011: if(BaudTick) state <= 4'b1100; // bit 3
		4'b1100: if(BaudTick) state <= 4'b1101; // bit 4
		4'b1101: if(BaudTick) state <= 4'b1110; // bit 5
		4'b1110: if(BaudTick) state <= 4'b1111; // bit 6
		4'b1111: if(BaudTick) state <= 4'b0001; // bit 7
		4'b0001: if(BaudTick) state <= 4'b0010; // stop1
		4'b0010: if(BaudTick) state <= 4'b0000; // stop2
		default: if(BaudTick) state <= 4'b0000;
	endcase
	always@(posedge BaudTick) begin
		if(state==4'b0010) begin
			Byte_Counter=Byte_Counter+1;
			memory=memory>>8;
		end
		if(Byte_Counter==4) begin
			Byte_Counter=0;
			dataOver=1;
			memory=dataIn;
		end
		else
			dataOver=0;	
	end
	
	always @(*)
		case(state)
			4: dataOut = 0;
			8: dataOut = memory[0];
			9: dataOut = memory[1];
			10: dataOut = memory[2];
			11: dataOut = memory[3];
			12: dataOut = memory[4];
			13: dataOut = memory[5];
			14: dataOut = memory[6];
			15: dataOut = memory[7];
			1: dataOut = 1;
			2: dataOut = 1;
			default: dataOut = 1;
		endcase
endmodule
