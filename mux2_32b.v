`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  FESB
// Engineer: Flx
// Module Name:    Mux1 
// Additional Comments: 
// IF stage, mux 32bit out 
// ID stage sel (immediate||Reg2)
//////////////////////////////////////////////////////////////////////////////////
module Mux2_32b( input [31:0] in1,in2,input sel,output reg [31:0] out); 
	 
 
//assign out=(sel==0)? in1: in2 ;
always@(*)
begin 

case(sel)
0:	out=in1 ;
1:	out= in2 ;

endcase

end

endmodule
