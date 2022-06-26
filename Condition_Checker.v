`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:48:47 05/07/2022 
// Design Name: 
// Module Name:    Condition_Checker 
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
module Condition_Checker(reg1, reg2, cuBranchComm, brCond
    );
  // reg1 and reg2 are value from source registers that need to be compared
  input [31: 0] reg1, reg2;
  // cuBranchComm is a label for type of branch instruction
  input [1:0] cuBranchComm;
  // BrCond is set to 1 if a branch conditions are met
  output reg brCond;
  initial begin
	 brCond=0;
  end
  always @ ( * ) begin
    case (cuBranchComm)
		 // If a branch instruction is JMP then it's not necessary to exemine branch conditions
       2: brCond <= 1;
		 // If a branch instruction is BEZ (Branch Equal Zero), then it's required to exemine if a value from register 1 is equal to zero
       3: brCond <= (reg1 == 0) ? 1 : 0;
		 // IF a branch instruction is BNE (Branch Not Equal), then it's required to exemine if values from register 1 and register 2 are different
       1: brCond <= (reg1 != reg2) ? 1 : 0;
      default: brCond <= 0;
    endcase
  end

endmodule
