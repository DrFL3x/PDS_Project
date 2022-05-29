module Sign_exstension_b16_test;

	reg [15:0] in;
	wire [31:0] out;

	Sign_extension_b16 uut (
		.in(in),
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in=16'b0000000000000000;
		#100 in= ~in;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end

endmodule
