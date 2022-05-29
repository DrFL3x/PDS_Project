`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:34:49 05/29/2022
// Design Name:   Condition_Checker
// Module Name:   /home/ise/Virtual_Machine_Shared_Folder/PDS_project_pipeline_processor/Pipeline_processor/Condition_Checker_test.v
// Project Name:  Pipeline_processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Condition_Checker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Condition_Checker_test;

	// Inputs
	reg [31:0] reg1;
	reg [31:0] reg2;
	reg [1:0] cuBranchComm;

	// Outputs
	wire brCond;

	// Instantiate the Unit Under Test (UUT)
	Condition_Checker uut (
		.reg1(reg1), 
		.reg2(reg2), 
		.cuBranchComm(cuBranchComm), 
		.brCond(brCond)
	);

	initial begin
		// Initialize Inputs
		reg1 = 0;
		reg2 = 13;
		cuBranchComm = 0;
		#2 cuBranchComm = 2;
		#2 cuBranchComm = 0;
		#2 reg1 = 1;
		#1 cuBranchComm = 3;
		#2 reg1 = 0;
		#2 cuBranchComm = 1;
		#2reg1 = 13;

		// Wait 100 ns for global reset to finish
		#100 $stop;
        
		// Add stimulus here

	end
      
endmodule

