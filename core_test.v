`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:58:58 11/28/2010 
// Design Name: 
// Module Name:    core_test 
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
module core_test(
    );

    reg clk1;
    reg clk2;
    reg bram_clk;
    
    wire [31:0] bram_a_din;
    
    always 
        #10 clk1 = ~clk1;
    always 
        #5 clk2 = ~clk2;
    always 
        #10 bram_clk = ~bram_clk;
    
    initial begin
        clk1 <= 0;
        clk2 <= 0;
        bram_clk <= 0;
        
        
    end
    
    gl_core_internal core ( .clk1(clk1), 
                            .clk2(clk2), 
                            .reset(1'b0), 
                            .bram_a_clk(bram_clk), 
                            .bram_a_en(1'b1), 
                            .bram_a_write_en(4'b0), 
                            .bram_a_rst(1'b0), 
                            .bram_a_addr(32'h0), 
                            .bram_a_din(bram_a_din), 
                            .bram_a_dout(32'h0)
                          );

endmodule
