module PC_register_b32_test;

	// Inputs
	reg clock;
	reg reset;
	reg wEn;
	reg [31:0] PCin;

	// Outputs
	wire [31:0] PCout;

	// Instantiate the Unit Under Test (UUT)
	PC_register_b32 uut (
		.clock(clock), 
		.reset(reset), 
		.wEn(wEn), 
		.PCin(PCin), 
		.PCout(PCout) 
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 0;
		wEn = 0;
		PCin = 0;
		
		
		#10 reset=1 ;
		#10 reset=0 ; 
		#10 wEn= 1 ;
		#0 PCin= 2; 
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #5 wEn=~wEn;
	always #5 reset=~reset;
	always #5 PCin=~PCin;
	
	always
	#5 clock=~clock ;
      
endmodule 
