`timescale 1ns / 1ps


module Mux2_32b_test;

	// Inputs
	reg [31:0] in1;
	reg [31:0] in2;
	reg sel;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	Mux2_32b uut (
		.in1(in1), 
		.in2(in2), 
		.sel(sel), 
		.out(out)
	);

	initial begin
// Initialize Inputs
		in1 = 5'b 00001;
		in2 = 5'b 00010;
		sel = 0;
// Wait 100 ns for global reset to finish
		#100;
    
	end
		
		always#5 in1=~in1;
		always#5 in2=~in2;
		
		always
		begin
 
		#5 sel=~sel;
		end
		
   
endmodule
