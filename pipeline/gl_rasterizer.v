`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:26:54 11/07/2010 
// Design Name: 
// Module Name:    gl_rasterizer 
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
module gl_rasterizer( clk, full, state, wr_data, wr_en,
		      raster_ready, fifo_ready, flush,
                      vertex_in1, vertex_in2, vertex_in3,
		      color_in1, color_in2, color_in3 );

parameter VERTEX_TYPE_SIZE = 96;
parameter COLOR_TYPE_SIZE = 96;
parameter LINE_LEN = 9;
parameter COL_LEN = 10;

    input clk;
    input flush;

    /* writer domain */
    input full;
    output reg [95:0] wr_data;
    output reg wr_en;

    /* reading domain */
    input fifo_ready;
    output reg raster_ready = 0;
    
    reg [COL_LEN-1:0] count_x;
    reg [LINE_LEN-1:0] count_y;
   
    wire valid_pixel;
    wire [1:0] state_net;
 
    input [COLOR_TYPE_SIZE-1:0] color_in1;
    input [COLOR_TYPE_SIZE-1:0] color_in2;
    input [COLOR_TYPE_SIZE-1:0] color_in3;
  
    reg [COLOR_TYPE_SIZE-1:0] color_1;
    reg [COLOR_TYPE_SIZE-1:0] color_2;
    reg [COLOR_TYPE_SIZE-1:0] color_3;
    
    wire [31:0] red_1;
    wire [31:0] green_1;
    wire [31:0] blue_1;
 
    wire [31:0] red_2;
    wire [31:0] green_2;
    wire [31:0] blue_2;
 
    wire [31:0] red_3;
    wire [31:0] green_3;
    wire [31:0] blue_3;

    assign red_1 = color_in1[95:64];
    assign green_1 = color_in1[63:32];
    assign blue_1 = color_in1[31:0];
    assign red_2 = color_in2[95:64];
    assign green_2 = color_in2[63:32];
    assign blue_2 = color_in2[31:0];
    assign red_3 = color_in3[95:64];
    assign green_3 = color_in3[63:32];
    assign blue_3 = color_in3[31:0];
    output reg [1:0] state = 0;
    
    wire [31:0] x1;
    wire [31:0] x2;
    wire [31:0] x3;
    wire [31:0] y1;
    wire [31:0] y2;
    wire [31:0] y3;
    
    wire [31:0] minx;
    wire [31:0] maxx;
    wire [31:0] miny;
    wire [31:0] maxy;
    wire [31:0] minx_int_32;
    wire [31:0] maxx_int_32;
    wire [31:0] miny_int_32;
    wire [31:0] maxy_int_32;
    
    wire [9:0] minx_int;
    wire [9:0] maxx_int;
    wire [8:0] miny_int;
    wire [8:0] maxy_int;
    
    wire [31:0] diff_x1x2;
    wire [31:0] diff_x2x3;
    wire [31:0] diff_x3x1;
    wire [31:0] diff_y1y2;
    wire [31:0] diff_y2y3;
    wire [31:0] diff_y3y1;
    
    wire [31:0] cy1_mul1;
    wire [31:0] cy1_mul2;
    wire [31:0] cy2_mul1;
    wire [31:0] cy2_mul2;
    wire [31:0] cy3_mul1;
    wire [31:0] cy3_mul2;
   
    wire [31:0] cy1_init; 
    wire [31:0] cy2_init; 
    wire [31:0] cy3_init;
     
    wire [31:0] cx1_decr; 
    wire [31:0] cx2_decr; 
    wire [31:0] cx3_decr;
    wire [31:0] cy1_incr; 
    wire [31:0] cy2_incr; 
    wire [31:0] cy3_incr;
 
    reg [31:0] cx1_reg; 
    reg [31:0] cx2_reg; 
    reg [31:0] cx3_reg;
 
    reg [31:0] cy1_reg; 
    reg [31:0] cy2_reg; 
    reg [31:0] cy3_reg;

    wire [31:0] cx1; 
    wire [31:0] cx2; 
    wire [31:0] cx3; 
    wire [31:0] cy1; 
    wire [31:0] cy2; 
    wire [31:0] cy3; 
    
    assign cx1 = cx1_reg;
    assign cx2 = cx2_reg;
    assign cx3 = cx3_reg;
    assign cy1 = cy1_reg;
    assign cy2 = cy2_reg;
    assign cy3 = cy3_reg;

    assign x1 = vertex_in1[95:64];
    assign y1 = vertex_in1[63:32];
    assign x2 = vertex_in2[95:64];
    assign y2 = vertex_in2[63:32];
    assign x3 = vertex_in3[95:64];
    assign y3 = vertex_in3[63:32];

    wire [31:0] alpha;
    wire [31:0] alpha_1;
    wire [31:0] alpha_2;
    wire [31:0] alpha_cons;
 
    wire [31:0] beta;
    wire [31:0] beta_1;
    wire [31:0] beta_2;
    wire [31:0] beta_cons;
  
    wire [31:0] gamma;
    wire [31:0] gamma_1;
    wire [31:0] gamma_2;
    wire [31:0] gamma_cons;

    wire [31:0] alpha_beta;
    wire [31:0] sum;
 
    assign valid_pixel = !((alpha[31] && (alpha[30:0] != 31'b0)) | (beta[31] && (beta[30:0] != 31'b0)) | (gamma[31] && (gamma[30:0] != 31'b0)));

    fp_div alpha_div(cx1, alpha_cons, alpha);
    fp_div beta_div(cx2, beta_cons, beta);
    fp_div gamma_div(cx3, gamma_cons, gamma);
  
    wire [31:0] red_add1;
    wire [31:0] red_add2;
    wire [31:0] red_add3;
    wire [31:0] red_add12;
    wire [31:0] red_f;
    wire [31:0] red_n;
    wire [31:0] red;

    wire [31:0] blue_add1;
    wire [31:0] blue_add2;
    wire [31:0] blue_add3;
    wire [31:0] blue_add12;
    wire [31:0] blue_f;
    wire [31:0] blue_n;
    wire [31:0] blue;

    wire [31:0] green_add1;
    wire [31:0] green_add2;
    wire [31:0] green_add3;
    wire [31:0] green_add12;
    wire [31:0] green_f;
    wire [31:0] green_n;
    wire [31:0] green;
  
    reg [31:0] red_add1_reg;
    reg [31:0] red_add2_reg;
    reg [31:0] red_add3_reg;

    reg [31:0] blue_add1_reg;
    reg [31:0] blue_add2_reg;
    reg [31:0] blue_add3_reg;
    
    reg [31:0] green_add1_reg;
    reg [31:0] green_add2_reg;
    reg [31:0] green_add3_reg;
    
    always@ (posedge clk)
      begin
          red_add1_reg <= red_add1;
          red_add2_reg <= red_add2;
          red_add3_reg <= red_add3;
          
          green_add1_reg <= green_add1;
          green_add2_reg <= green_add2;
          green_add3_reg <= green_add3;
          
          blue_add1_reg <= blue_add1;
          blue_add2_reg <= blue_add2;
          blue_add3_reg <= blue_add3;
      end
      
    fp_mul alpha_red(alpha, red_1, red_add1);
    fp_mul beta_red(beta, red_2, red_add2);
    fp_mul gamma_red(gamma, red_3, red_add3);

    fp_mul alpha_green(alpha, green_1, green_add1);
    fp_mul beta_green(beta, green_2, green_add2);
    fp_mul gamma_green(gamma, green_3, green_add3);
    
    fp_mul alpha_blue(alpha, blue_1, blue_add1);
    fp_mul beta_blue(beta, blue_2, blue_add2);
    fp_mul gamma_blue(gamma, blue_3, blue_add3);
    
    /* clock here */
    
    fp_add red_out_0(red_add1_reg, red_add2_reg, red_add12);
    fp_add red_out(red_add12, red_add3_reg, red_f);
     
    fp_add green_out_0(green_add1_reg, green_add2_reg, green_add12);
    fp_add green_out(green_add12, green_add3_reg, green_f);

    fp_add blue_out_0(blue_add1_reg, blue_add2_reg, blue_add12);
    fp_add blue_out(blue_add12, blue_add3_reg, blue_f);
    
    fp_mul red_norm(red_f, 32'h427c0000, red_n);
    fp_mul green_norm(green_f, 32'h427c0000, green_n);
    fp_mul blue_norm(blue_f, 32'h427c0000, blue_n);

    f2i red_int(red_n, red);
    f2i green_int(green_n, green);
    f2i blue_int(blue_n, blue);
    
    fp_add reg_cy1(cy1, diff_x1x2, cy1_incr);
    fp_add reg_cy2(cy2, diff_x2x3, cy2_incr);
    fp_add reg_cy3(cy3, diff_x3x1, cy3_incr);

    fp_sub reg_cx1(cx1, diff_y1y2, cx1_decr);
    fp_sub reg_cx2(cx2, diff_y2y3, cx2_decr);
    fp_sub reg_cx3(cx3, diff_y3y1, cx3_decr);
    
    assign minx_int = minx_int_32[COL_LEN-1:0];
    assign maxx_int = maxx_int_32[COL_LEN-1:0];
    
    assign miny_int = miny_int_32[LINE_LEN-1:0];
    assign maxy_int = maxy_int_32[LINE_LEN-1:0];

    assign state_net = state;
      
    always @ (posedge clk)
    begin
      case (state)
	    0:
        begin
        vertex_1 <= vertex_in1;
        vertex_2 <= vertex_in2;
        vertex_3 <= vertex_in3;
        color_1 <= color_in1;
        color_2 <= color_in2;
        color_3 <= color_in3;
        cy1_reg <= cy1_init;
        cy2_reg <= cy2_init;
        cy3_reg <= cy3_init;
        cx1_reg <= 0;
        cx2_reg <= 0;
        cx3_reg <= 0;
        count_y <= miny_int - 1;
        if (fifo_ready)
          begin
          state <= 1;        
          raster_ready <= 0;
          wr_en <= 0; 
          wr_data <= 0;          
          end
        else if (flush)
          begin
          wr_en <= 1; 
          wr_data <= 96'hFFFFFFFF_FFFFFFFF_FFFFFFFF;          
          state <= 0;       
          raster_ready <= 1;
          end
        else
          begin
          wr_en <= 0; 
          wr_data <= 0;          
          state <= 0;       
          raster_ready <= 1;
          end
        end 
      1:	    
        begin
        vertex_1 <= vertex_1;
        vertex_2 <= vertex_2;
        vertex_3 <= vertex_3;
        color_1 <= color_1;
        color_2 <= color_2;
        color_3 <= color_3;
        cx1_reg <= cy1;
        cx2_reg <= cy2;
        cx3_reg <= cy3;
        cy1_reg <= cy1_incr;
        cy2_reg <= cy2_incr;
        cy3_reg <= cy3_incr;
        count_y <= count_y + 1;
        count_x <= minx_int;
        wr_en <= 0;
        wr_data <= 0;
        if (count_y < maxy_int)
          begin
          state <= 2;
          raster_ready <= 0;
          end
        else
          begin
          state <= 0;
          raster_ready <= 1;
          end
        end
	    2: 
        begin
        vertex_1 <= vertex_1;
        vertex_2 <= vertex_2;
        vertex_3 <= vertex_3;
        color_1 <= color_1;
        color_2 <= color_2;
        color_3 <= color_3;
        cy1_reg <= cy1_reg;
        cy2_reg <= cy2_reg;
        cy3_reg <= cy3_reg;
        raster_ready <= 0;
        if (count_x <= maxx_int)
          begin
          state <= 2;
          if (valid_pixel)
            begin
            wr_en <= 1;
            /* Pack data into fifo */
            wr_data <= {7'b0, count_y, 6'b0, count_x, 8'b0, red[5:0], 2'b0, green[5:0], 2'b0, blue[5:0], 2'b0, 32'b0};
            if (full == 0) 
              begin
              cx1_reg <= cx1_decr; 
              cx2_reg <= cx2_decr; 
              cx3_reg <= cx3_decr; 
              count_x <= count_x + 1;
              end
            else 
              begin
              cx1_reg <= cx1_reg; 
              cx2_reg <= cx2_reg; 
              cx3_reg <= cx3_reg; 
              count_x <= count_x;
              end
            end
          else
            begin
            /* not valid pixel */
            wr_en <= 0;
            wr_data <= 0;
            cx1_reg <= cx1_decr; 
            cx2_reg <= cx2_decr; 
            cx3_reg <= cx3_decr; 
            count_x <= count_x + 1;
            end
          end
        else
          /* x is out of loop range, go to outer loop */
		      begin
              wr_en <= 0;
              wr_data <= 0;
		      state <= 1;
              cx1_reg <= cx1_reg; 
              cx2_reg <= cx2_reg; 
              cx3_reg <= cx3_reg; 
              count_x <= count_x;
		      end
        end
      endcase
  end	
endmodule
