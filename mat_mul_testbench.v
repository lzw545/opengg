`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:43:00 11/02/2010 
// Design Name: 
// Module Name:    mat_mul_testbench 
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
module mat_mul_testbench(
    );
    
    reg             clk,
                    mul_en,
                    matrix_mode,
                    mul_type;
    
    wire            matrix_mode_out,
                    write_en;
    
    wire [127:0]    peek_out_0,
                    peek_out_1,
                    peek_out_2,
                    peek_out_3,
                    write_in_0,
                    write_in_1,
                    write_in_2,
                    write_in_3,
                    data_in,
                    data_out;
    
    reg [31:0]      bram_addr_in;
    
    wire [31:0]     bram_addr_out,
                    bram_read_0,
                    bram_read_1,
                    bram_read_2,
                    bram_read_3;
                    
    always 
        #5 clk = ~clk;
    
    dummy_bram bram(.addr(bram_addr_out), 
                    .read0(bram_read_0), 
                    .read1(bram_read_1), 
                    .read2(bram_read_2), 
                    .read3(bram_read_3));
    
    
    matrix_ctrl tester( .clk(clk), 
                        .matrix_mode(matrix_mode_out), 
                        .pop_en(pop_en), 
                        .push_en(push_en), 
                        .data_in(data_in), 
                        .data_out(data_out),
                        .write_en(write_en),
                        .peek_out_0(peek_out_0), 
                        .peek_out_1(peek_out_1), 
                        .peek_out_2(peek_out_2), 
                        .peek_out_3(peek_out_3),
                        .write_in_0(write_in_0), 
                        .write_in_1(write_in_1), 
                        .write_in_2(write_in_2), 
                        .write_in_3(write_in_3) );
    
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
                        .matrix_write_en(write_en), 
                        .matrix_write_out_0(write_in_0), 
                        .matrix_write_out_1(write_in_1), 
                        .matrix_write_out_2(write_in_2), 
                        .matrix_write_out_3(write_in_3) );
     
     initial begin
        clk <= 0;
        mul_en <= 0;
        mul_type <= 1;
        matrix_mode <= 0;
        bram_addr_in <= 32'h0;
        #10
        mul_en <= 1;
        #10
        mul_en <= 0;
        
     
     end
endmodule
