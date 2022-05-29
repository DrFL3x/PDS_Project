`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:20:29 05/25/2022
// Design Name:   Instruction_Memory
// Module Name:   /home/ise/Virtual_Machine_Shared_Folder/PDS_project_pipeline_processor/Pipeline_processor/Instruction_Memory_test.v
// Project Name:  Pipeline_processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Instruction_Memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Instruction_Memory_test;

	// Inputs
	reg rst;
	reg [31:0] addr;
	reg write;
	reg [7:0] write_Instruction;
	reg write_Ready;

	// Outputs
	wire [31:0] instruction;

	// Instantiate the Unit Under Test (UUT)
	Instruction_Memory uut (
		.rst(rst),
		.addr(addr), 
		.instruction(instruction), 
		.write(write), 
		.write_Instruction(write_Instruction), 
		.write_Ready(write_Ready)
	);

	initial begin
		// Initialize Inputs
		rst = 0;
		addr = 0;
		write = 0;
		write_Instruction = 0;
		write_Ready = 0;
		#5 write=1;
		write_Instruction=8'b11010011;
		write_Ready=1;
		#2 write_Ready=0;
		#10 write_Ready=1;
		write_Instruction=8'b00110101;

		// Wait 100 ns for global reset to finish
		#100 $stop;
        
		// Add stimulus here

	end
      
endmodule

