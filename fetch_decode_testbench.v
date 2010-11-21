`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:59:10 11/12/2010 
// Design Name: 
// Module Name:    fetch_decode_testbench 
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
module fetch_decode_testbench(
    );

    reg             clk;
    
    wire [31:0]     bram_read_0;
    wire [31:0]     bram_read_1;
    wire [31:0]     bram_read_2;
    wire [31:0]     bram_read_3;
    
    wire [31:0]     v_x;
    wire [31:0]     v_y;
    wire [31:0]     v_width;
    wire [31:0]     v_height;
    
    wire [31:0]     decode_addr_out;
    wire            push_en;
    wire            pop_en;
    wire [31:0]     color_in;
    wire [31:0]     color_out;
    wire            matrix_load_en;
    wire            matrix_load_id_en;
    wire            matrix_mul_en;
    wire            matrix_mul_type;
    wire            matrix_mode_out;
    wire            perspective_div_en;
    wire [31:0]     fetch_inst_in;
    wire [31:0]     fetch_inst_out;
    wire [31:0]     fetch_inst_addr;
    wire [31:0]     decode_bram_addr;
    
    reg             fetch_rst;
    
    dummy_bram bram(.addr1(fetch_inst_addr),
                    .addr2(decode_addr_out),
                    .read0(fetch_inst_in),
                    .read1(bram_read_0), 
                    .read2(bram_read_1), 
                    .read3(bram_read_2), 
                    .read4(bram_read_3));
    
    
    gl_fetch fetch(.inst_out(fetch_inst_out), 
                   .inst_in(fetch_inst_in), 
                   .inst_addr(fetch_inst_addr), 
                   .decode_bram_addr(decode_bram_addr),
                   .clk(clk),
                   .stall(stall), 
                   .reset(fetch_rst));
    
    wire [7:0]  opcode;
    wire [22:0] imm;
    wire        inst_type;
    
    assign  opcode      = fetch_inst_out[7:0];
    assign  imm         = fetch_inst_out[30:8];
    assign  inst_type   = fetch_inst_out[31];
    
    gl_decode  dc (.clk(clk), .opcode(opcode), .imm(imm), .type(inst_type), 
                  .bram_addr_out(decode_addr_out),
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
                  .color_in(color_in), 
                  .color_out(color_out),
                  .matrix_load_en(matrix_load_en), 
                  .matrix_load_id_en(matrix_load_id_en),
                  .matrix_mul_en(matrix_mul_en), 
                  .matrix_mul_type(matrix_mul_type), 
                  .matrix_mode_out(matrix_mode_out),
                  .perspective_div_en(perspective_div_en),
                  .stall(stall) );
    
    always 
        #5 clk = ~clk;
    
    initial
    begin
        clk = 0;
        fetch_rst <= 0;
        #5
        fetch_rst <= 1;
        #10 
        fetch_rst <= 0;
    end

endmodule
