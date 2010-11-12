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
module dummy_bram(addr, read0, read1, read2, read3
    );

    input  [31:0]      addr;
    output [31:0]      read0,
                       read1,
                       read2,
                       read3;
                 
    reg    [31:0]  mem [16:0];   
    
    initial begin
        mem[0] = 32'h3F800000;   // 1
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
        mem[15]= 32'h41800000;   // 16
    end

    assign read0 = mem[addr >> 2];
    assign read1 = mem[(addr >> 2)+1];
    assign read2 = mem[(addr >> 2)+2];
    assign read3 = mem[(addr >> 2)+3];


endmodule