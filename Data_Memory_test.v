`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:01:32 05/26/2022
// Design Name:   Data_Memory
// Module Name:   /home/ise/Virtual_Machine_Shared_Folder/PDS_project_pipeline_processor/Pipeline_processor/Data_Memory_test.v
// Project Name:  Pipeline_processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Data_Memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Data_Memory_test;

	// Inputs
	reg clk;
	reg rst;
	reg writeEn;
	reg readEn;
	reg [31:0] address;
	reg [31:0] dataIn;
	reg enableUart;

	// Outputs
	wire [31:0] dataOut;
	wire dataUart;

	// Instantiate the Unit Under Test (UUT)
	Data_Memory uut (
		.clk(clk), 
		.rst(rst), 
		.writeEn(writeEn), 
		.readEn(readEn), 
		.address(address), 
		.dataIn(dataIn), 
		.dataOut(dataOut), 
		.dataUart(dataUart), 
		.enableUart(enableUart)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		writeEn = 0;
		readEn = 0;
		address = 0;
		dataIn = 0;
		enableUart = 0;
		#1 dataIn=32'b10101010111100000000111110101010;
		address=2;
		#1 writeEn=1;
		#2 writeEn=0;
		#1 dataIn=32'b10101110111100000011100110101000;
		address=1;
		#1 writeEn=1;
		#2 writeEn=0;
		#1 dataIn=1;
		address=0;
		#1 writeEn=1;
		#2 writeEn=0;
		#1 enableUart=1;
		#100 readEn=1;
		// Wait 100 ns for global reset to finish
		#1000 $stop;
        
		// Add stimulus here

	end
      always begin
			#1 clk=~clk;
		end
endmodule

