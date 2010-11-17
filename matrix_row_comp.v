`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:37 10/22/2010 
// Design Name: 
// Module Name:    matrix_row_mul 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Computes the scalar product of 1 row and 1 column
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module matrix_row_comp(result, a, b
    );
    
    input  [127:0]      a;          // row vector
    input  [127:0]      b;          // column vector
    output [31:0]       result;     // result       
    
    wire  [31:0]        a0,         // A[x][0]
                        a1,         // A[x][1]
                        a2,         // A[x][2]
                        a3,         // A[x][3]
                        b0,         // B[0][x]
                        b1,         // B[1][x]
                        b2,         // B[2][x]
                        b3,         // B[3][x]
                        mul0_result,
                        mul1_result,
                        mul2_result,
                        mul3_result,
                        add0_result,
                        add1_result,
                        add2_result;

    fp_add add0(.a(mul0_result), .b(mul1_result), .result(add0_result));
    fp_add add1(.a(mul2_result), .b(mul3_result), .result(add1_result));
    fp_add add2(.a(add0_result), .b(add1_result), .result(add2_result));
    
    fp_mul mul4(.a(a0), .b(b0), .result(mul0_result));
    fp_mul mul1(.a(a1), .b(b1), .result(mul1_result));
    fp_mul mul2(.a(a2), .b(b2), .result(mul2_result));
    fp_mul mul3(.a(a3), .b(b3), .result(mul3_result));    

    assign result = add2_result;
    assign a0 = a[31:0];
    assign a1 = a[63:32];
    assign a2 = a[95:64];
    assign a3 = a[127:96];
    assign b0 = b[31:0];
    assign b1 = b[63:32];
    assign b2 = b[95:64];
    assign b3 = b[127:96];
    
endmodule
