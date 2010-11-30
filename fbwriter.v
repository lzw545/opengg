`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:03 11/21/2010 
// Design Name: 
// Module Name:    fbwriter 
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
module fbwriter(
    // For Development
    reset,

    fifo_data,
    fifo_empty,
    fifo_rd_en,
    
    PLB_clk,
	 
	 Bus2IP_Reset,    
    IP2Bus_MstRd_Req,
    IP2Bus_MstWr_Req,
    IP2Bus_Mst_Addr,
    IP2Bus_Mst_BE,
    IP2Bus_Mst_Lock,
    IP2Bus_Mst_Reset,
    Bus2IP_Mst_CmdAck,
    Bus2IP_Mst_Cmplt,
    Bus2IP_Mst_Error,
    Bus2IP_Mst_Rearbitrate,
    Bus2IP_Mst_Cmd_Timeout,
    Bus2IP_MstRd_d,
    Bus2IP_MstRd_src_rdy_n,
    IP2Bus_MstWr_d,
    Bus2IP_MstWr_dst_rdy_n
    );


parameter FB_BASE_ADDR                   = 11'b1001_0000_000;
parameter RAST_FBW_FIFO_LEN              = 96;
parameter LINE_LEN                       = 9;
parameter COL_LEN                        = 10;

// PLB Parameters
parameter C_MST_AWIDTH                   = 32;
parameter C_MST_DWIDTH                   = 32;


// FIFO interface
input      [0 : RAST_FBW_FIFO_LEN-1]      fifo_data;
input                                     fifo_empty;
output reg                                fifo_rd_en = 0;

input                                     reset;

// PLB interface
input                                     PLB_clk;
input                                     Bus2IP_Reset;
output                                    IP2Bus_MstRd_Req;
output                                    IP2Bus_MstWr_Req;
output     [0 : C_MST_AWIDTH-1]           IP2Bus_Mst_Addr;
output     [0 : C_MST_DWIDTH/8-1]         IP2Bus_Mst_BE;
output                                    IP2Bus_Mst_Lock;
output                                    IP2Bus_Mst_Reset;
input                                     Bus2IP_Mst_CmdAck;
input                                     Bus2IP_Mst_Cmplt;
input                                     Bus2IP_Mst_Error;
input                                     Bus2IP_Mst_Rearbitrate;
input                                     Bus2IP_Mst_Cmd_Timeout;
input      [0 : C_MST_DWIDTH-1]           Bus2IP_MstRd_d;
input                                     Bus2IP_MstRd_src_rdy_n;
output     [0 : C_MST_DWIDTH-1]           IP2Bus_MstWr_d;
input                                     Bus2IP_MstWr_dst_rdy_n;


  // writer registers  
  reg     [0 : LINE_LEN-1]               line;
  reg     [0 : COL_LEN-1]                col;
  reg     [0 : 31]                       color;
  reg                                    completed;

  reg                                    wr_req;
  

  // assign IPIF input wires
  assign IP2Bus_MstRd_Req                    = 0;
  assign IP2Bus_MstWr_Req                    = wr_req;
  assign IP2Bus_Mst_Addr[0 : 10]             = FB_BASE_ADDR;
  assign IP2Bus_Mst_Addr[11:19]              = line;
  assign IP2Bus_Mst_Addr[20:29]              = col;
  assign IP2Bus_Mst_Addr[30:31]              = 'b0;
  
  assign IP2Bus_Mst_BE[0 : C_MST_DWIDTH/8-1] = ~('b0);
  assign IP2Bus_Mst_Lock                     = 0;
  assign IP2Bus_MstWr_d[0 : C_MST_DWIDTH-1]  = color;
    
  always @ (posedge PLB_clk)
    begin
	   if ( reset || Bus2IP_Reset ) 
		  completed <= 1;
		else if ( Bus2IP_Mst_Cmplt ) 
		  completed <= 1;
      else if ( completed && IP2Bus_MstWr_Req )
		  completed <= 0;
		else
		  completed <= completed;
	 end
  
  always @ (posedge PLB_clk)
    begin
      if ( reset || Bus2IP_Reset )
        fifo_rd_en <= 0;
		// want to make fifo_rd_en a pulse
      else if ( !fifo_empty && completed && !fifo_rd_en )
        fifo_rd_en <= 1;
      else
        fifo_rd_en <= 0;
	 end

  // HACK!
  reg fifo_rd_en_delayed;
  always @ (posedge PLB_clk)
    fifo_rd_en_delayed <= fifo_rd_en;
  
  // assign line and col and color regs
  always @ (posedge PLB_clk)
    begin
	   if ( reset || Bus2IP_Reset )
		  begin
          line   <= 'h0;
          col    <= 'h0;
          color  <= 'h0;
			 wr_req <= 0;
		  end
	   else if ( fifo_rd_en_delayed )
		  begin
          line   <= fifo_data[15-LINE_LEN+1:15];
          col    <= fifo_data[31-COL_LEN+1:31];
          color  <= fifo_data[32:63];
			 wr_req <= 1;
		  end
		else if ( Bus2IP_Mst_CmdAck )
		  begin
		    wr_req <= 0;
		  end
    end 
 
endmodule
