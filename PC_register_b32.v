// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PC_register_b32(input clock, reset, wEn, input [31:0] PCin, output reg [31:0] PCout);

always@(posedge clock)
begin
	if(reset==1)
		PCout= 0;
	else if(wEn)
		PCout=PCin;
end
endmodule
