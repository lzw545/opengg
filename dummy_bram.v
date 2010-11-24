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
        mem[0] = 32'h00000010;   // Matrix_mode 0
        mem[1] = 32'h00000110;   // Matrix_mode 1   
        mem[2] = 32'h80001013;   // Load_matrix
        mem[3] = 32'h3F800000;   // 0
        mem[4] = 32'h40A00000;   // 1
        mem[5] = 32'h41100000;   // 6
        mem[6] = 32'h41500000;   // 10
        mem[7] = 32'h40000000;   // 14
        mem[8] = 32'h40C00000;   // 3
        mem[9] = 32'h41200000;   // 7
        mem[10]= 32'h41600000;   // 11
        mem[11]= 32'h40400000;   // 15
        mem[12]= 32'h40E00000;   // 4
        mem[13]= 32'h41300000;   // 8
        mem[14]= 32'h41700000;   // 12
        mem[15]= 32'h40800000;   // 16
        mem[16]= 32'h41000000;   // 5   
        mem[17]= 32'h41400000;   // 9
        mem[18]= 32'h41800000;   // 13
        mem[19]= 32'h80000304;   // Color
        mem[20]= 32'h3F800000;   // r: 1
        mem[21]= 32'h3F000000;   // g: .5
        mem[22]= 32'h00000000;   // b: 0
        mem[23]= 32'h00000003;   // Vertex
        mem[24]= 32'h41200000;   // x: 10   
        mem[25]= 32'h3F800000;   // y: 1
        mem[26]= 32'h41500000;   // x: 13
        mem[27]= 32'h40A00000;   // Matrix_mode 0   
        mem[28]= 32'h41100000;   // 
        mem[29]= 32'h41500000;   // 13
        /*mem[0] = 32'h3F800000;   // 1
        mem[1] = 32'h40A00000;   // 5   
        mem[2] = 32'h41100000;   // 9
        mem[3] = 32'h41500000;   // 13
        mem[4] = 32'h40000000;   // 2
        mem[5] = 32'h40C00000;   // 6
        mem[6] = 32'h41100000;   // 10
        mem[7] = 32'h41600000;   // 14
        mem[8] = 32'h40400000;   // 3
        mem[9] = 32'h40E00000;   // 7
        mem[10]= 32'h41300000;   // 11
        mem[11]= 32'h41700000;   // 15
        mem[12]= 32'h40800000;   // 4
        mem[13]= 32'h41000000;   // 8
        mem[14]= 32'h41400000;   // 12
        mem[15]= 32'h41800000;   // 16*/
    end

    assign read0 = mem[addr1 >> 2];
    assign read1 = mem[addr2 >> 2];
    assign read2 = mem[(addr2 >> 2)+1];
    assign read3 = mem[(addr2 >> 2)+2];
    assign read4 = mem[(addr2 >> 2)+3];


endmodule
