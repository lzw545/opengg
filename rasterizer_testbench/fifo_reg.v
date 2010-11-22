`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:39 11/21/2010 
// Design Name: 
// Module Name:    fifo_reg 
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
module fifo_reg( clk, color_empty, vertex_empty, raster_request,
                 vertex_in, color_in, vertex_out, vertex_out2, vertex_out3,
                 color_out, color_out2, color_out3, 
                 vertex_rd_en, color_rd_en, ready );

  input clk;
  input color_empty;
  input vertex_empty;
  input raster_request;
  input [95:0] vertex_in;
  input [95:0] color_in;

  output reg vertex_rd_en;
  output reg color_rd_en;
  
  output reg ready = 1;
  
  output reg [95:0] vertex_out;
  output reg [95:0] vertex_out2;
  output reg [95:0] vertex_out3;
  output reg [95:0] color_out;
  output reg [95:0] color_out2;
  output reg [95:0] color_out3;

  reg count = 0;
  reg [1:0] state = 0;
  
  always @ (posedge clk)
    begin
      case (state)
	    0:
        begin
        if (color_empty == 0 && vertex_empty == 0 && count < 3)
          begin
          ready <= 0;
          count <= count+1;
          vertex_rd_en <= 1;
          color_rd_en <= 1;
            if (count == 0)
            begin
            state <= 1;
            end
          else if (count == 1)
            begin
            state <= 2;
            end
          else
            begin
            state <= 3;
            end
          end
        end
      1:	    
        begin
        vertex_out <= vertex_in;
        color_out <= color_in;
        if (color_empty == 0 && vertex_empty == 0 && count < 3)
          begin
          vertex_rd_en <= 1;
          color_rd_en <= 1;
          count <= count+1;
          if (count == 1)
            begin
            state <= 2;
            end
          else
            begin 
            state <= 3;
            end
          end
        else
          begin
          state <= 0;
          end
        end 
	    2: 
        begin
        vertex_out2 <= vertex_in;
        color_out2 <= color_in;
        if (color_empty == 0 && vertex_empty == 0 && count < 3)
          begin
            count <= count+1;
            color_rd_en <= 1;
            state <= 3;
          end
        else
          begin
          state <= 0;
          end
        end 
      3:
        begin
        vertex_out3 <= vertex_in;
        color_out3 <= color_in;
        state <= 0;
        ready <= 1;
        end
      endcase
  end	
endmodule
