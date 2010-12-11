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
module fifo_reg( clk, color_empty, vertex_empty, dequeue,
                 vertex_in, color_in, 
                 diff_x1x2_out, diff_x2x3_out, diff_x3x1_out,
                 diff_y1y2_out, diff_y2y3_out, diff_y3y1_out,
                 minx_int_out, maxx_int_out, miny_int_out,
                 maxy_int_out, cy1_init, cy2_init, cy3_init,
                 alpha_cons, beta_cons, gamma_cons, final_valid,
                 flush, vertex_rd_en, color_rd_en, ready );

  input             clk;
  input             color_empty;
  input             vertex_empty;
  input             dequeue;
  input [95:0]      vertex_in;
  input [95:0]      color_in;

  output reg        vertex_rd_en;
  output reg        color_rd_en;
  output reg        flush;
  output reg        ready;

  output reg [31:0] diff_x1x2_out;
  output reg [31:0] diff_x2x3_out;  
  output reg [31:0] diff_x3x1_out;
  output reg [31:0] diff_y1y2_out;
  output reg [31:0] diff_y2y3_out;
  output reg [31:0] diff_y3y1_out; 
  
  output reg [31:0] minx_int_out;
  output reg [31:0] maxx_int_out;
  output reg [31:0] miny_int_out;
  output reg [31:0] maxy_int_out;  
    
  output reg [31:0] cy1_init;
  output reg [31:0] cy2_init;
  output reg [31:0] cy3_init;
  output reg [31:0] alpha_cons;
  output reg [31:0] beta_cons;
  output reg [31:0] gamma_cons;
 
  output reg final_valid;
  
  reg [95:0] vertex_out;
  reg [95:0] vertex_out2;
  reg [95:0] vertex_out3;
  reg [95:0] color_out;
  reg [95:0] color_out2;
  reg [95:0] color_out3;

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
    hack  <= 0;
    ready <= 0;
  end
  
  always @ (posedge clk)
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

  wire [31:0] x1;
  wire [31:0] y1;
  wire [31:0] x2;
  wire [31:0] y2;
  wire [31:0] x3;
  wire [31:0] y3;

  assign x1 = vertex_out[95:64];
  assign y1 = vertex_out[63:32];
  assign x2 = vertex_out2[95:64];
  assign y2 = vertex_out2[63:32];
  assign x3 = vertex_out3[95:64];
  assign y3 = vertex_out3[63:32];
 
  wire [31:0] diff_x1x2;
  wire [31:0] diff_x2x3;
  wire [31:0] diff_x3x1;
  wire [31:0] diff_y1y2;
  wire [31:0] diff_y2y3;
  wire [31:0] diff_y3y1;
  wire [31:0] minx;
  wire [31:0] maxx;
  wire [31:0] miny;
  wire [31:0] maxy;
  wire [31:0] diff_x1minx;
  wire [31:0] diff_x2minx;
  wire [31:0] diff_x3minx;
  wire [31:0] diff_minyy1;
  wire [31:0] diff_minyy2;
  wire [31:0] diff_minyy3;
  
  wire valid_0;
  
  assign valid_0 = ready;
  
  reg [31:0] minx_out;
  reg [31:0] maxx_out;
  reg [31:0] miny_out;
  reg [31:0] maxy_out;
  reg [31:0] diff_x1minx_out;
  reg [31:0] diff_x2minx_out;
  reg [31:0] diff_x3minx_out;
  reg [31:0] diff_minyy1_out;
  reg [31:0] diff_minyy2_out;
  reg [31:0] diff_minyy3_out;
  
  reg valid_0_out;
  
  fp_sub subtract_x1(.a(x1), .b(x2), .result(diff_x1x2));
  fp_sub subtract_x2(.a(x2), .b(x3), .result(diff_x2x3));
  fp_sub subtract_x3(.a(x3), .b(x1), .result(diff_x3x1));
  fp_sub subtract_y1(.a(y1), .b(y2), .result(diff_y1y2));
  fp_sub subtract_y2(.a(y2), .b(y3), .result(diff_y2y3));
  fp_sub subtract_y3(.a(y3), .b(y1), .result(diff_y3y1));
  
  comp_3 x_compare1( .type(1'b0), 
                    .p1(x1), .p2(x2), .p3(x3),
                    .diff_p1p2(diff_x1x2), .diff_p2p3(diff_x2x3), .diff_p3p1(diff_x3x1), 
                    .minp(minx), .maxp(maxx), 
                    .diff_p1minp(diff_x1minx), .diff_p2minp(diff_x2minx), .diff_p3minp(diff_x3minx));

  comp_3 y_compare2( .type(1'b1), 
                    .p1(y1), .p2(y2), .p3(y3),
                    .diff_p1p2(diff_y1y2), .diff_p2p3(diff_y2y3), .diff_p3p1(diff_y3y1),
                    .minp(miny), .maxp(maxy), 
                    .diff_p1minp(diff_minyy1), .diff_p2minp(diff_minyy2), .diff_p3minp(diff_minyy3));
   
  always @ (posedge clk)
    begin  
    diff_x1x2_out <= diff_x1x2;
    diff_x2x3_out <= diff_x2x3;
    diff_x3x1_out <= diff_x3x1;
    diff_y1y2_out <= diff_y1y2;
    diff_y2y3_out <= diff_y2y3;
    diff_y3y1_out <= diff_y3y1;
    diff_x1minx_out <= diff_x1minx;
    diff_x2minx_out <= diff_x2minx;
    diff_x3minx_out <= diff_x3minx;
    diff_minyy1_out <= diff_minyy1;
    diff_minyy2_out <= diff_minyy2;
    diff_minyy3_out <= diff_minyy3;
    minx_out <= minx;
    maxx_out <= maxx;
    miny_out <= miny;
    maxy_out <= maxy;
    valid_0_out <= valid_0;
    end
    
  wire [31:0] diff_x1x2_wire;
  wire [31:0] diff_x2x3_wire;
  wire [31:0] diff_x3x1_wire;
  wire [31:0] diff_y1y2_wire;
  wire [31:0] diff_y2y3_wire;
  wire [31:0] diff_y3y1_wire;
  wire [31:0] minx_wire;
  wire [31:0] maxx_wire;
  wire [31:0] miny_wire;
  wire [31:0] maxy_wire;
  wire [31:0] diff_x1minx_wire;
  wire [31:0] diff_x2minx_wire;
  wire [31:0] diff_x3minx_wire;
  wire [31:0] diff_minyy1_wire;
  wire [31:0] diff_minyy2_wire;
  wire [31:0] diff_minyy3_wire;
  
  wire valid_1;
  
  wire [31:0] minx_int;
  wire [31:0] maxx_int;
  wire [31:0] miny_int;
  wire [31:0] maxy_int;
  
  wire [31:0] alpha_1;
  wire [31:0] alpha_2;
  wire [31:0] beta_1;
  wire [31:0] beta_2;
  wire [31:0] gamma_1;
  wire [31:0] gamma_2;
  
  wire [31:0] cy1_mul1;
  wire [31:0] cy1_mul2;
  wire [31:0] cy2_mul1;
  wire [31:0] cy2_mul2;
  wire [31:0] cy3_mul1;
  wire [31:0] cy3_mul2;
  
  
  reg [31:0] alpha_1_out;
  reg [31:0] alpha_2_out;
  reg [31:0] beta_1_out;
  reg [31:0] beta_2_out;
  reg [31:0] gamma_1_out;
  reg [31:0] gamma_2_out;
  
  reg [31:0] cy1_mul1_out;
  reg [31:0] cy1_mul2_out;
  reg [31:0] cy2_mul1_out;
  reg [31:0] cy2_mul2_out;
  reg [31:0] cy3_mul1_out;
  reg [31:0] cy3_mul2_out;
 
  reg valid_1_out;
  
  assign diff_x1x2_wire = diff_x1x2_out;
  assign diff_x2x3_wire = diff_x2x3_out;
  assign diff_x3x1_wire = diff_x3x1_out;
  assign diff_y1y2_wire = diff_y1y2_out;
  assign diff_y2y3_wire = diff_y2y3_out;
  assign diff_y3y1_wire = diff_y3y1_out;
  assign diff_x1minx_wire = diff_x1minx;
  assign diff_x2minx_wire = diff_x2minx;
  assign diff_x3minx_wire = diff_x3minx;
  assign diff_minyy1_wire = diff_minyy1;
  assign diff_minyy2_wire = diff_minyy2;
  assign diff_minyy3_wire = diff_minyy3;
  
  assign valid_1 = valid_0_out;
  
  assign minx_wire = minx_out;
  assign maxx_wire = maxx_out;
  assign miny_wire = miny_out;
  assign maxy_wire = maxy_out;
  
  f2i float_int_minx(minx_wire, minx_int);
  f2i float_int_maxx(maxx_wire, maxx_int);
  f2i float_int_miny(miny_wire, miny_int);
  f2i float_int_maxy(maxy_wire, maxy_int);
  
  fp_mul alpha_mult_1(diff_y2y3_wire, diff_x1x2_wire, alpha_1);
  fp_mul alpha_mult_2(diff_y1y2_wire, diff_x2x3_wire, alpha_2);
  fp_mul beta_mult_1(diff_y3y1_wire, diff_x2x3_wire, beta_1);
  fp_mul beta_mult_2(diff_y2y3_wire, diff_x3x1_wire, beta_2);
  fp_mul gamma_mult_1(diff_y1y2_wire, diff_x3x1_wire, gamma_1);
  fp_mul gamma_mult_2(diff_y3y1_wire, diff_x1x2_wire, gamma_2);

  fp_mul mult_dy12(diff_y1y2_wire, diff_x1minx_wire, cy1_mul1);
  fp_mul mult_dx12(diff_x1x2_wire, diff_minyy1_wire, cy1_mul2);
  fp_mul mult_dy23(diff_y2y3_wire, diff_x2minx_wire, cy2_mul1);
  fp_mul mult_dx23(diff_x2x3_wire, diff_minyy2_wire, cy2_mul2);
  fp_mul mult_dy31(diff_y3y1_wire, diff_x3minx_wire, cy3_mul1);
  fp_mul mult_dx31(diff_x3x1_wire, diff_minyy3_wire, cy3_mul2); 
  
  always @ (posedge clk)
    begin  
    cy1_mul1_out <= cy1_mul1;
    cy1_mul2_out <= cy1_mul2;
    cy2_mul1_out <= cy2_mul1;
    cy2_mul2_out <= cy2_mul2;
    cy3_mul1_out <= cy3_mul1;
    cy3_mul2_out <= cy3_mul2;
    alpha_1_out <= alpha_1;
    alpha_2_out <= alpha_2;
    beta_1_out <= beta_1;
    beta_2_out <= beta_2;
    gamma_1_out <= gamma_1;
    gamma_2_out <= gamma_2;
    minx_int_out <= minx_int;
    maxx_int_out <= maxx_int;
    miny_int_out <= miny_int;
    maxy_int_out <= maxy_int;
    valid_1_out <= valid_1;
    end
    
  wire [31:0] alpha_1_wire;
  wire [31:0] alpha_2_wire;
  wire [31:0] beta_1_wire;
  wire [31:0] beta_2_wire;
  wire [31:0] gamma_1_wire;
  wire [31:0] gamma_2_wire;
  wire [31:0] alpha_cons_wire;
  wire [31:0] beta_cons_wire;
  wire [31:0] gamma_cons_wire;
 
  wire [31:0] cy1_mul1_wire;
  wire [31:0] cy1_mul2_wire;
  wire [31:0] cy1_init_wire;
  wire [31:0] cy2_mul1_wire;
  wire [31:0] cy2_mul2_wire;
  wire [31:0] cy2_init_wire;
  wire [31:0] cy3_mul1_wire;
  wire [31:0] cy3_mul2_wire;
  wire [31:0] cy3_init_wire;
  
  wire final_valid_wire;

  assign final_valid_wire = valid_1_out;
  
  assign alpha_1_wire = alpha_1_out;
  assign alpha_2_wire = alpha_2_out;
  assign beta_1_wire = beta_1_out;
  assign beta_2_wire = beta_2_out;
  assign gamma_1_wire = gamma_1_out;
  assign gamma_2_wire = gamma_2_out;
  
  assign cy1_mul1_wire = cy1_mul1_out;
  assign cy1_mul2_wire = cy1_mul2_out;
  assign cy2_mul1_wire = cy2_mul1_out;
  assign cy2_mul2_wire = cy2_mul2_out;
  assign cy3_mul1_wire = cy3_mul1_out;
  assign cy3_mul2_wire = cy3_mul2_out;
  
  fp_sub alpha_sub(alpha_2_wire, alpha_1_wire, alpha_cons_wire);
  fp_sub beta_sub(beta_2_wire, beta_1_wire, beta_cons_wire);
  fp_sub gamma_sub(gamma_2_wire, gamma_1_wire, gamma_cons_wire);
  
  fp_add add_cy1(cy1_mul1_wire, cy1_mul2_wire, cy1_init_wire);
  fp_add add_cy2(cy2_mul1_wire, cy2_mul2_wire, cy2_init_wire);
  fp_add add_cy3(cy3_mul1_wire, cy3_mul2_wire, cy3_init_wire);   
      
  always @ (posedge clk)
    begin
    alpha_cons <= alpha_cons_wire;  
    beta_cons <= beta_cons_wire;
    gamma_cons <= gamma_cons_wire;
    cy1_init <= cy1_init_wire;
    cy2_init <= cy2_init_wire;
    cy3_init <= cy3_init_wire;
    final_valid <= final_valid_wire;
    end
    
endmodule
