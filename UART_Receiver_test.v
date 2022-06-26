`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:42:23 05/24/2022
// Design Name:   UART_Receiver
// Module Name:   /home/ise/Virtual_Machine_Shared_Folder/PDS_project_pipeline_processor/Pipeline_processor/UART_Receiver_test.v
// Project Name:  Pipeline_processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UART_Receiver
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module UART_Receiver_test;

	// Outputs
	reg clk,RxD;
	wire [31:0] RxD_word_data;
	wire RxD_word_data_ready;
	// Instantiate the Unit Under Test (UUT)
	UART_Receiver uut (
		.clk(clk),.RxD(RxD),.RxD_word_data_ready(RxD_word_data_ready),.RxD_word_data(RxD_word_data)
	);

	initial begin
		// Initialize Inputs
		clk=0;
		RxD=1;
		
		#8 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;

		// Wait 100 ns for global reset to finish
		#10000 $stop;
        
		// Add stimulus here

	end
   always
		#1 clk=~clk;
endmodule

