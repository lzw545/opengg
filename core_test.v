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
    
    reg  [31:0] test;
    wire [0:31] test1;
    wire [31:0] test2;
    wire [15:0] test3;
    wire [0:15] test4;
    
    wire [31:0] bram_a_din;
    wire [95:0] pixel_data;
    
    wire fifo_empty;
    reg pixel_fifo_rd_en;
    
    assign test1 = test;
    assign test2 = test;
    assign test3 = test2[15:0];
    assign test4 = test1[16:31];
    
    always 
        #10 clk1 = ~clk1;
    always 
        #5 clk2 = ~clk2;
    always 
        #10 bram_clk = ~bram_clk;
    
    reg state;
    
    initial begin
        clk1 <= 0;
        clk2 <= 0;
        bram_clk <= 0;
        test <= 32'hABCD;
        pixel_fifo_rd_en <= 0;
        state <= 0;
    end
    
    
    
    always @ (posedge clk1)
    begin
        if (state == 0)
        begin
            if (~fifo_empty)
            begin
                pixel_fifo_rd_en <= 1;
                state <= 1;
            end
        end
        else if (state == 1)
        begin
            pixel_fifo_rd_en <= 0;
            state <= 0;
        end
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
                            .bram_a_dout(32'h0),
                            .pixel_fifo_rd_clk(clk1), 
                            .pixel_fifo_dout(pixel_data), 
                            .pixel_fifo_empty(fifo_empty), 
                            .pixel_fifo_rd_en(pixel_fifo_rd_en)
                          );

endmodule
