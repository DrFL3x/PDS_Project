`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:21:30 05/29/2022
// Design Name:   ALU
// Module Name:   /home/ise/Virtual_Machine_Shared_Folder/PDS_project_pipeline_processor/Pipeline_processor/ALU_test.v
// Project Name:  Pipeline_processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_test;

	// Inputs
	reg [31:0] val1;
	reg [31:0] val2;
	reg [3:0] EXE_CMD;

	// Outputs
	wire [31:0] aluOut;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.val1(val1), 
		.val2(val2), 
		.EXE_CMD(EXE_CMD),
		.aluOut(aluOut)
	);

	initial begin
		// Initialize Inputs
		val1 = 15;
		val2 = 7;
		EXE_CMD = 0;
		#2 EXE_CMD=2;
		#2 EXE_CMD=4;
		#2 EXE_CMD=5;
		#2 EXE_CMD=6;
		#2 EXE_CMD=7;
		#2 EXE_CMD=8;
		#2 EXE_CMD=8;
		#2 EXE_CMD=9;
		#2 EXE_CMD=10;
		#2 EXE_CMD=15;

		// Wait 100 ns for global reset to finish
		#100 $stop;
        
		// Add stimulus here

	end
      
endmodule

