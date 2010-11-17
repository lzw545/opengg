`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:56:16 11/01/2010 
// Design Name: 
// Module Name:    matrix_ctrl_testbench 
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

`timescale 10ns/1ns

module matrix_ctrl_testbench( 
    );
    
    reg             clk;
    reg             matrix_mode;                    // 1 bit: 0 = modelview; 1 = projection
    reg             pop_en;
    reg             push_en;
    reg    [127:0]  data_in;                               
    
    reg    [127:0]  write_in_0;                     // write in
    reg    [127:0]  write_in_1;
    reg    [127:0]  write_in_2;
    reg    [127:0]  write_in_3;
    
    reg             write_en;                       // write enable
    
    wire   [127:0]  peek_out_0;
    wire   [127:0]  peek_out_1;
    wire   [127:0]  peek_out_2;
    wire   [127:0]  peek_out_3;
    
    reg    [127:0]	row_a;
    reg    [127:0]	col_b;
    wire   [31:0]	rc_result;  

    
    always 
        #5 clk = ~clk;

    
    matrix_row_comp matrix_row_comp(    .result(rc_result), 
                                        .a(row_a), 
                                        .b(col_b));
    
    matrix_ctrl tester( .clk(clk), 
                        .matrix_mode(matrix_mode), 
                        .pop_en(pop_en), 
                        .push_en(push_en), 
                        .data_in(data_in), 
                        .write_en(write_en),
                        .peek_out_0(peek_out_0), 
                        .peek_out_1(peek_out_1), 
                        .peek_out_2(peek_out_2), 
                        .peek_out_3(peek_out_3),
                        .write_in_0(write_in_0), 
                        .write_in_1(write_in_1), 
                        .write_in_2(write_in_2), 
                        .write_in_3(write_in_3) );
     
     initial begin
        clk = 0;
        push_en <= 0;
        pop_en <= 0;
        write_en <= 0;
        matrix_mode <= 0;
        
        // push onto modelview stack
        #10
        push_en <= 1;
        data_in <= 128'h3F800000400000004040000040800000;
        #10
        push_en <= 0;
        data_in <= 128'h3F800000400000004040000040800000;
        #10
        data_in <= 128'h3F800000400000004040000040800000;
        #10
        data_in <= 128'h3F800000400000004040000040800000;
  
        
        // push onto projection stack
        #10
        matrix_mode <= 1;

        
     end

endmodule
