`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:03:31 11/10/2010 
// Design Name: 
// Module Name:    comp_3 
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
module comp_3( type, p1, p2, p3, diff_p1p2, diff_p2p3, diff_p3p1, minp, maxp,
	       diff_p1minp, diff_p2minp, diff_p3minp );

    input type;

    input [31:0] p1;
    input [31:0] p2;
    input [31:0] p3;

    input [31:0] diff_p1p2;
    input [31:0] diff_p2p3;
    input [31:0] diff_p3p1;

    output [31:0] minp;
    output [31:0] maxp;

    output [31:0] diff_p1minp;
    output [31:0] diff_p2minp;
    output [31:0] diff_p3minp;
    
    wire temp;
  
    assign temp = diff_p1p2[31]; 
    
    assign maxp = temp ? ((diff_p2p3[31]) ? p3 : p2):
			 ((diff_p3p1[31]) ? p1 : p3); 
    assign minp = temp ? ((diff_p3p1[31]) ? p3 : p1):
			 ((diff_p2p3[31]) ? p2 : p3);

    assign diff_p1minp = temp ? ((diff_p3p1[31]) ? {type, diff_p3p1[30:0]} : 0):
				((diff_p2p3[31]) ? {type, diff_p1p2[30:0]}
						  : {type, diff_p3p1[30:0]}); 
    assign diff_p2minp = temp ? ((diff_p3p1[31]) ? {type, diff_p2p3[30:0]} 
						  : {type, diff_p1p2[30:0]}):
				((diff_p2p3[31]) ? 0 
						  : {type, diff_p2p3[30:0]}); 
    assign diff_p3minp = temp ? ((diff_p3p1[31]) ? 0 
						  : {type, diff_p3p1[30:0]}):
				((diff_p2p3[31]) ? {type, diff_p2p3[30:0]} : 0); 


endmodule
