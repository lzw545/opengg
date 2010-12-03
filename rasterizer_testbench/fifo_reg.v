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
module fifo_reg( clk, color_empty, vertex_empty, dequeue, flush,
                 vertex_in, color_in, vertex_out, vertex_out2, vertex_out3,
                 color_out, color_out2, color_out3, 
                 vertex_rd_en, color_rd_en, ready );

  input             clk;
  input             color_empty;
  input             vertex_empty;
  input             dequeue;
  input             reset;
  input [95:0]      vertex_in;
  input [95:0]      color_in;

  output reg        vertex_rd_en;
  output reg        color_rd_en;
  output reg        flush;
  output reg        ready;
    
  output reg [95:0] vertex_out;
  output reg [95:0] vertex_out2;
  output reg [95:0] vertex_out3;
  output reg [95:0] color_out;
  output reg [95:0] color_out2;
  output reg [95:0] color_out3;

  reg [95:0] vertex_next;
  reg [95:0] vertex_next2;
  reg [95:0] vertex_next3;
  reg [95:0] color_next;
  reg [95:0] color_next2;
  reg [95:0] color_next3;

  reg [1:0]         count;
  reg [1:0]         state;
  reg               hack;
  
  initial 
  begin
    count <= 0;
    state <= 0;
    hack  <= 0
    flush <= 0;
    ready <= 0;
  end
 
  always @ (posedge clk)
    begin
      if (reset) 
        begin
        state <= 0;
        count <= 0;
        hack <= 0;
        ready <= 0;
        flush <= 0;
        end
      else
        begin
        case (state)
        0:
        begin
        if (dequeue == 1 && count == 3)
          begin
          state <= 0;
          vertex_rd_en <= 0;
          color_rd_en <= 0;
          hack <= 0;
          count <= 0;
          if (vertex_next == 96'hFFFFFFFF_FFFFFFFF_FFFFFFFF && color_next == 96'hFFFFFFFF_FFFFFFFF_FFFFFFFF)
            begin
            flush <= 1;
            ready <= 0;
            vertex_next <= vertex_next;
            vertex_next2 <= vertex_next2;
            vertex_next3 <= vertex_next3;
            color_next <= color_next;
            color_next2 <= color_next2;
            color_next3 <= color_next3; 
            end
          else
            begin
              ready <= 1;
              flush <= 0;
              vertex_out <= vertex_next;
              vertex_out2 <= vertex_next2;
              vertex_out3 <= vertex_next3;
              color_out <= color_next;
              color_out2 <= color_next2;
              color_out3 <= color_next3;
            end
          end
        else if (count < 3)
          begin
          flush <= 0;
          ready <= 0;
          vertex_next <= vertex_next;
          vertex_next2 <= vertex_next2;
          vertex_next3 <= vertex_next3;
          color_next <= color_next;
          color_next2 <= color_next2;
          color_next3 <= color_next3;
          if (color_empty == 0 && vertex_empty == 0 && hack == 1)
            begin
            count <= count+1;
            vertex_rd_en <= 1;
            color_rd_en <= 1;
            hack <= 0;
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
          else 
            begin
            hack <= 1;
            count <= count;
            state <= 0;
            vertex_rd_en <= 0;
            color_rd_en <= 0;
            ready <= 0;
            end
          end
        else
          begin
          flush <= 0;
          ready <= 0;
          count <= 3;
          state <= 0;
          vertex_rd_en <= 0;
          color_rd_en <= 0;
          vertex_next <= vertex_next;
          vertex_next2 <= vertex_next2;
          vertex_next3 <= vertex_next3;
          color_next <= color_next;
          color_next2 <= color_next2;
          color_next3 <= color_next3;
          hack <= 0;
          end
        end
      1:
        begin
        if (count < 3)
          begin
          vertex_next <= vertex_in;
          color_next <= color_in;
          vertex_next2 <= vertex_next2;
          vertex_next3 <= vertex_next3;
          color_next2 <= color_next2;
          color_next3 <= color_next3;       
          flush <= 0;
          ready <= 0;
          if (color_empty == 0 && vertex_empty == 0 && hack == 1)
            begin
            count <= count+1;
            vertex_rd_en <= 1;
            color_rd_en <= 1;
            hack <= 0;
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
            count <= count;
            state <= state;
            vertex_rd_en <= 0;
            color_rd_en <= 0;
            hack <= 1;
            end
          end
        else
          begin
          vertex_next <= vertex_in;
          color_next <= color_in;
          vertex_next2 <= vertex_next2;
          vertex_next3 <= vertex_next3;
          color_next2 <= color_next2;
          color_next3 <= color_next3;
          ready <= 1;
          count <= 3;
          state <= 0;
          vertex_rd_en <= 0;
          color_rd_en <= 0;
          hack <= 0;
          end
        end 
	    2: 
        begin
        flush <= 0;
        vertex_next2 <= vertex_in;
        color_next2 <= color_in;
        vertex_next <= vertex_next;
        vertex_next3 <= vertex_next3;
        color_next <= color_next;
        color_next3 <= color_next3;
        if (count < 3)
          begin
          ready <= 0;
          if (color_empty == 0 && vertex_empty == 0 && hack == 1)
            begin
            state <= 3;
            count <= count+1;
            color_rd_en <= 1;
            vertex_rd_en <= 1;
            hack <= 0;
            end
          else
            begin
            state <= state;
            count <= count;
            vertex_rd_en <= 0;
            color_rd_en <= 0;
            hack <= 1;
            end
          end
        else
          begin
          ready <= 1;
          count <= 3;
          state <= 0;
          vertex_rd_en <= 0;
          color_rd_en <= 0;
          hack <= 0;
          end
        end
      3:
        begin
        flush <= 0;
        vertex_next3 <= vertex_in;
        color_next3 <= color_in;
        vertex_next <= vertex_next;
        vertex_next2 <= vertex_next2;
        color_next <= color_next;
        color_next2 <= color_next2;
        count <= 3;
        vertex_rd_en <= 0;
        color_rd_en <= 0;
        ready <= 0;
        if (hack == 1)
          begin
          hack <= 0;
          state <= 0;
          end
        else
          begin
          state <= 3;
          hack <= 1;
          end
        end
      endcase
      end
  end	
endmodule
