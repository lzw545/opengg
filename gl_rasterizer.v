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
module gl_rasterizer( clk, fifo_ready, count_x, count_y, true,
		      raster_ready, fifo_in1, fifo_in2, fifo_in3);

parameter VERTEX_TYPE_SIZE=96;

    input clk;
  
    input fifo_ready;
    output reg raster_ready = 0;
    output reg true = 0;
    
    output reg [31:0] count_x;
    output reg [31:0] count_y;
    
    input [VERTEX_TYPE_SIZE-1:0]  fifo_in1;
    input [VERTEX_TYPE_SIZE-1:0]  fifo_in2;
    input [VERTEX_TYPE_SIZE-1:0]  fifo_in3;

    reg [1:0] state = 0;
    
    reg [VERTEX_TYPE_SIZE-1:0]  vertex_1;
    reg [VERTEX_TYPE_SIZE-1:0]  vertex_2;
    reg [VERTEX_TYPE_SIZE-1:0]  vertex_3;

    wire [31:0] x1;
    wire [31:0] x2;
    wire [31:0] x3;
    wire [31:0] y1;
    wire [31:0] y2;
    wire [31:0] y3;
    
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
    wire [31:0] minx_int;
    wire [31:0] maxx_int;
    wire [31:0] miny_int;
    wire [31:0] maxy_int;
    
    wire [31:0] diff_x1minx;
    wire [31:0] diff_x2minx;
    wire [31:0] diff_x3minx;
    wire [31:0] diff_minyy1;
    wire [31:0] diff_minyy2;
    wire [31:0] diff_minyy3;
    
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

    assign x1 = fifo_in1[95:64];
    assign y1 = fifo_in1[63:32];
    assign x2 = fifo_in2[95:64];
    assign y2 = fifo_in2[63:32];
    assign x3 = fifo_in3[95:64];
    assign y3 = fifo_in3[63:32];

    fp_sub subtract_x1(.a(x1), .b(x2), .result(diff_x1x2));
    fp_sub subtract_x2(.a(x2), .b(x3), .result(diff_x2x3));
    fp_sub subtract_x3(.a(x3), .b(x1), .result(diff_x3x1));
    fp_sub subtract_y1(.a(y1), .b(y2), .result(diff_y1y2));
    fp_sub subtract_y2(.a(y2), .b(y3), .result(diff_y2y3));
    fp_sub subtract_y3(.a(y3), .b(y1), .result(diff_y3y1));
    
    comp_3 x_compare( .type(0), 
                      .p1(x1), .p2(x2), .p3(x3),
                      .diff_p1p2(diff_x1x2), .diff_p2p3(diff_x2x3), .diff_p3p1(diff_x3x1), 
		              .minp(minx), .maxp(maxx), 
                      .diff_p1minp(diff_x1minx), .diff_p2minp(diff_x2minx), .diff_p3minp(diff_x3minx));

    comp_3 y_compare( .type(1), 
                      .p1(y1), .p2(y2), .p3(y3),
                      .diff_p1p2(diff_y1y2), .diff_p2p3(diff_y2y3), .diff_p3p1(diff_y3y1),
                      .minp(miny), .maxp(maxy), 
                      .diff_p1minp(diff_minyy1), .diff_p2minp(diff_minyy2), .diff_p3minp(diff_minyy3));
     

    // barycentric hax

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

    wire [31:0] ab;
    wire [31:0] abg;
    
    fp_mul alpha_mult_1(diff_y2y3, diff_x1x2, alpha_1);
    fp_mul alpha_mult_2(diff_y2y3, diff_x1x2, alpha_2);
    fp_mul beta_mult_1(diff_y3y1, diff_x2x3, beta_1);
    fp_mul beta_mult_2(diff_y2y3, diff_x3x1, beta_2);
    fp_mul gamma_mult_1(diff_y1y2, diff_x3x1, gamma_1);
    fp_mul gamma_mult_2(diff_y3y1, diff_x1x2, gamma_2);
    
    fp_sub alpha_sub(alpha_1, alpha_2, alpha_cons);
    fp_sub beta_sub(beta_1, beta_2, beta_cons);
    fp_sub gamma_sub(gamma_1, gamma_2, gamma_cons);

    fp_div alpha_div(cx1, alpha_cons, alpha);
    fp_div beta_div(cx2, beta_cons, beta);
    fp_div gamma_div(cx3, gamma_cons, gamma);

    fp_add final(alpha, beta, ab);
    fp_add final2(gamma, ab, abg);

    fp_mul mult_dy12(diff_y1y2, diff_x1minx, cy1_mul1);
    fp_mul mult_dx12(diff_x1x2, diff_minyy1, cy1_mul2);
    fp_mul mult_dy23(diff_y2y3, diff_x2minx, cy2_mul1);
    fp_mul mult_dx23(diff_x2x3, diff_minyy2, cy2_mul2);
    fp_mul mult_dy31(diff_y3y1, diff_x3minx, cy3_mul1);
    fp_mul mult_dx31(diff_x3x1, diff_minyy3, cy3_mul2); 

    fp_add add_cy1(cy1_mul1, cy1_mul2, cy1_init);
    fp_add add_cy2(cy2_mul1, cy2_mul2, cy2_init);
    fp_add add_cy3(cy3_mul1, cy3_mul2, cy3_init);

    fp_add reg_cy1(cy1, diff_x1x2, cy1_incr);
    fp_add reg_cy2(cy2, diff_x2x3, cy2_incr);
    fp_add reg_cy3(cy3, diff_x3x1, cy3_incr);

    fp_sub reg_cx1(cx1, diff_y1y2, cx1_decr);
    fp_sub reg_cx2(cx2, diff_y2y3, cx2_decr);
    fp_sub reg_cx3(cx3, diff_y3y1, cx3_decr);

    f2i float_int_minx(minx, minx_int);
    f2i float_int_maxx(maxx, maxx_int);
    f2i float_int_miny(miny, miny_int);
    f2i float_int_maxy(maxy, maxy_int);
  
    always @ (posedge clk)
    begin
	case (state)
	    0:
	    begin
		if (fifo_ready)
		begin
		    vertex_1 <= fifo_in1;
		    vertex_2 <= fifo_in2;
		    vertex_3 <= fifo_in3;
		    cy1_reg <= cy1_init;
		    cy2_reg <= cy2_init;
		    cy3_reg <= cy3_init;
		    state <= 1;
		    count_y <= miny_int - 1;
		end
	    end
	    1:	    
	    begin
		if (count_y <= maxy_int)
		begin
		    cx1_reg <= cy1;
		    cx2_reg <= cy2;
		    cx3_reg <= cy3;
		    cy1_reg <= cy1_incr;
		    cy2_reg <= cy2_incr;
		    cy3_reg <= cy3_incr;
		    state <= 2;
		    count_y <= count_y + 1;
		    count_x <= minx_int - 1;
		end
		else
		begin
		    state <= 0;
		    raster_ready <= 1;
		end
	    end
	    2: 
	    begin
		  if (count_x <= maxx_int)
		  begin
		      if (cx1_reg[31] == 0 && cx2_reg[31] == 0 && cx3_reg[31] == 0)
		        begin  
			      true <= 1;
			end
		      else
		        begin 
			      true <= 0;
		        end
            
		      /* FIXME insert into pixel buffer here */
		      state <= 2;
		      cx1_reg <= cx1_decr; 
		      cx2_reg <= cx2_decr; 
		      cx3_reg <= cx3_decr; 
		      count_x <= count_x + 1;
		  end
		  else
		      begin
		        state <= 1;
		      end
	    end
	    default:
	    begin
	    end
	endcase
    end	

endmodule
