






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

module gl_core_internal(clk1, clk2, reset, bram_enable, bram_rst, bram_addr_out, bram_data_in, bram_addr);

    
    input           clk1;                           // coordinate transform clk
    input           clk2;                           // raster clk
    input           reset;                          // pipeline reset

    /* BRAM Control Signals */
    output          bram_enable;                    // bram enable
    output          bram_rst;                       // bram reset
    output [31:0]   bram_addr;                      // bram address port
    input  [31:0]   bram_data_in;                   // data from bram
    
    output reg [31:0] bram_addr_out;                // bram address to read from
    wire [31:0]     bram_read_0;                    // bram data read 
    wire [31:0]     bram_read_1;                    // 
    wire [31:0]     bram_read_2;                    // 
    wire [31:0]     bram_read_3;                    // 
    
    /* Matrix Controller Signals */
    wire            mul_en;                         // matrix multiply enable
    wire            matrix_mode;                    // matrix mode
    wire            mul_type;                       // matrix multiply type (4x4 * 4x4 (1) or 4x4 * 4x1 (0))
    
    wire            matrix_mul_en;                  // matrix multiply enable
    wire            matrix_mode_out;                // connect between mat_mul.matrix_mode_out and mat_ctrl
    wire            matrix_mul_type;                // matrix multiply type (4x4 * 4x4 (1) or 4x4 * 4x1 (0))
    wire            matrix_ctrl_write_en;           // matrix write enable
    
    wire [127:0]    vertex_result;                  // 
    
    wire [127:0]    peek_out_0;                     // matrix_ctrl peek
    wire [127:0]    peek_out_1;                     // matrix_ctrl peek
    wire [127:0]    peek_out_2;                     // matrix_ctrl peek
    wire [127:0]    peek_out_3;                     // matrix_ctrl peek
    wire [127:0]    mc_write_in_0;                  // matrix_ctrl write in
    wire [127:0]    mc_write_in_1;                  // matrix_ctrl write in
    wire [127:0]    mc_write_in_2;                  // matrix_ctrl write in
    wire [127:0]    mc_write_in_3;                  // matrix_ctrl write in
    wire [127:0]    mc_data_in;                     // matrix_ctrl input line for push

    wire [31:0]     v_x;
    wire [31:0]     v_y;
    wire [31:0]     v_width;
    wire [31:0]     v_height;
    
    /* Viewport Registers */
    
    
    /* Pipeline Control Signals */
    wire            stall;                          // fetch stall
    
    
    /*********************************************/
    /*  FETCH                                    */
    /*********************************************/
    
    /*wire  [31:0]    inst;                           // instruction fetched from BRAM
    
    gl_fetch fetch( .inst_out(inst), 
                    .inst_in(bram_data_in), 
                    .inst_addr(bram_addr_out),
                    .clk(clk), 
                    .stall(stall), 
                    .reset(reset));*/
    
    wire [31:0]     fetch_inst_in;                   // instruction read from BRAM (addr 1)
    wire [31:0]     fetch_inst_out;                  // instruction output to decode
    wire [31:0]     fetch_inst_addr;                 // bram address to read instruction (addr 1)
    wire [31:0]     decode_bram_addr;                // bram address of data
    
    gl_fetch fetch(.inst_out(fetch_inst_out), 
                   .inst_in(fetch_inst_in), 
                   .inst_addr(fetch_inst_addr), 
                   .decode_bram_addr(decode_bram_addr),
                   .clk(clk1),
                   .stall(stall), 
                   .reset(fetch_rst));
    
    /*********************************************/
    /*  DECODE                                   */
    /*********************************************/

    wire [7:0]  opcode;
    wire [22:0] imm;
    wire        inst_type;
    
    wire [31:0] red_out;
    wire [31:0] green_out;
    wire [31:0] blue_out;
    
    wire        matrix_load_en;
    wire        matrix_load_id_en;
    wire        pd_en;
    
    assign  opcode      = fetch_inst_out[7:0];
    assign  imm         = fetch_inst_out[30:8];
    assign  inst_type   = fetch_inst_out[31];
    
    gl_decode  dc (.clk(clk1), .opcode(opcode), .imm(imm), .type(inst_type), 
                  .bram_addr_out(decode_addr_out),
                  .bram_addr_in(decode_bram_addr),
                  .bram_read_in_0(bram_read_0), 
                  .bram_read_in_1(bram_read_1), 
                  .bram_read_in_2(bram_read_2), 
                  .bram_read_in_3(bram_read_3),
                  .viewport_x(v_min_x), 
                  .viewport_y(v_min_y), 
                  .viewport_width(v_max_x), 
                  .viewport_height(v_max_y),
                  .push_en(push_en), 
                  .pop_en(pop_en), 
                  .red_out(red_out),
                  .green_out(green_out),
                  .blue_out(blue_out),
                  .matrix_load_en(matrix_load_en), 
                  .matrix_load_id_en(matrix_load_id_en),
                  .matrix_mul_en(matrix_mul_en), 
                  .matrix_mul_type(matrix_mul_type), 
                  .matrix_mode_out(matrix_mode_out),
                  .perspective_div_en(pd_en),
                  .stall(stall) );
    
    /*
    wire [7:0]  opcode;
    wire [22:0] imm;
    wire        inst_type;
    
    assign  opcode      = inst[7:0];
    assign  imm         = inst[30:8];
    assign  inst_type   = inst[31];
    
    gl_decode decode(   .opcode(opcode),
                        .imm(imm),
                        .type(inst_type),
                        .clk(clk), 
                        .stall(stall)); */

    /*********************************************/
    /*  EXECUTE                                  */
    /*********************************************/   
        
    matrix_ctrl matctr( .clk(clk1), 
                        .matrix_mode(matrix_mode_out), 
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
                        .en(mul_en), 
                        .matrix_mode_in(matrix_mode), 
                        .matrix_mode_out(matrix_mode_out),
                        .mul_type(mul_type), 
                        .bram_addr_in(bram_addr_in), 
                        .bram_addr_out(bram_addr_out), 
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
    
    wire [31:0]         pd_result_w;
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
    
    fp_div pd_div1(.a(pd_x), .b(pd_w), .result(pd_result_x));
    fp_div pd_div2(.a(pd_y), .b(pd_w), .result(pd_result_y));
    fp_div pd_div3(.a(pd_z), .b(pd_w), .result(pd_result_z));
    
    always @ (posedge clk1)
    begin
        if (pd_en)
        begin
            pd_vert_x <= pd_result_x;
            pd_vert_y <= pd_result_y;
            pd_vert_z <= pd_result_z;
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
    
    fp_mul vt_mulx  (.a(pd_vert_x), .b(v_width), .result(vt_mulx_result));
    fp_add vt_addx  (.a(vt_mulx_result), .b(v_width), .result(vt_addx_result));
    fp_add vt_addx2 (.a(v_x), .b(vt_addx_result), .result(vt_addx2_result));
    
    fp_mul vt_muly  (.a(pd_vert_y), .b(v_width), .result(vt_muly_result));
    fp_add vt_addy  (.a(vt_muly_result), .b(v_width), .result(vt_addy_result));
    fp_add vt_addy2 (.a(v_y), .b(vt_addy_result), .result(vt_addy2_result));
    
    wire [95:0] vertex_fifo_in;
    wire [95:0] color_fifo_in;
    
    assign vertex_fifo_in = {vt_addx2_result, vt_addy_result, 32'h0};
    assign color_fifo_in = {pd_red, pd_green, pd_blue};
    /*
    fifo_96 vertex_fifo(.rst(0),
                        .wr_clk(clk1),
                        .rd_clk(clk2),
                        .din(vertex_fifo_in),
                        .wr_en(),
                        .rd_en(),
                        .dout(),
                        .full(),
                        .empty() );
                        
    fifo_96 color_fifo( .rst(0),
                        .wr_clk(clk1),
                        .rd_clk(clk2),
                        .din(color_fifo_in),
                        .wr_en(),
                        .rd_en(),
                        .dout(),
                        .full(),
                        .empty() );
    */
    reg [31:0] x_result;
    reg [31:0] y_result;
    reg [31:0] z_result;
    
    always @ (posedge clk1)
    begin
        //if (vt_en)
        begin
             /*// write vertex to fifo
             x_result <= vt_addx2_result;
             y_result <= vt_addy2_result;
             z_result <= 
             // write color to fifo
             red_result   <=
             green_result <=
             blue_result  <= */
        end
    end
    
    assign bram_enable = 1;
    assign bram_rst = 0;
    
    
endmodule




                
