`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:23:26 05/24/2022
// Design Name:   Baud_Generator
// Module Name:   /home/ise/Virtual_Machine_Shared_Folder/PDS_project_pipeline_processor/Pipeline_processor/Baud_Generator_test.v
// Project Name:  Pipeline_processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Baud_Generator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Baud_Generator_test;

	// Inputs
	reg clk;

	// Outputs
	wire BaudTick;

	// Instantiate the Unit Under Test (UUT)
	test1 uut (
		.clk(clk), 
		.BaudTick(BaudTick)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100 $stop;
        
		// Add stimulus here

	end
   always
		#1 clk=~clk;
endmodule

