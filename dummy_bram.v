`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:27:43 11/02/2010 
// Design Name: 
// Module Name:    dummy_bram 
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
module dummy_bram(addr1, addr2, read0, read1, read2, read3, read4
    );

    input  [31:0]      addr1;
    input  [31:0]      addr2;
    output [31:0]      read0;
    output [31:0]      read1;
    output [31:0]      read2;
    output [31:0]      read3;
    output [31:0]      read4;
                 
    reg    [31:0]  mem [50:0];   
    
    initial begin
        /*
        mem[0] = 32'h00000010;   // Matrix_mode 0
        mem[1] = 32'h00000110;   // Matrix_mode 1   
        mem[2] = 32'h80000213;   // rotate
        mem[3] = 32'h00000000;   // 0
        mem[4] = 32'h3F800000;   // 1
        mem[5] = 32'h00000000;   // 0
        mem[6] = 32'h00000000;   // 0
        mem[7] = 32'hBF800000;   // -1
        mem[8] = 32'h00000000;   // 0
        mem[9] = 32'h00000000;   // 0
        mem[10]= 32'h00000000;   // 0
        mem[11]= 32'h00000000;   // 0
        mem[12]= 32'h00000000;   // 0
        mem[13]= 32'h3F800000;   // 1
        mem[14]= 32'h00000000;   // 0
        mem[15]= 32'h00000000;   // 0
        mem[16]= 32'h00000000;   // 0  
        mem[17]= 32'h00000000;   // 0
        mem[18]= 32'h3F800000;   // 1
        mem[19]= 32'h80000304;   // Color
        mem[20]= 32'h3F800000;   // r: 1
        mem[21]= 32'h3F000000;   // g: .5
        mem[22]= 32'h00000000;   // b: 0
        mem[23]= 32'h80000303;   // Vertex
        mem[24]= 32'h3F800000;   // x: 1   
        mem[25]= 32'h41200000;   // y: 10
        mem[26]= 32'h3F800000;   // z: 1
        mem[27]= 32'h00000010;   // Matrix_mode 0   
        mem[28]= 32'h41100000;   // 
        mem[29]= 32'h41500000;   // 13
        */
        mem[0]= 32'h80000304;   // Color
        mem[1]= 32'h3F800000;   // r: 1
        mem[2]= 32'h3F000000;   // g: .5
        mem[3]= 32'h00000000;   // b: 0
        mem[4]= 32'h80000303;   // Vertex 1
        mem[5]= 32'h3F800000;   // x: 1   
        mem[6]= 32'h41200000;   // y: 10
        mem[7]= 32'h00000000;   // z: 0
        mem[8]= 32'h80000303;   // Vertex 2 
        mem[9]= 32'h41200000;   // x: 10   
        mem[10]= 32'h3F800000;  // y: 1
        mem[11]= 32'h00000000;  // z: 0
		  mem[12]= 32'h80000303;  // Vertex 3
        mem[13]= 32'h41200000;  // x: 1   
        mem[14]= 32'h3F800000;  // y: 1
        mem[15]= 32'h00000000;  // z: 0
		  
    end

    assign read0 = mem[addr1];
    assign read1 = mem[addr2];
    assign read2 = mem[addr2+1];
    assign read3 = mem[addr2+2];
    assign read4 = mem[addr2+3];


endmodule
