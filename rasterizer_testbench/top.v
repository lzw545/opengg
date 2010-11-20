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

  reg clk;
  
  wire [31:0] x;
  wire [31:0] y;
  wire t;
  wire out_rdy;
  
  always #10
    begin
      clk = ~clk;
    end

//1 = 0x3F800000
//2 = 0x40000000
//10 = 0x41200000

gl_rasterizer GL_RAS( .clk(clk), .fifo_ready(1), 
                      .count_x(x), .count_y(y),
                      .raster_ready(out_rdy), 
                      .vertex_in1(96'h3F800000_3F800000_00000000),
                      .vertex_in2(96'h3F800000_41200000_00000000),
                      .vertex_in3(96'h41200000_3F800000_00000000),
                      .valid_pixel(t)
                      );
              
              
  initial
    begin
      clk = 0;
    end
endmodule
