`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:44:53 06/01/2022 
// Design Name: 
// Module Name:    Pipeline_Processor 
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
module Pipeline_Processor(input CLOCK_50, input start, input rst, input forward_EN, input Enable_Data_Output, input UART_RxD, input Enable_Instruction_Input, output UART_TxD
    );

	wire clock = CLOCK_50;
	wire [31:0] PC_IF, PC_ID, PC_EXE, PC_MEM;
	wire [31:0] inst_IF, inst_ID;
	wire [31:0] reg1_ID, reg2_ID, ST_value_EXE, ST_value_EXE2MEM, ST_value_MEM;
	wire [31:0] val1_ID, val1_EXE;
	wire [31:0] val2_ID, val2_EXE;
	wire [31:0] ALURes_EXE, ALURes_MEM, ALURes_WB;
	wire [31:0] dataMem_out_MEM, dataMem_out_WB;
	wire [31:0] WB_result;
	wire [4:0] dest_EXE, dest_MEM, dest_WB; // dest_ID = instruction[25:21] thus nothing declared
	wire [4:0] src1_ID, src2_regFile_ID, src2_forw_ID, src2_forw_EXE, src1_forw_EXE;
	wire [3:0] EXE_CMD_ID, EXE_CMD_EXE;
	wire [1:0] val1_sel, val2_sel, ST_val_sel;
	wire [1:0] branch_comm;
	wire Br_Taken_ID, IF_Flush, Br_Taken_EXE;
	wire MEM_R_EN_ID, MEM_R_EN_EXE, MEM_R_EN_MEM, MEM_R_EN_WB;
	wire MEM_W_EN_ID, MEM_W_EN_EXE, MEM_W_EN_MEM;
	wire WB_EN_ID, WB_EN_EXE, WB_EN_MEM, WB_EN_WB;
	wire hazard_detected, is_imm, ST_or_BNE;
	
	Registers Reg (.clk(clock),.rst(rst),.Enable_Register_Write(WB_EN_WB),.Source_Read_1(src1_ID),.Source_Read_2(src2_regFile_ID),.Destination_Write(dest_WB),.Write_Value(WB_result),.Read_Value_1(reg1_ID),.Read_Value_2(reg2_ID));
	
	Hazard_Detection_Unit Hazard (.forward_EN(forward_EN),.is_imm(is_imm),.ST_or_BNE(ST_or_BNE),.src1_ID(src1_ID),.src2_ID(src2_regFile_ID),.dest_EXE(dest_EXE),.dest_MEM(dest_MEM),.WB_EN_EXE(WB_EN_EXE),.WB_EN_MEM(WB_EN_MEM),.MEM_R_EN_EXE(MEM_R_EN_EXE),.branch_comm(branch_comm),.hazard_detected(hazard_detected));
	
	Forwarding_Unit Forw (.src1_EXE(src1_forw_EXE),.src2_EXE(src2_forw_EXE),.ST_src_EXE(dest_EXE),.dest_MEM(dest_MEM),.dest_WB(dest_WB),.WB_EN_MEM(WB_EN_MEM),.WB_EN_WB(WB_EN_WB),.val1_sel(val1_sel),.val2_sel(val2_sel),.ST_val_sel(ST_val_sel));
	
	IF_Stage If_Stage (.start(start),.clk(clock),.rst(rst),.brTaken(Br_Taken_ID),.brOffset(val2_ID),.PC(PC_IF),.freeze(hazard_detected),.Instruction(inst_IF),.UART_in(UART_RxD),.Enable_UART(Enable_Instruction_Input));
	
	ID_Stage Id_Stage (.start(start),.clk(clock),.rst(rst),.hazard_detected_in(hazard_detected),.instruction(inst_ID),.reg1(reg1_ID),.reg2(reg2_ID),.src1(src1_ID),.src2_reg_file(src2_regFile_ID),.src2_forw(src2_forw_ID),.val1(val1_ID),.val2(val2_ID),.brTaken(Br_Taken_ID),.EXE_CMD(EXE_CMD_ID),.MEM_R_EN(MEM_R_EN_ID),.MEM_W_EN(MEM_W_EN_ID),.WB_EN(WB_EN_ID),.is_imm_out(is_imm),.ST_or_BNE_out(ST_or_BNE),.branch_comm(branch_comm));
	
	EXE_Stage Exe_Stage(.clk(clock),.EXE_CMD(EXE_CMD_EXE),.val1_sel(val1_sel),.val2_sel(val2_sel),.ST_val_sel(ST_val_sel),.val1(val1_EXE),.val2(val2_EXE),.ALU_res_MEM(ALURes_MEM),.result_WB(WB_result),.ST_value_in(ST_value_EXE),.ALUResult(ALURes_EXE),.ST_value_out(ST_value_EXE2MEM));
	
	MEM_Stage Mem_Stage (.clk(clock),.rst(rst),.MEM_R_EN(MEM_R_EN_MEM),.MEM_W_EN(MEM_W_EN_MEM),.ALU_res(ALURes_MEM),.ST_value(ST_value_MEM),.dataMem_out(dataMem_out_MEM),.UART_Data(UART_TxD), .UART_Enable(Enable_Data_Output));
	
	WB_Stage Wb_Stage(.MEM_R_EN(MEM_R_EN_WB),.memData(dataMem_out_WB),.aluRes(ALURes_WB),.WB_res(WB_result));
	
	IF2ID If_2_Id (.clk(clock),.rst(rst),.flush(IF_Flush),.freeze(hazard_detected),.PCIn(PC_IF),.instructionIn(inst_IF),.PC(PC_ID),.instruction(inst_ID));
	
	ID2EXE Id_2_Exe(.clk(clock),.rst(rst),.destIn(inst_ID[25:21]),.src1_in(src1_ID),.src2_in(src2_forw_ID),.reg2In(reg2_ID),.val1In(val1_ID),.val2In(val2_ID),.PCIn(PC_ID),.EXE_CMD_IN(EXE_CMD_ID),.MEM_R_EN_IN(MEM_R_EN_ID),.MEM_W_EN_IN(MEM_W_EN_ID),.WB_EN_IN(WB_EN_ID),.brTaken_in(Br_Taken_ID),.src1_out(src1_forw_EXE),.src2_out(src2_forw_EXE),.dest(dest_EXE),.ST_value(ST_value_EXE),.val1(val1_EXE),.val2(val2_EXE),.PC(PC_EXE),.EXE_CMD(EXE_CMD_EXE),.MEM_R_EN(MEM_R_EN_EXE),.MEM_W_EN(MEM_W_EN_EXE),.WB_EN(WB_EN_EXE),.brTaken_out(Br_Taken_EXE));
	
	EXE2MEM Exe_2_Mem(.clk(clock),.rst(rst),.WB_EN_IN(WB_EN_EXE),.MEM_R_EN_IN(MEM_R_EN_EXE),.MEM_W_EN_IN(MEM_W_EN_EXE),.PCIn(PC_EXE),.ALUResIn(ALURes_EXE),.STValIn(ST_value_EXE2MEM),.destIn(dest_EXE),.WB_EN(WB_EN_MEM),.MEM_R_EN(MEM_R_EN_MEM),.MEM_W_EN(MEM_W_EN_MEM),.PC(PC_MEM),.ALURes(ALURes_MEM),.STVal(ST_value_MEM),.dest(dest_MEM));
	
	MEM2WB Mem_2_Wb (.clk(clock),.rst(rst),.WB_EN_IN(WB_EN_MEM),.MEM_R_EN_IN(MEM_R_EN_MEM),.ALUResIn(ALURes_MEM),.memReadValIn(dataMem_out_MEM),.destIn(dest_MEM),.WB_EN(WB_EN_WB),.MEM_R_EN(MEM_R_EN_WB),.ALURes(ALURes_WB),.memReadVal(dataMem_out_WB),.dest(dest_WB));
	
	assign IF_Flush = Br_Taken_ID;
	endmodule
