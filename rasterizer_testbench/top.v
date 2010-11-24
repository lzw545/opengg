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

gl_rasterizer GL_RAS( .clk(clk), 
                      .fifo_ready(1), 
                      .count_x(x), 
                      .count_y(y),
                      .raster_ready(out_rdy), 
                      .vertex_in1(96'h3F800000_3F800000_00000000),
                      .vertex_in2(96'h3F800000_41200000_00000000),
                      .vertex_in3(96'h41200000_3F800000_00000000),
                      .color_in1( ),
                      .color_in2( ),
                      .color_in3( ),
                      .valid_pixel(t), 
                      .full(f), 
                      .fifo_ready( ),
                      .wr_data, 
                      .wr_en,
                     );
              
fifo_reg fifo_peek( .clk(clk), 
                    .color_empty(e_c), 
                    .vertex_in(ct_out_v), 
                    .color_in(ct_out_c),
                    .dequeue(out_ready), 
                    .vertex_empty(e_v), 
                    .vertex_rd_en( ), 
                    .color_rd_en( ),
                    .ready ( ), 
                    .vertex_out( ), 
                    .vertex_out2( ), 
                    .vertex_out3( ),
                    .color_out( ), 
                    .color_out2( ), 
                    .color_out3( )
                   );
       

fifo_96 ct_fifo_c(  .rst(0),
                  .wr_clk(clk1),
                  .rd_clk(clk2),
                  .din(ct_in_c),
                  .wr_en(wr_en_c),
                  .rd_en(rd_en_c),
                  .dout(ct_out_c),
                  .full(f_c),
                  .empty(e_c) 
                );

fifo_96 ct_fifo_v(  .rst(0),
                  .wr_clk(clk1),
                  .rd_clk(clk2),
                  .din(ct_in_v),
                  .wr_en(wr_en_v),
                  .rd_en(rd_en_v),
                  .dout(ct_out_v),
                  .full(f_v),
                  .empty(e_v) 
                );

initial
    begin
      clk = 0;
    end
endmodule
