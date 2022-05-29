// Additional Comments: 
// Memory stage to write back stage registar
//////////////////////////////////////////////////////////////////////////////////




module MEM2WB (clk, rst, WB_EN_IN, MEM_R_EN_IN, ALUResIn, memReadValIn, destIn,

                         WB_EN,    MEM_R_EN,    ALURes,   memReadVal,   dest);

  input clk, rst;

// ulazne vrijednosti MEM2wb registra 
  input WB_EN_IN, MEM_R_EN_IN;

  input [4:0] destIn; // 4bitni 

  input [31:0] ALUResIn, memReadValIn; // 32bitni Alu in
  

// izlazne vrijednosti MEM2wb registra

  output reg WB_EN, MEM_R_EN;

  output reg [4:0] dest;

  output reg [31:0] ALURes, memReadVal;



  always @ (posedge clk) begin

    if (rst) begin

      {WB_EN, MEM_R_EN, dest, ALURes, memReadVal} <= 0; // ako resetiramo , postaviti varijable na nulu, inace proslijediti ulaze registra na izlaze

    end

    else begin

      WB_EN <= WB_EN_IN;

      MEM_R_EN <= MEM_R_EN_IN;

      dest <= destIn;

      ALURes <= ALUResIn;

      memReadVal <= memReadValIn;

    end

  end

endmodule 
