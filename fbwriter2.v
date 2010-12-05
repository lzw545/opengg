                `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:03 11/21/2010 
// Design Name: 
// Module Name:    fbwriter2
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
module fbwriter2(
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


parameter FB_BASE_ADDR                   = 9'b1001_0000_0;
parameter FB_CNTL_ADDR                   = 32'h40A0_8000;
parameter DMA_CNTL_ADDR                  = 32'hC000_0000;

parameter RAST_FBW_FIFO_LEN              = 96;
parameter LINE_LEN                       = 9;
parameter COL_LEN                        = 10;

parameter FLUSH_COL                      = 'd639;
parameter FLUSH_LINE                     = 'd479;

//parameter FLUSH_COL                      = 'd20;
//parameter FLUSH_LINE                     = 'd10;


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
  reg     [0 : 31]                       z;
  reg                                    completed = 1;
  
  reg     [0 : 31]                       address;
  reg     [0 : 31]                       wr_data;
  reg                                    buffer;
  
  reg                                    rd_req = 0;
  reg                                    wr_req = 0;
  
  reg [0:3] state;
  
  assign draw = (Bus2IP_MstRd_d <= z);

  // assign IPIF input wires
  assign IP2Bus_MstRd_Req                    = rd_req;
  assign IP2Bus_MstWr_Req                    = wr_req;
  
  assign IP2Bus_Mst_Addr = address;
  assign IP2Bus_MstWr_d = wr_data;
  
  assign IP2Bus_Mst_BE[0 : C_MST_DWIDTH/8-1] = ~('b0);
  assign IP2Bus_Mst_Lock                     = 0;
  //assign IP2Bus_MstWr_d[0 : C_MST_DWIDTH-1]  = color;
    
    
parameter DEQUE=0, DVI_REG=1, DMA_SA=2, DMA_DA=3, DMA_LEN=4, READ_ZB=5, WRITE_FB=6, WRITE_ZB=7;  

  always @ (posedge PLB_clk)
    begin
	  if ( reset || Bus2IP_Reset ) 
		  completed <= 1;
		else if ( Bus2IP_Mst_Cmplt ) 
		  completed <= 1;
      else if ( completed && (wr_req || rd_req) )
		  completed <= 0;
		else
		  completed <= completed;
	 end
  
  always @ (posedge PLB_clk)
    begin
      if ( reset || Bus2IP_Reset )
        fifo_rd_en <= 0;
		// want to make fifo_rd_en a pulse
      else if ( !fifo_empty && state == DEQUE && !fifo_rd_en )
        fifo_rd_en <= 1;
      else
        fifo_rd_en <= 0;
	 end

  // HACK!
  reg fifo_rd_en_delayed;
  always @ (posedge PLB_clk)
    fifo_rd_en_delayed <= fifo_rd_en;
    
  always @ (posedge PLB_clk)
    begin
	   if ( reset || Bus2IP_Reset )
		 begin
           buffer   <= 0;
         end    
       else if ( state == DMA_LEN && Bus2IP_Mst_Cmplt )
         begin
           buffer   <= ~buffer;
         end
       else 
         begin
           buffer   <= buffer;
         end         
     end
   
  // next state logic
  always @ (posedge PLB_clk)
    begin
      if ( reset || Bus2IP_Reset ) begin
        state <= 0;
        end
      else if ( state == DEQUE ) begin
        if ( fifo_rd_en_delayed ) begin
          if ( fifo_data == ~('b0) ) begin
            // start flush
            state <= DVI_REG;
            end
          else begin
            // start READ_ZB
            state <= READ_ZB;
            end
          end
        end
      else if ( Bus2IP_Mst_Cmplt ) begin
        case ( state )
          READ_ZB : begin
            if ( draw )
              state <= WRITE_FB;
            else
              state <= DEQUE;
            end
          WRITE_FB : begin
            state <= WRITE_ZB;
            end
          WRITE_ZB : begin
            state <= DEQUE;
            end
          DVI_REG : begin
            state <= DMA_SA;
            end
          DMA_SA : begin
            state <= DMA_DA;
            end
          DMA_DA : begin
            state <= DMA_LEN;
            end
          DMA_LEN : begin
            state <= DEQUE;
            end
          default : state <= ~('b0);
        endcase
      end
    end
    
        
  // address reg logic
  always @ (posedge PLB_clk)
    begin
      if ( reset || Bus2IP_Reset )
        address <= 'b0;
      else 
        case ( state )
          READ_ZB: 
            address <= {FB_BASE_ADDR, buffer, 1'b1, line, col, 2'b0};
          WRITE_FB:
            address <= {FB_BASE_ADDR, buffer, 1'b0, line, col, 2'b0};
          WRITE_ZB:
            address <= {FB_BASE_ADDR, buffer, 1'b1, line, col, 2'b0};
          DVI_REG:
            address <= FB_CNTL_ADDR;
          DMA_SA:
            address <= DMA_CNTL_ADDR + 8;
          DMA_DA:
            address <= DMA_CNTL_ADDR + 12;
          DMA_LEN:
            address <= DMA_CNTL_ADDR + 16;
        endcase
    end
       

  // wr_data logic       
  always @ (posedge PLB_clk)
    begin
      if ( reset || Bus2IP_Reset ) begin
        wr_data <= 'h0; end
      else begin
        case ( state )
          WRITE_FB: begin
            wr_data <= color; end
          WRITE_ZB: begin
            wr_data <= z; end
          DVI_REG: begin
            wr_data <= {FB_BASE_ADDR, ~buffer, 22'b0}; end
          DMA_SA: begin
            wr_data <= {FB_BASE_ADDR + 1, 1'b1, 22'b0}; end
          DMA_DA: begin
            wr_data <= {FB_BASE_ADDR, buffer, 22'b0}; end
          DMA_LEN: begin
            wr_data <= 32'h0040_0000; end
        endcase
        end
    end
    
  always @ (posedge PLB_clk)
    begin
      if ( reset || Bus2IP_Reset )
        begin
          rd_req <= 0;
          wr_req <= 0;
        end
      else if ( Bus2IP_Mst_CmdAck )
        begin
          rd_req <= 0;
          wr_req <= 0;
        end
      else if ( completed ) // or Bus2IP_Mst_Cmplt [not sure...]
        case ( state )
          READ_ZB: begin
            rd_req <= 1;
            wr_req <= 0;
            end
          WRITE_FB: begin
            rd_req <= 0;
            wr_req <= 1;
            end
          WRITE_ZB: begin
            rd_req <= 0;
            wr_req <= 1;
            end
          DVI_REG: begin
            rd_req <= 0;
            wr_req <= 1;
            end
          DMA_SA: begin
            rd_req <= 0;
            wr_req <= 1;
            end
          DMA_DA: begin
            rd_req <= 0;
            wr_req <= 1;
            end
          DMA_LEN: begin
            rd_req <= 0;
            wr_req <= 1;
            end
        endcase
    end
      
  // assign line and col and color regs
  always @ (posedge PLB_clk)
    begin
      if ( reset || Bus2IP_Reset )
        begin
          line   <= 'h0;
          col    <= 'h0;
          color  <= 'h0;
          z      <= 'h0;
        end
      else if ( fifo_rd_en_delayed )
        begin
          line   <= fifo_data[15-LINE_LEN+1:15];
          col    <= fifo_data[31-COL_LEN+1:31];
          color  <= fifo_data[32:63];
          z      <= fifo_data[64:95];
        end
    end 
 
endmodule
