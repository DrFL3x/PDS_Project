`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:23:23 05/26/2022
// Design Name:   test1
// Module Name:   /home/ise/Virtual_Machine_Shared_Folder/PDS_project_pipeline_processor/Pipeline_processor/test1_test.v
// Project Name:  Pipeline_processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test1_test;

	// Inputs
	reg clk;
	reg TxD_start;
	reg [31:0] dataIn;

	// Outputs
	wire dataOver;
	wire dataOut;

	// Instantiate the Unit Under Test (UUT)
	test1 uut (
		.clk(clk), 
		.TxD_start(TxD_start), 
		.dataIn(dataIn), 
		.dataOver(dataOver), 
		.dataOut(dataOut)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		TxD_start = 0;
		dataIn = 32'b10101010000011111100110001010101;
		#2 TxD_start=1;
		#1000
		dataIn = 32'b11111111000000001111111100000000;
		// Wait 100 ns for global reset to finish
		#2000 $stop;
        
		// Add stimulus here

	end
   always begin
		#1 clk=~clk;
	end
endmodule

