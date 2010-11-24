`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:55:45 11/23/2010
// Design Name:   fbwriter
// Module Name:   D:/545/opengg/repo/MyProcessorIPLib/pcores/single_master_bfm_v1_00_a/devl/projnav/test.v
// Project Name:  single_master_bfm
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fbwriter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [0:63] fifo_data;
	reg fifo_empty;
	reg PLB_clk;
	reg Bus2IP_Mst_CmdAck;
	reg Bus2IP_Mst_Cmplt;
	reg Bus2IP_Mst_Error;
	reg Bus2IP_Mst_Rearbitrate;
	reg Bus2IP_Mst_Cmd_Timeout;
	reg [0:31] Bus2IP_MstRd_d;
	reg Bus2IP_MstRd_src_rdy_n;
	reg Bus2IP_MstWr_dst_rdy_n;

	// Outputs
	wire fifo_rd_en;
	wire IP2Bus_MstRd_Req;
	wire IP2Bus_MstWr_Req;
	wire [0:31] IP2Bus_Mst_Addr;
	wire [0:3] IP2Bus_Mst_BE;
	wire IP2Bus_Mst_Lock;
	wire IP2Bus_Mst_Reset;
	wire [0:31] IP2Bus_MstWr_d;

	// Instantiate the Unit Under Test (UUT)
	fbwriter uut (
		.fifo_data(fifo_data), 
		.fifo_empty(fifo_empty), 
		.fifo_rd_en(fifo_rd_en), 
		.PLB_clk(PLB_clk), 
		.IP2Bus_MstRd_Req(IP2Bus_MstRd_Req), 
		.IP2Bus_MstWr_Req(IP2Bus_MstWr_Req), 
		.IP2Bus_Mst_Addr(IP2Bus_Mst_Addr), 
		.IP2Bus_Mst_BE(IP2Bus_Mst_BE), 
		.IP2Bus_Mst_Lock(IP2Bus_Mst_Lock), 
		.IP2Bus_Mst_Reset(IP2Bus_Mst_Reset), 
		.Bus2IP_Mst_CmdAck(Bus2IP_Mst_CmdAck), 
		.Bus2IP_Mst_Cmplt(Bus2IP_Mst_Cmplt), 
		.Bus2IP_Mst_Error(Bus2IP_Mst_Error), 
		.Bus2IP_Mst_Rearbitrate(Bus2IP_Mst_Rearbitrate), 
		.Bus2IP_Mst_Cmd_Timeout(Bus2IP_Mst_Cmd_Timeout), 
		.Bus2IP_MstRd_d(Bus2IP_MstRd_d), 
		.Bus2IP_MstRd_src_rdy_n(Bus2IP_MstRd_src_rdy_n), 
		.IP2Bus_MstWr_d(IP2Bus_MstWr_d), 
		.Bus2IP_MstWr_dst_rdy_n(Bus2IP_MstWr_dst_rdy_n)
	);
	
	always #100
	  begin
	    PLB_clk = ~PLB_clk;
	  end
	  

	initial begin
		// Initialize Inputs
		fifo_data = 'h123486;
		fifo_empty = 1;
		PLB_clk = 0;
		Bus2IP_Mst_CmdAck = 0;
		Bus2IP_Mst_Cmplt = 0;
		Bus2IP_Mst_Error = 0;
		Bus2IP_Mst_Rearbitrate = 0;
		Bus2IP_Mst_Cmd_Timeout = 0;
		Bus2IP_MstRd_d = 0;
		Bus2IP_MstRd_src_rdy_n = 0;
		Bus2IP_MstWr_dst_rdy_n = 0;

		// Wait 100 ns for global reset to finish
		#101;
        
		// Add stimulus here
		fifo_empty = 0;
		
		#800;
		Bus2IP_Mst_CmdAck = 1;
		Bus2IP_Mst_Cmplt = 1;
		
		#200;
		
		Bus2IP_Mst_CmdAck = 0;
		Bus2IP_Mst_Cmplt = 0;

	end
      
endmodule

