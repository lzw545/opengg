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
    
    dummy_bram bram(.addr(bram_addr_out), 
                    .read0(bram_read_0), 
                    .read1(bram_read_1), 
                    .read2(bram_read_2), 
                    .read3(bram_read_3));
    
    gl_fetch fetch(.inst_out(fetch_inst_out), 
                   .inst_in(fetch_inst_in), 
                   .inst_addr(fetch_inst_addr), 
                   .clk(clk),
                   .stall(stall), 
                   .reset(fetch_rst));
    
    wire [7:0]  opcode;
    wire [22:0] imm;
    wire        inst_type;
    
    assign  opcode      = fetch_inst_out[7:0];
    assign  imm         = fetch_inst_out[30:8];
    assign  inst_type   = fetch_inst_out[31];
    
    gl_decode    (.clk(clk), .opcode(opcode), .imm(imm), .type(inst_type), 
                  .bram_addr_out,
                  .bram_read_in_0, bram_read_in_1, bram_read_in_2, bram_read_in_3,
                  .viewport_min_x, viewport_min_y, viewport_max_x, viewport_max_y,
                  .push_en, pop_en, 
                  .color_in, color_out,
                  .matrix_load_en, matrix_load_id_en,
                  .matrix_mul_en, matrix_mul_type, matrix_mode_out,
                  .perspective_div_en,
                  .stall);
    
    always 
        #5 clk = ~clk;

endmodule
