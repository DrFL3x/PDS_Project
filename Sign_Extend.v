// Additional Comments:

module Sign_extension_b16(input [15:0] in, output [31:0]out );

// assign out= (in[15]==1)? {16{1'b1},in}: {16{1'b0},in} ; ??

assign out= (in[15]==1)?{16'b1111111111111111,in}:{16'b0000000000000000,in} ; 

endmodule
