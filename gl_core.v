                    `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:16:13 10/15/2010 
// Design Name: 
// Module Name:    fetch 
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
`include "gl_defines.v"

module gl_core_internal(clk1, clk2, reset, 
                        bram_a_clk, bram_a_en, bram_a_write_en, bram_a_rst, 
                        bram_a_addr, bram_a_din, bram_a_dout,
                        pixel_fifo_rd_clk, pixel_fifo_dout, pixel_fifo_empty, pixel_fifo_rd_en);

    
    input           clk1;                           // coordinate transform clk
    input           clk2;                           // raster clk
    input           reset;                          // pipeline reset

    /* BRAM Control Signals from PLB (Port A) */
    input           bram_a_clk;                     // bram clk
    input           bram_a_en;                      // bram enable
    input  [3:0]    bram_a_write_en;                // bram write enable
    input           bram_a_rst;                     // bram reset
    input  [31:0]   bram_a_addr;                    // bram address port
    output [31:0]   bram_a_din;                     // data from bram
    input  [31:0]   bram_a_dout;                    // data to bram
   
    /* Pixel Fifo Control */
    input           pixel_fifo_rd_clk;              // clk
    output [95:0]   pixel_fifo_dout;                // data out
    output          pixel_fifo_empty;               // fifo empty
    input           pixel_fifo_rd_en;               // dequeue signal
    
    /* BRAM Control (Port B) */
    wire            bram_mux_sel;
    wire [31:0]     bram_read_0;
    wire [31:0]     bram_read_1;
    wire [31:0]     bram_read_2;
    wire [31:0]     bram_read_3;
    
    /* Viewport Registers */
    wire [31:0]     v_x;                            //
    wire [31:0]     v_y;                            //
    wire [31:0]     v_width;                        // widith/2
    wire [31:0]     v_height;                       // height/2
        
    /* Fetch Control Signals */
    wire [31:0]     fetch_inst_in;                  // Bram read 0
    wire [31:0]     fetch_inst_out;                 // Fetch instruction out
    wire [31:0]     fetch_inst_addr;                // BRAM addr 1   
    wire [31:0]     decode_bram_addr;               // bram addr to be used by decode
    
    wire [31:0]     decode_addr_out;
    wire            perspective_div_en;
    wire            fifo_write_en;
    
    wire            push_en;
    wire            pop_en;
    wire            matrix_load_en;
    wire            matrix_load_id_en;
    wire            matrix_mul_en;
    wire            matrix_mul_type;
    wire [31:0]     matrix_mul_addr_out;
    wire            decode_matrix_mode_out;
    wire            matmul_matrix_mode_out;
    wire            matrix_mode_mux_sel;
    
    wire [127:0]    peek_out_0;                     // matrix_ctrl peek
    wire [127:0]    peek_out_1;                     // matrix_ctrl peek
    wire [127:0]    peek_out_2;                     // matrix_ctrl peek
    wire [127:0]    peek_out_3;                     // matrix_ctrl peek
    wire [127:0]    mc_write_in_0;                  // matrix_ctrl write in
    wire [127:0]    mc_write_in_1;                  // matrix_ctrl write in
    wire [127:0]    mc_write_in_2;                  // matrix_ctrl write in
    wire [127:0]    mc_write_in_3;                  // matrix_ctrl write in
    wire [127:0]    mc_data_in;                     // matrix_ctrl input line for push
    
    /* Asynchronous BRAM */
    async_inst_bram inst_bram ( .BRAM_rst(bram_a_rst), 
                                .BRAM_clk(bram_a_clk), 
                                .BRAM_en(bram_a_en), 
                                .BRAM_wen(bram_a_write_en), 
                                .BRAM_addr(bram_a_addr), 
                                .BRAM_din(bram_a_din), 
                                .BRAM_dout(bram_a_dout),
                                .addr1(fetch_inst_addr),
                                .addr2(bram_mux_sel ? matrix_mul_addr_out : decode_addr_out),
                                .read0(fetch_inst_in),
                                .read1(bram_read_0), 
                                .read2(bram_read_1), 
                                .read3(bram_read_2), 
                                .read4(bram_read_3));
    
    /*
    dummy_bram bram(.addr1(fetch_inst_addr),
                    .addr2(bram_mux_sel ? matrix_mul_addr_out : decode_addr_out),
                    .read0(fetch_inst_in),
                    .read1(bram_read_0), 
                    .read2(bram_read_1), 
                    .read3(bram_read_2), 
                    .read4(bram_read_3));
    */
    
    gl_fetch fetch(.inst_out(fetch_inst_out), 
                   .inst_in(fetch_inst_in), 
                   .inst_addr(fetch_inst_addr), 
                   .decode_bram_addr(decode_bram_addr),
                   .clk(clk1),
                   .stall(stall), 
                   .reset(reset));
    
    wire [7:0]  opcode;
    wire [22:0] imm;
    wire        inst_type;
    
    wire [31:0] red_out;
    wire [31:0] green_out;
    wire [31:0] blue_out;
    
    assign  opcode      = fetch_inst_out[7:0];
    assign  imm         = fetch_inst_out[30:8];
    assign  inst_type   = fetch_inst_out[31];
    
    gl_decode  dc (.rst(reset), .clk(clk1), .opcode(opcode), .imm(imm), .type(inst_type), 
                  .bram_addr_out(decode_addr_out),
                  .bram_mux_sel(bram_mux_sel),
                  .bram_addr_in(decode_bram_addr),
                  .bram_read_in_0(bram_read_0), 
                  .bram_read_in_1(bram_read_1), 
                  .bram_read_in_2(bram_read_2), 
                  .bram_read_in_3(bram_read_3),
                  .viewport_x(v_x), 
                  .viewport_y(v_y), 
                  .viewport_width(v_width), 
                  .viewport_height(v_height),
                  .push_en(push_en), 
                  .pop_en(pop_en), 
                  .red_out(red_out),
                  .green_out(green_out),
                  .blue_out(blue_out),
                  .matrix_load_en(matrix_load_en), 
                  .matrix_load_id_en(matrix_load_id_en),
                  .matrix_mul_en(matrix_mul_en), 
                  .matrix_mul_type(matrix_mul_type), 
                  .matrix_mode_out(decode_matrix_mode_out),
                  .matrix_mode_mux_sel(matrix_mode_mux_sel),
                  .perspective_div_en(perspective_div_en),
                  .fifo_write_en(fifo_write_en),
                  .stall(stall) );
    
    
    wire [127:0] data_in;
    wire [127:0] vertex_result;
    assign data_in = {bram_read_0, bram_read_1, bram_read_2, bram_read_3};
    
    matrix_ctrl matctr( .clk(clk1), 
                        .matrix_mode(decode_matrix_mode_out), 
                        .pop_en(pop_en), 
                        .push_en(push_en), 
                        .load_en(matrix_load_en),
                        .load_id_en(matrix_load_id_en),
                        .data_in(data_in), 
                        .write_en(matrix_ctrl_write_en),
                        .peek_out_0(peek_out_0), 
                        .peek_out_1(peek_out_1), 
                        .peek_out_2(peek_out_2), 
                        .peek_out_3(peek_out_3),
                        .write_in_0(mc_write_in_0), 
                        .write_in_1(mc_write_in_1), 
                        .write_in_2(mc_write_in_2), 
                        .write_in_3(mc_write_in_3) );
    
    
    matrix_mul matmul(  .clk(clk1), 
                        .en(matrix_mul_en), 
                        .matrix_mode_in(matrix_mode), 
                        .matrix_mode_out(matmul_matrix_mode_out),
                        .mul_type(matrix_mul_type), 
                        .bram_addr_in(decode_addr_out), 
                        .bram_addr_out(matrix_mul_addr_out), 
                        .bram_read_in_0(bram_read_0), 
                        .bram_read_in_1(bram_read_1), 
                        .bram_read_in_2(bram_read_2), 
                        .bram_read_in_3(bram_read_3),
                        .matrix_peek_0(peek_out_0), 
                        .matrix_peek_1(peek_out_1), 
                        .matrix_peek_2(peek_out_2), 
                        .matrix_peek_3(peek_out_3),
                        .matrix_write_en(matrix_ctrl_write_en), 
                        .matrix_write_out_0(mc_write_in_0), 
                        .matrix_write_out_1(mc_write_in_1), 
                        .matrix_write_out_2(mc_write_in_2), 
                        .matrix_write_out_3(mc_write_in_3),
                        .vector_write_out(vertex_result) );
     
    /* Perspective Division */
    wire [31:0]         pd_x;
    wire [31:0]         pd_y;
    wire [31:0]         pd_z;
    wire [31:0]         pd_w;
    
    wire [31:0]         pd_result_x;
    wire [31:0]         pd_result_y;
    wire [31:0]         pd_result_z;
    
    reg  [31:0]         pd_vert_x;
    reg  [31:0]         pd_vert_y;
    reg  [31:0]         pd_vert_z;
    
    reg  [31:0]         pd_red;
    reg  [31:0]         pd_green;
    reg  [31:0]         pd_blue;

    assign pd_x = vertex_result[127:96];
    assign pd_y = vertex_result[95:64];
    assign pd_z = vertex_result[63:32];
    assign pd_w = vertex_result[31:0];
    /*
    fp_div pd_div1(.a(pd_x), .b(pd_w), .result(pd_result_x));
    fp_div pd_div2(.a(pd_y), .b(pd_w), .result(pd_result_y));
    fp_div pd_div3(.a(pd_z), .b(pd_w), .result(pd_result_z));
    */
    always @ (posedge clk1)
    begin
        /*if (perspective_div_en)
        begin
            pd_vert_x <= pd_result_x;
            pd_vert_y <= pd_result_y;
            pd_vert_z <= pd_result_z;

            // save color
            pd_red    <= red_out;
            pd_green  <= green_out;
            pd_blue   <= blue_out;
        end
        else*/
        begin
            pd_vert_x <= pd_x;
            pd_vert_y <= pd_y;
            pd_vert_z <= pd_z;
            
            // save color
            pd_red    <= red_out;
            pd_green  <= green_out;
            pd_blue   <= blue_out;
        end
    end
    
    /* Viewport Transformation */
    
    wire [31:0] vt_mulx_result;
    wire [31:0] vt_muly_result;
    wire [31:0] vt_addx_result;
    wire [31:0] vt_addy_result;
    wire [31:0] vt_addx2_result;
    wire [31:0] vt_addy2_result;
    
    fp_mul vt_mulx  ( .a(pd_vert_x), 
                      .b(v_width), 
                      .result(vt_mulx_result));
                      
    fp_add vt_addx  ( .a(vt_mulx_result), 
                      .b(v_width), 
                      .result(vt_addx_result));
                      
    fp_add vt_addx2 ( .a(v_x), 
                      .b(vt_addx_result),
                      .result(vt_addx2_result));
    
    fp_mul vt_muly  ( .a(pd_vert_y),
                      .b(v_height),
                      .result(vt_muly_result));
                      
    fp_add vt_addy  ( .a(vt_muly_result), 
                      .b(v_height),
                      .result(vt_addy_result));
                      
    fp_add vt_addy2 ( .a(v_y),
                      .b(vt_addy_result),
                      .result(vt_addy2_result));
    
    wire [95:0] vertex_fifo_in;
    wire [95:0] color_fifo_in;
    
    assign vertex_fifo_in = {vt_addx2_result, vt_addy2_result, 32'h0};
    assign color_fifo_in = {pd_red, pd_green, pd_blue};
    
    reg [95:0] vertex_end;
    reg [95:0] color_end;
    
    
    always @ (posedge clk1)
    begin
        if (fifo_write_en)
        begin
            vertex_end <= vertex_fifo_in;
            color_end <= color_fifo_in;
        end
    end
    
    
    /*********************************************/
    /*  RASTERIZER                               */
    /*********************************************/   
    
    wire [95:0] vin1;
    wire [95:0] vin2;
    wire [95:0] vin3;

    wire [95:0] cin1;
    wire [95:0] cin2;
    wire [95:0] cin3;

    wire dequeue;

    wire [95:0] color_rd_data;
    wire [95:0] vertex_rd_data;

    wire color_empty;
    wire color_full;
    wire vertex_empty;
    wire vertex_full;

    wire vertex_rd_en;
    wire color_rd_en;

    wire in_rdy;
    wire out_rdy;  

    /* Pixel Buffer Control */
    wire [95:0] pixel_data;
    wire pixel_wen;
    wire pixel_full;

    
    fifo_96 vertex_fifo(.rst(reset),
                        .wr_clk(clk1),
                        .rd_clk(clk2),
                        .din(vertex_fifo_in),
                        .wr_en(fifo_write_en),
                        .rd_en(vertex_rd_en),
                        .dout(vertex_rd_data),
                        .full(vertex_full),
                        .empty(vertex_empty) 
                      );
                        
    fifo_96 color_fifo( .rst(reset),
                        .wr_clk(clk1),
                        .rd_clk(clk2),
                        .din(color_fifo_in),
                        .wr_en(fifo_write_en),
                        .rd_en(color_rd_en),
                        .dout(color_rd_data),
                        .full(color_full),
                        .empty(color_empty) 
                      );
    
    fifo_reg fifo_peek(   .clk(clk2), 
                          .ready(in_rdy), 
                          .color_empty(color_empty), 
                          .vertex_empty(vertex_empty), 
                          .vertex_in(vertex_rd_data), 
                          .color_in(color_rd_data),
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
    

    
    gl_rasterizer GL_RAS(   .clk(clk2), 
                            .full(pixel_full),
                            .wr_data(pixel_data), 
                            .wr_en(pixel_wen),
                            .raster_ready(dequeue), 
                            .fifo_ready(in_rdy),
                            .vertex_in1(vin1),
                            .vertex_in2(vin2),
                            .vertex_in3(vin3),
                            .color_in1(cin1),
                            .color_in2(cin2),
                            .color_in3(cin3)
                       );
                       
                       
    /*********************************************/
    /*  Output to FBWriter                       */
    /*********************************************/   
    
    fifo_96 pixel_fifo( .rst(reset),
                        .wr_clk(clk2),
                        .rd_clk(pixel_fifo_rd_clk),
                        .din(pixel_data),
                        .wr_en(pixel_wen),
                        .rd_en(pixel_fifo_rd_en),
                        .dout(pixel_fifo_dout),
                        .full(pixel_full),
                        .empty(pixel_fifo_empty) 
                      );
    
    
endmodule




                
