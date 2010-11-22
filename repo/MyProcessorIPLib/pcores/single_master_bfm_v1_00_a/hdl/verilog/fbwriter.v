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
    fifo_data,
    fifo_empty,
    fifo_rd_en,
    
    PLB_clk,
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


parameter TMP_LEN                        = 7;
parameter RAST_FBW_FIFO_LEN              = 64;
parameter LINE_LEN                       = 9;
parameter COL_LEN                        = 10;

// PLB Parameters
parameter C_MST_AWIDTH                   = 32;
parameter C_MST_DWIDTH                   = 32;


// FIFO interface
input      [0 : RAST_FBW_FIFO_LEN-1]      fifo_data;
input                                     fifo_empty;
output                                    fifo_rd_en;

// PLB interface
input                                     PLB_clk;
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




  reg      [0 : 3]                        state;

  // reader registers
  reg                                     go_write;
  
  // writer registers
  reg      [0 : LINE_LEN-1]               line  = 'b0;
  reg      [0 : COL_LEN-1]                col   = 'b0;
  reg      [0 : 31]                       color = 'hffff_ffff;
  reg                                     mst_wr_req;

  

  // assign IPIF input wires
  assign IP2Bus_MstRd_Req                    = 0;
  assign IP2Bus_MstWr_Req                    = mst_wr_req;
  assign IP2Bus_Mst_Addr[0 : 10]             = 11'b1001_0000_000;
  assign IP2Bus_Mst_Addr[11:19]              = line;
  assign IP2Bus_Mst_Addr[20:29]              = col;
  assign IP2Bus_Mst_Addr[30:31]              = 'b0;
  
  assign IP2Bus_Mst_BE[0 : C_MST_DWIDTH/8-1] = ~('b0);
  assign IP2Bus_Mst_Lock                     = 0;
//  assign IP2Bus_Mst_Reset                    = mst_reset;
  assign IP2Bus_MstWr_d[0 : C_MST_DWIDTH-1]  = color;
  
  
  // writer state machine
parameter OFF_STATE=0, PRESENT_STATE=1, WAIT_FOR_ACK=2, WAIT_FOR_CMPLT=3, ERROR_RECVD=4;

  always @ (posedge PLB_clk)
    begin
      case (state)
        OFF_STATE:
          if ( Bus2IP_Mst_Error )
            state     <= ERROR_RECVD;
          else if ( !fifo_empty )
            state     <= PRESENT_STATE;
          else
            state     <= OFF_STATE;
                    
        PRESENT_STATE: // data to ipif
          if ( Bus2IP_Mst_Error )
            state     <= ERROR_RECVD;
          else
            state     <= WAIT_FOR_ACK;
             
        WAIT_FOR_ACK:
          if ( Bus2IP_Mst_Error )
            state     <= ERROR_RECVD;
          else if ( Bus2IP_Mst_CmdAck && Bus2IP_Mst_Cmplt )
            state     <= OFF_STATE;
          else if ( Bus2IP_Mst_CmdAck )
            state     <= WAIT_FOR_CMPLT;
          else
            state     <= WAIT_FOR_ACK;
            
        WAIT_FOR_CMPLT:
          if ( Bus2IP_Mst_Error )
            state     <= ERROR_RECVD;
          else if ( Bus2IP_Mst_CmdAck )
            state     <= OFF_STATE;
          else
            state     <= WAIT_FOR_CMPLT;
        
        ERROR_RECVD:
          if ( Bus2IP_Mst_Error )
            state     <= ERROR_RECVD;
          else
            state     <= OFF_STATE;
            
      endcase
    end
  
  // request signal
  always @ *
    if ( state == PRESENT_STATE  || state == WAIT_FOR_ACK )
      mst_wr_req = 1;
    else
      mst_wr_req = 0;  
  
  // dequeue from fifo on trasition from IDLE to WRITE
  assign fifo_rd_en = ( state == OFF_STATE && !fifo_empty );

  // reset on error
  assign IP2Bus_Mst_Reset = ( state == ERROR_RECVD );
  
  // assign line and col and color regs
  always @ (posedge PLB_clk)
    begin
      if ( fifo_rd_en && !fifo_empty )
        // fifo_data is valid
        line  <= fifo_data;
        col   <= fifo_data;
        color <= fifo_data;
    end
endmodule
