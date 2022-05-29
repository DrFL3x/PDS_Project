`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:05:35 05/06/2022 
// Design Name: 
// Module Name:    Hazard_Detector 
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
odule Hazard_Detector(Source_Register_1,Source_Register_2,
							  Destination_Register_EXE_Stage,Destination_Register_MEM_Stage,
							  Type_Of_Branch,Enabled_Data_Forwarding,Is_Immediate,Store_or_BNE,
							  Enable_Registers_Write_EXE_Stage,Enable_Memory_Write_MEM_Stage,Enable_Memory_Read_Exe_Stage,Hazard_Detected
    );

input [`REG_FILE_ADDR_LEN-1:0] Source_Register_1, Source_Register_2;
  input [`REG_FILE_ADDR_LEN-1:0] Destination_Register_EXE_Stage, Destination_Register_MEM_Stage;
  input [1:0] Type_Of_Branch;
  input Enabled_Data_Forwarding, Enable_Registers_Write_EXE_Stage, Enable_Registers_Write_MEM_Stage, Is_Immediate, Store_or_BNE, Enable_Memory_Read_Exe_Stage;
  output Hazard_Detected;
	
  wire src2_is_valid, exe_has_hazard, mem_has_hazard, hazard, instr_is_branch;
  //src2_is_valid is a wire that checks if src2 is referred to the register (value 1) or it is an immediate (value 0)
  assign src2_is_valid =  (~Is_Immediate) || Store_or_BNE;
  //Execution stage has hazard if instruction in EXE stage writes value to register that is a source register for the instruction in ID stage
  assign exe_has_hazard = Enable_Registers_Write_EXE_Stage && (Source_Register_1 == Destination_Register_EXE_Stage || (Source_Register_2 && src2_ID == Destination_Register_EXE_Stage));
  //Memory stage has hazard if instruction in MEM stage writes value to register that is a source register for the instruction in ID stage
  assign mem_has_hazard = Enable_Registers_Write_MEM_Stage && (Source_Register_1 == Destination_Register_MEM_Stage || (src2_is_valid && Source_Register_2 == Destination_Register_MEM_Stage));

  assign hazard = (exe_has_hazard || mem_has_hazard);
  //Wire is set to 1 if a instruction in ID stage is Brench Equal Zero and Branch Not Equal
  assign instr_is_branch = (branch_comm == `COND_BEZ || branch_comm == `COND_BNE);
  //Hazard occurs if data Forwarding Unit doesn't forward data and there is detected hazard between ID and MEM or ID and EXE
  //Hazard occurs if Forwarding Unit forwards data and there is hazard between ID and MEM or ID and EXE but instruction in ID stage is conditional branching
  //Hazard occurs 
  assign hazard_detected = ~Enabled_Data_Forwarding ? hazard : (instr_is_branch && hazard) || (Enable_Memory_Read_Exe_Stage && mem_has_hazard);
endmodule
