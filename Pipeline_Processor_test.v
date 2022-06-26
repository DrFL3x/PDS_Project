`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:29:29 06/01/2022
// Design Name:   Pipeline_Processor
// Module Name:   /home/ise/Virtual_Machine_Shared_Folder/PDS_project_pipeline_processor/Pipeline_processor/Pipeline_Processor_test.v
// Project Name:  Pipeline_processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Pipeline_Processor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Pipeline_Processor_test;

	// Inputs
	reg CLOCK_50;
	reg rst;
	reg start;
	reg forward_EN;
	reg Enable_Data_Output;
	reg RxD;
	reg Enable_Instruction_Input;

	// Outputs
	wire UART_TxD;

	// Instantiate the Unit Under Test (UUT)
	Pipeline_Processor uut (
		.start(start),
		.CLOCK_50(CLOCK_50), 
		.rst(rst), 
		.forward_EN(forward_EN), 
		.Enable_Data_Output(Enable_Data_Output), 
		.UART_RxD(RxD), 
		.Enable_Instruction_Input(Enable_Instruction_Input), 
		.UART_TxD(UART_TxD)
	);

	initial begin
		// Initialize Inputs
		CLOCK_50 = 0;
		rst = 0;
		forward_EN = 1;
		start=0;
		Enable_Data_Output = 0;
		RxD = 0;
		Enable_Instruction_Input = 1;
		#8 RxD=1;
		//1
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		//2
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		//3
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		//4
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		#128 RxD=1;
		//5
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		//6
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		//7
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		//8
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		#128 RxD=1;
		//9
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		//10
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		//11
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		//12
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		#128 RxD=1;
		//13
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		//14
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		//15
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		//16
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		#128 RxD=1;
		//17
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		//18
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		//19
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		//20
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=0;
		#128 RxD=1;
		#128 RxD=1;
		#128 RxD=1;
		#100 Enable_Instruction_Input=0;
		#50 start = 1;
		#200 Enable_Data_Output=1;
		// Wait 100 ns for global reset to finish
		#20000 $stop;
        
		// Add stimulus here

	end
   always 
		#1 CLOCK_50=~CLOCK_50;
endmodule

