`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:59:23 11/12/2010 
// Design Name: 
// Module Name:    top 
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
module top(    );

  reg clk1;
  reg clk2;
  
  wire [95:0] vin1;
  wire [95:0] vin2;
  wire [95:0] vin3;
  
  wire [95:0] cin1;
  wire [95:0] cin2;
  wire [95:0] cin3;
  
  wire [95:0] pixel_data;
  
  wire [95:0] vertex_in;
  wire [95:0] color_in;
  
  wire [95:0] color_wr_data;
  wire [95:0] vertex_wr_data;
  wire [95:0] color_rd_data;
  wire [95:0] vertex_rd_data;
  
  wire [31:0] x;
  wire [31:0] y;

  wire color_empty;
  wire color_full;
  wire vertex_empty;
  wire vertex_full;

  wire vertex_rd_en;
  wire color_rd_en;
  wire vertex_wr_en;
  wire color_wr_en;
  
  wire in_rdy;
  wire out_ready;
  
  wire wr_pixel;
  wire fb_full;
  wire dequeue;
  
  wire t;
  wire out_rdy;
  
  gl_rasterizer GL_RAS( .clk(clk2), 
                        .full(fb_full),
                        .wr_data(pixel_data), 
                        .wr_en(wr_pixel),
                        .raster_ready(out_rdy), 
                        .fifo_ready(in_rdy),
                        .vertex_in1(vin1),
                        .vertex_in2(vin2),
                        .vertex_in3(vin3),
                        .color_in1(cin1),
                        .color_in2(cin2),
                        .color_in3(cin3)
                      );
             
  fifo_reg fifo_peek( .clk(clk2), 
                      .ready(in_rdy), 
                      .color_empty(color_empty), 
                      .vertex_empty(vertex_empty), 
                      .vertex_in(vertex_in), 
                      .color_in(color_in),
                      .dequeue(dequeue), 
                      .vertex_rd_en(vertex_rd_en), 
                      .color_rd_en(color_rd_en),
                      .vertex_out(vin1), 
                      .vertex_out2(vin2), 
                      .vertex_out3(vin3),
                      .color_out(cin1), 
                      .color_out2(cin2), 
                      .color_out3(cin3)
                    );
       
  fifo_96 ct_fifo_c(  .rst(0),
                      .wr_clk(clk1),
                      .rd_clk(clk2),
                      .din(color_wr_data),
                      .wr_en(color_wr_en),
                      .rd_en(color_rd_en),
                      .dout(color_rd_data),
                      .full(color_full),
                      .empty(color_empty) 
                    );

  fifo_96 ct_fifo_v(  .rst(0),
                      .wr_clk(clk1),
                      .rd_clk(clk2),
                      .din(vertex_wr_data),
                      .wr_en(vertex_wr_en),
                      .rd_en(vertex_rd_en),
                      .dout(vertex_rd_data),
                      .full(vertex_full),
                      .empty(vertex_empty) 
                    );
  
  always #10
    begin
      clk1 = ~clk1;
    end

//1 = 0x3F800000
//2 = 0x40000000
//10 = 0x41200000


initial
    begin
      clk1 = 0;
    end
endmodule
