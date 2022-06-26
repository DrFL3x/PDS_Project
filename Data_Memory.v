`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:55 05/07/2022 
// Design Name: 
// Module Name:    Data_Memory 
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
module Data_Memory(clk, rst, writeEn, readEn, address, dataIn, dataOut, dataUart, enableUart
    );
  // readEN enables reading from Data Memory
  // writeEn enables write in Data Memory
  input clk, rst, readEn, writeEn, enableUart;
  // dataIn - data that is supposed to be stored in Data Memory
  // dataOut - data that is supposed to be read from Data Memory
  input [31:0] address, dataIn;
  output [31:0] dataOut;
  output dataUart;
  reg [31:0] UART_Trans_Input;
  reg [9:0] counter;
  
  reg [31:0] a,b,c;
  always@(*) begin
		a=dataMem[0];
		b=dataMem[1];
		c=dataMem[2];
  end
  
  
  integer i;
  wire dataOver;
  UART_Transmitter trans(.clk(clk), .TxD_start(enableUart), .dataIn(UART_Trans_Input), .dataOver(dataOver), .dataOut(dataUart));
  // Internal memory registers
  reg [31:0] dataMem [1023:0];
  // base_address is least significant 10 bits of address
  reg [9:0] base_address;
  
  initial begin
		counter=0;
		for (i = 0; i < 1024; i = i + 1)
        dataMem[i] <= 0;
  end
  
  always@(posedge dataOver) begin
		counter=counter+1;
  end
  
  always@(*)
     UART_Trans_Input = dataMem[counter];
		
  always @ (posedge clk) begin
  if (rst)
		// on rst reset all memory registers to 0
      for (i = 0; i < 1024; i = i + 1)
        dataMem[i] <= 0;
  // On writeEn write value dataIn in memory register on address base_address	 
  else if (writeEn)
        dataMem[base_address] <= dataIn;
  end
  always@(*)
		base_address = address[9:0];
  // If address is greater than 1024, then it is error and output value is 0
  assign dataOut = (address > 1024) ? 0 : dataMem[base_address];
endmodule
