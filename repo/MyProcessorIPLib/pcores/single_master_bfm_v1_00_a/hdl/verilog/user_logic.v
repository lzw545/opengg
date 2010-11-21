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
parameter TMP_LEN                        = 7;

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

/*
input      [0 : LINE_LEN-1]               FBW_line;
input      [0 : COL_LEN-1]                FBW_col;
input      [0 : 31]                       FBW_color;
input                                     FBW_req;
output                                    FBW_ack;
*/

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

  reg        [0 : 2]                        state = 'b0;
  reg        [0 : 31]                       counter = 0;
  reg                                       mst_wr_req;
  reg                                       to_reset;
  reg                                       mst_reset;
  reg        [0 : C_MST_DWIDTH-1]           mst_data_out;
  wire       [0 : TMP_LEN-1]                tmp;
  
  reg        [0 : 31]                       input_reg;
  
  // writing
  reg        [0 : LINE_LEN-1]               line  = 'b0;
  reg        [0 : COL_LEN-1]                col   = 'b0;
  reg        [0 : 31]                       color = 'hffff_ffff;
  
  // assign IPIF input wires
  assign IP2Bus_MstRd_Req                    = 0;
  assign IP2Bus_MstWr_Req                    = mst_wr_req;
  assign IP2Bus_Mst_Addr[0 : 10]             = 11'b1001_0000_000;
  assign IP2Bus_Mst_Addr[11:19]              = line;
  assign IP2Bus_Mst_Addr[20:29]              = col;
  assign IP2Bus_Mst_Addr[30:31]              = 'b0;
  
  assign IP2Bus_Mst_BE[0 : C_MST_DWIDTH/8-1] = ~('b0);
  assign IP2Bus_Mst_Lock                     = 0;
  assign IP2Bus_Mst_Reset                    = mst_reset;
  assign IP2Bus_MstWr_d[0 : C_MST_DWIDTH-1]  = color;
  
  // assign some inputs to be monitored by slv_reg1
  assign tmp[0]     = Bus2IP_Mst_CmdAck;
  assign tmp[1]     = Bus2IP_Mst_Cmplt;
  assign tmp[2]     = Bus2IP_Mst_Error;
  assign tmp[3]     = Bus2IP_Mst_Rearbitrate;
  assign tmp[4]     = Bus2IP_Mst_Cmd_Timeout;
  assign tmp[5]     = Bus2IP_MstRd_src_rdy_n;
  assign tmp[6]     = Bus2IP_MstWr_dst_rdy_n;
  
  
  // --USER logic implementation added here


  // make process for updating slv_reg1 to be status register
  always @ *
    begin
      slv_reg1              = tmp;
      slv_reg1[13:15]       = state;
    end
    
  // start state machine
parameter OFF_STATE=0, PRESENT_STATE=1, WAIT_FOR_ACK=2, WAIT_FOR_CMPLT=3, ERROR_RECVD=4;

/*
  // line counter
  always @ (posedge Bus2IP_Clk)
    begin
	   if( Bus2IP_Mst_Cmplt )
		  begin
		    if( line == 'd250 )
				line = 'd100;
			 else
			   line = line + 1;
		  end		  
    end

  // column counter
  always @ (posedge Bus2IP_Clk)
    begin
	   if( Bus2IP_Mst_Cmplt )
		  begin
		    if( col == 'd250 )
				col = 'd50;
			 else
			   col = col + 1;
		  end		  
    end
*/

  always @ (posedge Bus2IP_Clk)
    begin
      case (state)
        OFF_STATE:
          if ( slv_reg0 != 'b0 )
            begin
              mst_reset <= 0;
              if ( line != input_reg[(15 - LINE_LEN - 1) : 15] || col != input_reg[(31 - COL_LEN - 1) : 31] )
				    state     <= PRESENT_STATE;
				  else
				    state     <= OFF_STATE;
            end
          else
            begin
              mst_reset    <= 0;
              mst_wr_req   <= 0;
              state        <= OFF_STATE;
            end
            
        PRESENT_STATE: // data to ipif
          if ( slv_reg0 == 'b0 || Bus2IP_Mst_Error || to_reset )
            begin
              mst_wr_req <= 0;
              mst_reset  <= 1;
              state      <= OFF_STATE;
            end
          else
            begin
              mst_reset    <= 0;
              mst_wr_req   <= 1;
              line         <= input_reg[(15 - LINE_LEN - 1) : 15];
				  col          <= input_reg[(31 - COL_LEN - 1) : 31];
				  state        <= WAIT_FOR_ACK;
            end
             
        WAIT_FOR_ACK:
          if ( slv_reg0 == 'b0 || Bus2IP_Mst_Error || to_reset )
            begin
              mst_wr_req <= 0;
              mst_reset  <= 1;
              state      <= OFF_STATE;
            end
          else
            begin
              // CmdAck and Cmplt can arrive at different times
              if ( Bus2IP_Mst_CmdAck && Bus2IP_Mst_Cmplt )
                begin
                  mst_wr_req <= 0;
                  state      <= PRESENT_STATE;
                end
              else if ( Bus2IP_Mst_CmdAck )
                begin
                  mst_wr_req <= 0;
                  state      <= WAIT_FOR_CMPLT;
                end
              else
                begin
                  mst_wr_req   <= 1;
                  state        <= WAIT_FOR_ACK;
                end
            end

        WAIT_FOR_CMPLT:
          if ( slv_reg0 == 'b0 || Bus2IP_Mst_Error || to_reset )
            begin
              mst_wr_req <= 0;
              mst_reset  <= 1;
              state      <= OFF_STATE;
            end	
          else
            begin
              if ( Bus2IP_Mst_Cmplt )
                begin
                  mst_wr_req <= 0;
                  state      <= PRESENT_STATE;
                end
              else
                begin
                  state      <= WAIT_FOR_CMPLT;
                end
            end
            
      endcase
    end

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
          slv_reg0  <= 'habcd_e000;
        end
      else
        case ( slv_reg_write_sel )
          4'b1000 :// slv_reg0 <= Bus2IP_Data;
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                for ( bit_index = byte_index*8; bit_index <= byte_index*8+7; bit_index = bit_index+1 )
                  slv_reg0[bit_index] <= Bus2IP_Data[bit_index];
          4'b0010 : input_reg <= Bus2IP_Data;
			          // begin
			          //   line <= Bus2IP_Data[(15 - LINE_LEN - 1) : 15];
						 //	 col  <= Bus2IP_Data[(31 - COL_LEN - 1) : 31];
						 // end
          4'b0001 : color <= Bus2IP_Data;
          default : ;
        endcase

    end // SLAVE_REG_WRITE_PROC
	 
  
  always @( posedge Bus2IP_Clk )
    begin: SLAVE_RST_TRIGGER_PROC
	   if ( slv_reg_write_sel == 4'b0100 )
		  to_reset <= 1;
		else
		  to_reset <= 0;
    end
		  
		  
  // implement slave model register read mux
  //always @( slv_reg_read_sel or slv_reg0 or slv_reg1 )
  always @ *
    begin: SLAVE_REG_READ_PROC
    
      counter = counter + 1;

      case ( slv_reg_read_sel )
      
        4'b1000 : slv_ip2bus_data <= slv_reg0;
        4'b0100 : slv_ip2bus_data <= slv_reg1;
        
        4'b0010 : slv_ip2bus_data <= IP2Bus_Mst_Addr;
        4'b0001 : slv_ip2bus_data <= color;
		  
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
