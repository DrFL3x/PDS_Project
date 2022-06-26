
module IF2ID (clk, rst, flush, freeze, PCIn, instructionIn, PC, instruction);
  input clk, rst, flush, freeze;
  input [31:0] PCIn, instructionIn;
  output reg [31:0] PC, instruction;
  initial begin
	PC=0;
	instruction=0;
  end
  always @ (posedge clk) begin  // Pri svakom posedge clk postaviti PC u 0 kad je reset, ako je freeze i flush PCi intruction su 0, 
				//ako je freeze i !flush , postaviti intructionIn te PCin
	if (rst) begin
      PC <= 0;
      instruction <= 0;
    end
    else begin
      if (~freeze) begin
        if (flush) begin
          instruction <= 0;
          PC <= 0;
        end
        else begin
          instruction <= instructionIn;
          PC <= PCIn;
        end
      end
    end
  end
endmodule // IF2ID
