// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PC_register_b32(input clock, reset, wEn, start, input [31:0] PCin, output reg [31:0] PCout);

	initial begin
		PCout=0;
	end
	always@(posedge clock)
	begin
		if(reset==1)
			PCout= 0;
		else if(wEn && start)
			PCout=PCin;
	end
endmodule
