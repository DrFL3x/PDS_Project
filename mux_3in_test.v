module Mux3_in_test;

	// Inputs
	reg [31:0] in1;
	reg [31:0] in2;
	reg [31:0] in3;
	reg [1:0] sel;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	mux_3in uut (
		.in1(in1), 
		.in2(in2), 
		.in3(in3), 
		.sel(sel), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 =700;
		in3 = 128;
		sel = 0;
	

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always# 5 sel=sel+1;
      
endmodule
