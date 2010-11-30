//----------------------------------------------------------------------------
// user_logic.vhd - module
//----------------------------------------------------------------------------
//
// ***************************************************************************
// ** Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.            **
// **                                                                       **
// ** Xilinx, Inc.                                                          **
// ** XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"         **
// ** AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND       **
// ** SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,        **
// ** OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,        **
// ** APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION           **
// ** THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,     **
// ** AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE      **
// ** FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY              **
// ** WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE               **
// ** IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR        **
// ** REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF       **
// ** INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS       **
// ** FOR A PARTICULAR PURPOSE.                                             **
// **                                                                       **
// ***************************************************************************
//
//----------------------------------------------------------------------------
// Filename:          user_logic.vhd
// Version:           1.00.a
// Description:       User logic module.
// Date:              Tue Nov 23 22:58:52 2010 (by Create and Import Peripheral Wizard)
// Verilog Standard:  Verilog-2001
//----------------------------------------------------------------------------
// Naming Conventions:
//   active low signals:                    "*_n"
//   clock signals:                         "clk", "clk_div#", "clk_#x"
//   reset signals:                         "rst", "rst_n"
//   generics:                              "C_*"
//   user defined types:                    "*_TYPE"
//   state machine next state:              "*_ns"
//   state machine current state:           "*_cs"
//   combinatorial signals:                 "*_com"
//   pipelined or register delay signals:   "*_d#"
//   counter signals:                       "*cnt*"
//   clock enable signals:                  "*_ce"
//   internal version of output port:       "*_i"
//   device pins:                           "*_pin"
//   ports:                                 "- Names begin with Uppercase"
//   processes:                             "*_PROCESS"
//   component instantiations:              "<ENTITY_>I_<#|FUNC>"
//----------------------------------------------------------------------------

module user_logic
(
  // -- ADD USER PORTS BELOW THIS LINE ---------------
  clk1,
  clk2,
  
  
  bram_a_clk,
  bram_a_en,
  bram_a_write_en,
  bram_a_rst, 
  bram_a_addr,
  bram_a_din,
  bram_a_dout,
  // -- ADD USER PORTS ABOVE THIS LINE ---------------

  // -- DO NOT EDIT BELOW THIS LINE ------------------
  // -- Bus protocol ports, do not add to or delete 
  Bus2IP_Clk,                     // Bus to IP clock
  Bus2IP_Reset,                   // Bus to IP reset
  Bus2IP_Data,                    // Bus to IP data bus
  Bus2IP_BE,                      // Bus to IP byte enables
  Bus2IP_RdCE,                    // Bus to IP read chip enable
  Bus2IP_WrCE,                    // Bus to IP write chip enable
  IP2Bus_Data,                    // IP to Bus data bus
  IP2Bus_RdAck,                   // IP to Bus read transfer acknowledgement
  IP2Bus_WrAck,                   // IP to Bus write transfer acknowledgement
  IP2Bus_Error,                   // IP to Bus error response
  IP2Bus_MstRd_Req,               // IP to Bus master read request
  IP2Bus_MstWr_Req,               // IP to Bus master write request
  IP2Bus_Mst_Addr,                // IP to Bus master address bus
  IP2Bus_Mst_BE,                  // IP to Bus master byte enables
  IP2Bus_Mst_Lock,                // IP to Bus master lock
  IP2Bus_Mst_Reset,               // IP to Bus master reset
  Bus2IP_Mst_CmdAck,              // Bus to IP master command acknowledgement
  Bus2IP_Mst_Cmplt,               // Bus to IP master transfer completion
  Bus2IP_Mst_Error,               // Bus to IP master error response
  Bus2IP_Mst_Rearbitrate,         // Bus to IP master re-arbitrate
  Bus2IP_Mst_Cmd_Timeout,         // Bus to IP master command timeout
  Bus2IP_MstRd_d,                 // Bus to IP master read data bus
  Bus2IP_MstRd_src_rdy_n,         // Bus to IP master read source ready
  IP2Bus_MstWr_d,                 // IP to Bus master write data bus
  Bus2IP_MstWr_dst_rdy_n          // Bus to IP master write destination ready
  // -- DO NOT EDIT ABOVE THIS LINE ------------------
); // user_logic

// -- ADD USER PARAMETERS BELOW THIS LINE ------------

parameter RAST_FBW_FIFO_LEN              = 96;
parameter TMP_LEN                        = 9;

// -- ADD USER PARAMETERS ABOVE THIS LINE ------------

// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol parameters, do not add to or delete
parameter C_SLV_DWIDTH                   = 32;
parameter C_MST_AWIDTH                   = 32;
parameter C_MST_DWIDTH                   = 32;
parameter C_NUM_REG                      = 4;
// -- DO NOT EDIT ABOVE THIS LINE --------------------

// -- ADD USER PORTS BELOW THIS LINE -----------------
    input           clk1;                           // coordinate transform clk
    input           clk2;                           // raster clk
	 
    /* BRAM Control Signals from PLB (Port A) */
    input           bram_a_clk;                     // bram clk
    input           bram_a_en;                      // bram enable
    input  [3:0]    bram_a_write_en;                // bram write enable
    input           bram_a_rst;                     // bram reset
    input  [31:0]   bram_a_addr;                    // bram address port
    output [31:0]   bram_a_din;                     // data from bram
    input  [31:0]   bram_a_dout;                    // data to bram 
   	 
// -- ADD USER PORTS ABOVE THIS LINE -----------------

// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol ports, do not add to or delete
input                                     Bus2IP_Clk;
input                                     Bus2IP_Reset;
input      [0 : C_SLV_DWIDTH-1]           Bus2IP_Data;
input      [0 : C_SLV_DWIDTH/8-1]         Bus2IP_BE;
input      [0 : C_NUM_REG-1]              Bus2IP_RdCE;
input      [0 : C_NUM_REG-1]              Bus2IP_WrCE;
output     [0 : C_SLV_DWIDTH-1]           IP2Bus_Data;
output                                    IP2Bus_RdAck;
output                                    IP2Bus_WrAck;
output                                    IP2Bus_Error;
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
// -- DO NOT EDIT ABOVE THIS LINE --------------------

//----------------------------------------------------------------------------
// Implementation
//----------------------------------------------------------------------------

  // PLB Slave nets
  reg        [0 : C_SLV_DWIDTH-1]           slv_reg0;
  reg        [0 : C_SLV_DWIDTH-1]           slv_reg1;
  wire       [0 : C_NUM_REG-1]              slv_reg_write_sel;
  wire       [0 : C_NUM_REG-1]              slv_reg_read_sel;
  reg        [0 : C_SLV_DWIDTH-1]           slv_ip2bus_data;
  wire                                      slv_read_ack;
  wire                                      slv_write_ack;
  integer                                   byte_index, bit_index;

  wire        [0 : 3]                       state_l;
  wire        [0 : TMP_LEN-1]               tmp;
  
  // RASTERIZER FBW FIFO signals
  wire        [0 : RAST_FBW_FIFO_LEN-1]     pixel_fifo_dout;
  wire                                      pixel_fifo_empty;
  wire                                      pixel_fifo_rd_en;


  gl_core_internal core (.clk1(clk1),
                         .clk2(clk2),
                         .reset( slv_reg0 == 0 ),
						 
                         .bram_a_clk(bram_a_clk),
						 .bram_a_en(bram_a_en), 
						 .bram_a_write_en(bram_a_write_en), 
						 .bram_a_rst(bram_a_rst),
						 .bram_a_addr(bram_a_addr), 
						 .bram_a_din(bram_a_din),
						 .bram_a_dout(bram_a_dout),
						 
	      				 .pixel_fifo_rd_clk(Bus2IP_Clk),
 	      				 .pixel_fifo_dout(pixel_fifo_dout),
	      				 .pixel_fifo_empty(pixel_fifo_empty),
	      				 .pixel_fifo_rd_en(pixel_fifo_rd_en) );



	fbwriter fbw (        
      .reset( slv_reg0 == 0 ),
    
		.fifo_data(pixel_fifo_dout), 
		.fifo_empty(pixel_fifo_empty), 
		.fifo_rd_en(pixel_fifo_rd_en), 
		
		.PLB_clk(Bus2IP_Clk),
		
		.Bus2IP_Reset(Bus2IP_Reset),
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
	
  

  assign tmp[0]     = Bus2IP_Mst_CmdAck;
  assign tmp[1]     = Bus2IP_Mst_Cmplt;
  assign tmp[2]     = Bus2IP_Mst_Error;
  assign tmp[3]     = Bus2IP_Mst_Rearbitrate;
  assign tmp[4]     = Bus2IP_Mst_Cmd_Timeout;
  assign tmp[5]     = Bus2IP_MstRd_src_rdy_n;
  assign tmp[6]     = Bus2IP_MstWr_dst_rdy_n;
  assign tmp[7]     = pixel_fifo_empty;
  assign tmp[8]     = pixel_fifo_rd_en;

  // make process for updating slv_reg1 to be status register
  always @ *
    begin
      slv_reg1              = tmp;
      slv_reg1[12:15]       = state_l;
    end
	 
  // PLB Slave Processes
  assign
    slv_reg_write_sel = Bus2IP_WrCE[0:C_NUM_REG-1],
    slv_reg_read_sel  = Bus2IP_RdCE[0:C_NUM_REG-1],
    slv_write_ack     = Bus2IP_WrCE[0] || Bus2IP_WrCE[1] || Bus2IP_WrCE[2] || Bus2IP_WrCE[3],
    slv_read_ack      = Bus2IP_RdCE[0] || Bus2IP_RdCE[1] || Bus2IP_RdCE[2] || Bus2IP_RdCE[3];

  // implement slave model register(s)
  always @( posedge Bus2IP_Clk )
    begin: SLAVE_REG_WRITE_PROC

      if ( Bus2IP_Reset == 1 )
        begin
          slv_reg0  <= 'h0;
        end
      else
        case ( slv_reg_write_sel )
          4'b1000 : slv_reg0 <= Bus2IP_Data;
            //for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              //if ( Bus2IP_BE[byte_index] == 1 )
                //for ( bit_index = byte_index*8; bit_index <= byte_index*8+7; bit_index = bit_index+1 )
                  //slv_reg0[bit_index] <= Bus2IP_Data[bit_index];
          4'b0010 : ;
          4'b0001 : ;
          default : ;
        endcase

    end // SLAVE_REG_WRITE_PROC	 
  	  
  // implement slave model register read mux
  always @ *
    begin: SLAVE_REG_READ_PROC

      case ( slv_reg_read_sel )
      
        4'b1000 : slv_ip2bus_data <= slv_reg0;
        4'b0100 : slv_ip2bus_data <= slv_reg1;
        
        4'b0010 : slv_ip2bus_data <= IP2Bus_Mst_Addr;
		  4'b0001 : slv_ip2bus_data <= IP2Bus_MstWr_d;
        
        default : slv_ip2bus_data <= 0;
      endcase

    end // SLAVE_REG_READ_PROC

  // ------------------------------------------------------------
  // Example code to drive IP to Bus signals
  // ------------------------------------------------------------

  assign IP2Bus_Data    = slv_ip2bus_data;
  assign IP2Bus_WrAck   = slv_write_ack;
  assign IP2Bus_RdAck   = slv_read_ack;
  assign IP2Bus_Error   = 0;
endmodule
