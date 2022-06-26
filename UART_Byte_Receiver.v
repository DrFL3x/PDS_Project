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
module UART_Byte_Receiver(RxD,clk,RxD_data_ready,RxD_data,RxD_data_error
    );
	input RxD;
	input clk;
	output reg RxD_data_ready = 0;
	output reg [7:0] RxD_data = 0;
	output reg RxD_data_error=0;
	reg [1:0] RxD_sync;
	reg [1:0] RxD_cnt;
	reg RxD_bit;
	reg [3:0] state;
	reg [2:0] bit_spacing;
	wire Baud8Tick,next_bit;
	
	Baud_Generator baud(.clk(clk),.BaudTick(Baud8Tick));
	initial begin
		RxD_cnt=3;
		state=0;
      bit_spacing=0;
	end
	always@(posedge clk) begin
		if(Baud8Tick) 
			RxD_sync <= {RxD_sync[0], RxD};
	end
	
	always @ (posedge clk) begin
		if(Baud8Tick) begin
			if(RxD_sync[1] && RxD_cnt!=2'b11) 
				RxD_cnt <= RxD_cnt + 1;
		else
			if(~RxD_sync[1] && RxD_cnt!=2'b00) 
				RxD_cnt <= RxD_cnt - 1;

		if(RxD_cnt==2'b00) 
			RxD_bit <= 0;
		else
		if(RxD_cnt==2'b11) 
			RxD_bit <= 1;
		end
	end
	
	always @ (posedge clk) begin
		if(Baud8Tick) begin
			case(state)
				4'b0000: if(~RxD_bit) state <= 4'b1000; // start bit found?
				4'b1000: if(next_bit) state <= 4'b1001; // bit 0
				4'b1001: if(next_bit) state <= 4'b1010; // bit 1
				4'b1010: if(next_bit) state <= 4'b1011; // bit 2
				4'b1011: if(next_bit) state <= 4'b1100; // bit 3
				4'b1100: if(next_bit) state <= 4'b1101; // bit 4
				4'b1101: if(next_bit) state <= 4'b1110; // bit 5
				4'b1110: if(next_bit) state <= 4'b1111; // bit 6
				4'b1111: if(next_bit) state <= 4'b0001; // bit 7
				4'b0001: if(next_bit) state <= 4'b0010; // stop bit
				4'b0010: if(next_bit) state <= 4'b0000; // stop2
				default: state <= 4'b0000;
			endcase
		end
	end
	
	always @ (posedge clk) begin
		if(state==0)
		bit_spacing <= 0;
		else begin
			if(Baud8Tick)
				bit_spacing <= bit_spacing + 1;
		end
	end
	assign next_bit = (bit_spacing==7);
	//RxD_bit zamijenjen sa RxD
	always @ (posedge clk) if(Baud8Tick && next_bit && state[3]) RxD_data <= {RxD, RxD_data[7:1]};

	always @ (posedge clk) begin
		RxD_data_ready <= (next_bit && state==4'b0010 && RxD_bit);
		RxD_data_error <= (next_bit && state==4'b0010 && ~RxD_bit);
	end
endmodule
