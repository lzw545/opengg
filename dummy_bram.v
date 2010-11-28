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

        mem[0]=32'h00000110;		// matrix mode projection (1)
        mem[1]=32'h80001011;		// multmatrix
        mem[2]=32'h3B4CCCCD;
        mem[3]=32'h00000000;
        mem[4]=32'h00000000;
        mem[5]=32'h00000000;
        mem[6]=32'h00000000;
        mem[7]=32'h3B888889;
        mem[8]=32'h00000000;
        mem[9]=32'h00000000;
        mem[10]=32'h00000000;
        mem[11]=32'h00000000;
        mem[12]=32'hBF800000;
        mem[13]=32'h0;
        mem[14]=32'hBF800000;
        mem[15]=32'hBF800000;
        mem[16]=32'h0;
        mem[17]=32'h3F800000;
        mem[18]= 32'h80000304;   // Color
        mem[19]= 32'h3F800000;   // r: 1
        mem[20]= 32'h00000000;   // g: 0
        mem[21]= 32'h00000000;   // b: 0
        mem[22]= 32'h80000303;   // Vertex 1
        mem[23]= 32'h3F800000;   // x: 1   
        mem[24]= 32'h41200000;   // y: 10
        mem[25]= 32'h00000000;   // z: 0
        mem[26]= 32'h80000304;   // Color
        mem[27]= 32'h00000000;   // r: 0
        mem[28]= 32'h3F800000;   // g: 1
        mem[29]= 32'h00000000;   // b: 0
        mem[30]= 32'h80000303;   // Vertex 2 
        mem[31]= 32'h41200000;   // x: 10   
        mem[32]= 32'h3F800000;   // y: 1
        mem[33]= 32'h00000000;   // z: 0
        mem[34]= 32'h80000304;   // Color
        mem[35]= 32'h00000000;   // r: 0
        mem[36]= 32'h00000000;   // g: 0
        mem[37]= 32'h3F800000;   // b: 1
        mem[38]= 32'h80000303;   // Vertex 3
        mem[39]= 32'h3F800000;   // x: 1   
        mem[40]= 32'h3F800000;   // y: 1
        mem[41]= 32'h00000000;   // z: 0
		  
    end

    assign read0 = mem[addr1];
    assign read1 = mem[addr2];
    assign read2 = mem[addr2+1];
    assign read3 = mem[addr2+2];
    assign read4 = mem[addr2+3];


endmodule
