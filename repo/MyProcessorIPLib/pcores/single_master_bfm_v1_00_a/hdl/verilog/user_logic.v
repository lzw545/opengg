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
// Date:              Thu Nov 04 17:51:16 2010 (by Create and Import Peripheral Wizard)
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
  // --USER ports added here 
  // -- ADD USER PORTS ABOVE THIS LINE ---------------

  // -- DO NOT EDIT BELOW THIS LINE ------------------
  // -- Bus protocol ports, do not add to or delete 
  Bus2IP_Clk,                     // Bus to IP clock
  Bus2IP_Reset,                   // Bus to IP reset
  Bus2IP_Addr,                    // Bus to IP address bus
  Bus2IP_CS,                      // Bus to IP chip select
  Bus2IP_RNW,                     // Bus to IP read/not write
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
parameter TMP_LEN                        = 9;

parameter RAST_FBW_FIFO_LEN              = 64;
parameter FB_BASE_ADDR                   = 11'b1001_0000_000;

parameter LINE_LEN                       = 9;
parameter COL_LEN                        = 10;
// -- ADD USER PARAMETERS ABOVE THIS LINE ------------

// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol parameters, do not add to or delete
parameter C_SLV_DWIDTH                   = 32;
parameter C_MST_AWIDTH                   = 32;
parameter C_MST_DWIDTH                   = 32;
parameter C_NUM_REG                      = 4;
// -- DO NOT EDIT ABOVE THIS LINE --------------------

// -- ADD USER PORTS BELOW THIS LINE -----------------

//output [0 : DEBUG_LEN-1] debug;

// -- ADD USER PORTS ABOVE THIS LINE -----------------

// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol ports, do not add to or delete
input                                     Bus2IP_Clk;
input                                     Bus2IP_Reset;
input      [0 : 31]                       Bus2IP_Addr;
input                                     Bus2IP_CS;
input                                     Bus2IP_RNW;
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

  // --USER nets declarations added here, as needed for user logic

  // --USER logic implementation added here

  // --USER nets declarations added here, as needed for user logic

  // Nets for user logic slave model s/w accessible register example
  reg        [0 : C_SLV_DWIDTH-1]           slv_reg0;
  reg        [0 : C_SLV_DWIDTH-1]           slv_reg1;
  wire       [0 : C_NUM_REG-1]              slv_reg_write_sel;
  wire       [0 : C_NUM_REG-1]              slv_reg_read_sel;
  reg        [0 : C_SLV_DWIDTH-1]           slv_ip2bus_data;
  wire                                      slv_read_ack;
  wire                                      slv_write_ack;
  integer                                   byte_index, bit_index;

  wire        [0 : 3]                       state_l;
  reg                                       mst_wr_req;
  reg                                       to_reset;
  reg                                       mst_reset;
  reg        [0 : C_MST_DWIDTH-1]           mst_data_out;
  wire       [0 : TMP_LEN-1]                tmp;
  
  reg        [0 : 31]                       input_reg;
  reg                                       fifo_empty = 1;
  wire                                      fifo_rd_en;
  
  // writing
  reg        [0 : LINE_LEN-1]               line  = 'b0;
  reg        [0 : COL_LEN-1]                col   = 'b0;
  reg        [0 : 31]                       color = 'hffcc_ffcc;
  
  // assign some inputs to be monitored by slv_reg1
  assign tmp[0]     = Bus2IP_Mst_CmdAck;
  assign tmp[1]     = Bus2IP_Mst_Cmplt;
  assign tmp[2]     = Bus2IP_Mst_Error;
  assign tmp[3]     = Bus2IP_Mst_Rearbitrate;
  assign tmp[4]     = Bus2IP_Mst_Cmd_Timeout;
  assign tmp[5]     = Bus2IP_MstRd_src_rdy_n;
  assign tmp[6]     = Bus2IP_MstWr_dst_rdy_n;
  assign tmp[7]     = fifo_empty;
  assign tmp[8]     = fifo_rd_en;
  
  // --USER logic implementation added here


  // make process for updating slv_reg1 to be status register
  always @ *
    begin
      slv_reg1              = tmp;
      slv_reg1[12:15]       = state_l;
    end
	
	
  always @ *
    begin
	  line = input_reg[15-LINE_LEN+1:15];
	  col  = input_reg[31-COL_LEN+1:31];
	end

	fbwriter fbw (
        .state(state_l),
        
        .reset( slv_reg0 == 0 ),
    
		.fifo_data({7'b0, line, 6'b0, col, color}), 
		.fifo_empty(fifo_empty), 
		.fifo_rd_en(fifo_rd_en), 
		.PLB_clk(Bus2IP_Clk), 
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
	
    

  // PLB SLAVE Interface

  // ------------------------------------------------------
  // Example code to read/write user logic slave model s/w accessible registers
  // 
  // Note:
  // The example code presented here is to show you one way of reading/writing
  // software accessible registers implemented in the user logic slave model.
  // Each bit of the Bus2IP_WrCE/Bus2IP_RdCE signals is configured to correspond
  // to one software accessible register by the top level template. For example,
  // if you have four 32 bit software accessible registers in the user logic,
  // you are basically operating on the following memory mapped registers:
  // 
  //    Bus2IP_WrCE/Bus2IP_RdCE   Memory Mapped Register
  //                     "1000"   C_BASEADDR + 0x0
  //                     "0100"   C_BASEADDR + 0x4
  //                     "0010"   C_BASEADDR + 0x8
  //                     "0001"   C_BASEADDR + 0xC
  // 
  // ------------------------------------------------------

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
          4'b1000 :// slv_reg0 <= Bus2IP_Data;
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                for ( bit_index = byte_index*8; bit_index <= byte_index*8+7; bit_index = bit_index+1 )
                  slv_reg0[bit_index] <= Bus2IP_Data[bit_index];
          4'b0010 :  begin
                       input_reg <= Bus2IP_Data;
                     end
          4'b0001 : color <= Bus2IP_Data;
          default : ;
        endcase

    end // SLAVE_REG_WRITE_PROC
    
  // respond to rd_en
  always @ (posedge Bus2IP_Clk)
    if ( fifo_rd_en && fifo_empty == 0 )
      fifo_empty <= 1;
    else if ( slv_write_ack )
      fifo_empty <= 0;
    else
      fifo_empty <= fifo_empty;
	 
  	  
  // implement slave model register read mux
  //always @( slv_reg_read_sel or slv_reg0 or slv_reg1 )
  always @ *
    begin: SLAVE_REG_READ_PROC

      case ( slv_reg_read_sel )
      
        4'b1000 : slv_ip2bus_data <= slv_reg0;
        4'b0100 : slv_ip2bus_data <= slv_reg1;
        
        4'b0010 : slv_ip2bus_data <= IP2Bus_Mst_Addr;
        //4'b0001 : slv_ip2bus_data <= color;
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
