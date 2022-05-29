`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:41:23 05/05/2022 
// Design Name: 
// Module Name:    Registers 
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
module Registers(clk,rst,Enable_Register_Write,Source_Read_1,
					  Source_Read_2,Destination_Write,
					  Write_Value,Read_Value_1,Read_Value_2
					  );
 input clk, rst, Enable_Register_Write;
  input [4:0] Source_Read_1, Source_Read_2, Destination_Write;
  input [31:0] Write_Value;
  output [31:0] Read_Value_1, Read_Value_2;

  reg [31:0] Internal_Registers [31:0];
  integer i;

  always @ (negedge clk) begin
    if (rst) begin
      for (i = 0; i < 32; i = i + 1)
        Internal_Registers[i] <= 0;
	    end

    else if (Enable_Register_Write) Internal_Registers[Destination_Write] <= Write_Value;
    //Nije mi jasna sljedeća linija
	 //Internal_Registers[0] <= 0;
  end

  assign Read_Value_1 = (Internal_Registers[Source_Read_1]);
  assign Read_Value_2 = (Internal_Registers[Source_Read_2]);

endmodule
