`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:07:01 10/18/2010 
// Design Name: 
// Module Name:    gl_defines 
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
`define OP_BEGIN        8'b00000001
`define OP_END          8'b00000010
`define OP_VERTEX       8'b00000011
`define OP_COLOR        8'b00000100
`define OP_FLUSH        8'b00000101

`define OP_MATRIXMODE   8'b00010000
`define OP_MULTMATRIX   8'b00010001
`define OP_LOADID       8'b00010010
`define OP_LOADMATRIX   8'b00010011
`define OP_PUSHMATRIX   8'b00010100
`define OP_POPMATRIX    8'b00010101
`define OP_ROTATE       8'b00010110
`define OP_SCALE        8'b00010111
`define OP_TRANSLATE    8'b00011000
`define OP_VIEWPORT     8'b00011001
`define OP_FRUSTUM      8'b00011010