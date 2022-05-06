//////////////////////////////////////////////////////////////////////////////////
// Engineer: 
// 
// Design Name: 
// Module Name:    Mux2_5b 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
// ID stage,dva muxa kojima sel(Ismm i st_orBNE)
//////////////////////////////////////////////////////////////////////////////////

module Mux2_5b( input [4:0] in1,in2,input sel,output reg [4:0] out); 

//assign out= (sel==0)? in1 : in2 ;
always@(*)
begin 

case(sel)
0:	out=in1 ;
1:	out= in2 ;

endcase

end

endmodule
