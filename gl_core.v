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

module gl_core_internal(clk, reset, bram_enable, bram_rst, bram_addr_out, bram_data_in);

    
    input           clk,                            // clock signal
                    reset;                          // pipeline reset

    /* BRAM Control Signals */
    output          bram_enable;                    // bram enable
    output          bram_rst;                       // bram reset
    output [31:0]   bram_addr;                      // bram address port
    input  [31:0]   bram_data_in;                   // data from bram
    
        
    reg [31:0]      bram_addr_in;                   // bram address in (from decode to matrix mul)
    
    output reg [31:0] bram_addr_out;                // bram address to read from
    wire [31:0]     bram_read_0;                    // bram data read 
    wire [31:0]     bram_read_1;                    // 
    wire [31:0]     bram_read_2;                    // 
    wire [31:0]     bram_read_3;                    // 
    
    /* Matrix Controller Signals */
    wire            mul_en;                         // matrix multiply enable
    wire            matrix_mode;                    // matrix mode
    wire            mul_type;                       // matrix multiply type (4x4 * 4x4 (1) or 4x4 * 4x1 (0))
    
    wire            matrix_mul_en,                  // matrix multiply enable
                    matrix_mode_out,                // connect between mat_mul.matrix_mode_out and mat_ctrl
                    matrix_mul_type,                // matrix multiply type (4x4 * 4x4 (1) or 4x4 * 4x1 (0))
                    matrix_ctrl_write_en;           // matrix write enable
    
    wire [127:0]    peek_out_0,                     // matrix_ctrl peek
                    peek_out_1,                     // matrix_ctrl peek
                    peek_out_2,                     // matrix_ctrl peek
                    peek_out_3,                     // matrix_ctrl peek
                    mc_write_in_0,                  // matrix_ctrl write in
                    mc_write_in_1,                  // matrix_ctrl write in
                    mc_write_in_2,                  // matrix_ctrl write in
                    mc_write_in_3,                  // matrix_ctrl write in
                    mc_data_in;                     // matrix_ctrl input line for push

    
    /* Viewport Registers */
    
    
    /* Color Registers */
    reg [31:0]      curr_color_reg;                 // register to hold the current color set by gl_color
    
    /* Pipeline Control Signals */
    wire            stall;                          // stall
    
    
    /*********************************************/
    /*  FETCH                                    */
    /*********************************************/
    
    wire  [31:0]    inst;                           // instruction fetched from BRAM
    
    gl_fetch fetch( .inst_out(inst), 
                    .inst_in(bram_data_in), 
                    .inst_addr(bram_addr_out),
                    .clk(clk), 
                    .stall(stall), 
                    .reset(reset));
    
    /*********************************************/
    /*  DECODE                                   */
    /*********************************************/
           
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
                        .stall(stall));

    /*********************************************/
    /*  EXECUTE                                  */
    /*********************************************/   
        
    matrix_ctrl matctr( .clk(clk), 
                        .matrix_mode(matrix_mode_out), 
                        .pop_en(pop_en), 
                        .push_en(push_en), 
                        .data_in(data_in), 
                        .data_out(data_out),
                        .write_en(matrix_ctrl_write_en),
                        .peek_out_0(peek_out_0), 
                        .peek_out_1(peek_out_1), 
                        .peek_out_2(peek_out_2), 
                        .peek_out_3(peek_out_3),
                        .write_in_0(mc_write_in_0), 
                        .write_in_1(mc_write_in_1), 
                        .write_in_2(mc_write_in_2), 
                        .write_in_3(mc_write_in_3) );
    
    
    matrix_mul matmul(  .clk(clk), 
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
                        .matrix_write_out_3(mc_write_in_3) );
    
    
    /* Perspective Division */
    wire [31:0]         pd_x;
    wire [31:0]         pd_y;
    wire [31:0]         pd_z;
    wire [31:0]         pd_w;
    
    reg  [31:0]         pd_vert_x;
    reg  [31:0]         pd_vert_y;
    reg  [31:0]         pd_vert_z;
    
    //mc_write_in_0[31:0];
    
    fp_div pd_div1(.a(pd_x), .b(pd_w), .result(pd_result_x));
    fp_div pd_div2(.a(pd_y), .b(pd_w), .result(pd_result_y));
    fp_div pd_div3(.a(pd_z), .b(pd_w), .result(pd_result_z));
    
    always @ (posedge clk)
    begin
        if (pd_en)
        begin
            pd_vert_x <= pd_result_x;
            pd_vert_y <= pd_result_y;
            pd_vert_z <= pd_result_z;
        end
    end
    
    /* Viewport Transformation */
    
    
    fp_sub
    
    assign bram_enable = 1;
    assign bram_rst = 0;
    
    
endmodule




                
