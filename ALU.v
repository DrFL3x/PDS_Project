`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:55 05/07/2022 
// Design Name: 
// Module Name:    ALU 
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
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(val1, val2, EXE_CMD, aluOut
    );
  input [31:0] val1, val2;
  input [3:0] EXE_CMD;
  output reg [31:0] aluOut;

  always @ ( * ) begin
    case (EXE_CMD)
	   0: aluOut <= val1 + val2;
      2: aluOut <= val1 - val2;
      4: aluOut <= val1 & val2;
      5: aluOut <= val1 | val2;
      6: aluOut <= ~(val1 | val2);
      7: aluOut <= val1 ^ val2;
      8: aluOut <= val1 << val2;
      8: aluOut <= val1 <<< val2;
      9: aluOut <= val1 >> val2;
      10: aluOut <= val1 >>> val2;
      default: aluOut <= 0;
    endcase
  end

endmodule
