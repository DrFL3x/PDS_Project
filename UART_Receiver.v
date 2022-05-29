`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:22 05/23/2022 
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
module UART_Receiver(clk,RxD,RxD_word_data,RxD_word_data_ready
    );
	reg [1:0] state;
	output reg [31:0] RxD_word_data;
	output reg RxD_word_data_ready;
	input clk,RxD;
	wire RxD_data_error;
	wire RxD_data_ready = 0;
	wire[7:0] RxD_data = 0;
	UART_Byte_Receiver byte_receiver(.clk(clk),.RxD_data_error(RxD_data_error),.RxD(RxD),.RxD_data_ready(RxD_data_ready),.RxD_data(RxD_data));
	
	initial begin
		RxD_word_data=0;
		state=0;
	end
	/*always @ (posedge RxD_data_ready) begin 
			case(state)
			2'b00: state <= 2'b01;
			2'b01: state <= 2'b10; 
			2'b10: state <= 2'b11; 
			2'b11: state <= 2'b00; 
			default: state <= 2'b00;
		endcase
	end*/
	always @ (posedge RxD_data_ready) begin 
		RxD_word_data={RxD_word_data[23:0],RxD_data};
		if(state==2'b11) 
			RxD_word_data_ready=1;
		else
			RxD_word_data_ready=0;
		if(state==2'b11)
			state=2'b00;
		else
			state=state+1;
	end
endmodule
