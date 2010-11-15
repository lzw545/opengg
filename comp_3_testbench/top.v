`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:04:09 11/13/2010 
// Design Name: 
// Module Name:    top 
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
module top(    );

  reg clk;

  always #10
    begin
      clk = ~clk;
    end
    
`define ONE 32'h3F80_0000
`define TWO 32'h4000_0000
`define TEN 32'h4120_0000

`define NEG_ONE 32'hBF80_0000
`define EIGHT 32'h4100_0000
`define NEG_EIGHT 32'hC10_0000
`define NINE 32'h4110_0000
`define NEG_EIGHT 32'hC110_0000

  comp_3 test0( .type(0), 
                .p1(32'h3F80_0000), .p2(32'h4000_0000), .p3(32'h4120_0000),
                .diff_p1p2(32'hBF80_0000), .diff_p2p3(32'hC10_0000), .diff_p3p1(32'h4110_0000) ); 
	            //.minp(minx), .maxp(maxx), 
                //.diff_p1minp(diff_x1minx), .diff_p2minp(diff_x2minx), .diff_p3minp(diff_x3minx));

  comp_3 test1( .type(1), 
                .p1(32'h3F80_0000), .p2(32'h4000_0000), .p3(32'h4120_0000),
                .diff_p1p2(32'hBF80_0000), .diff_p2p3(32'hC10_0000), .diff_p3p1(32'h4110_0000) ); 
                //.minp(miny), .maxp(maxy), 
                //.diff_p1minp(diff_minyy1), .diff_p2minp(diff_minyy2), .diff_p3minp(diff_minyy3));
  
  initial
    begin
      clk = 0;
    end
  
endmodule
