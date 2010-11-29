`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:20:46 11/21/2010 
// Design Name: 
// Module Name:    inst_bram 
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
module async_inst_bram( BRAM_rst, BRAM_clk, BRAM_en, BRAM_wen, 
                        BRAM_addr, BRAM_din, BRAM_dout,
                        addr1, addr2, read0, read1, read2, read3, read4 );
    
    input              BRAM_rst;
    input              BRAM_clk;
    input              BRAM_en;
    input  [0:3]       BRAM_wen;
    input  [0:31]      BRAM_addr;
    output [0:31]      BRAM_din;
    input  [0:31]      BRAM_dout;
    
    input  [31:0]      addr1;
    input  [31:0]      addr2;
    output [31:0]      read0;
    output [31:0]      read1;
    output [31:0]      read2;
    output [31:0]      read3;
    output [31:0]      read4;
        
    //reg    [31:0]  mem [1023:0]; 
    reg    [31:0]  mem [42:0];     
    
    wire   [0:9]   addr;
    
    assign read0 = mem[addr1];
    assign read1 = mem[addr2];
    assign read2 = mem[addr2+1];
    assign read3 = mem[addr2+2];
    assign read4 = mem[addr2+3];
    
    assign addr     = BRAM_addr [20:29];
    assign BRAM_din = mem[addr];
    assign wen      = BRAM_wen[0] | BRAM_wen[1] | BRAM_wen[2] | BRAM_wen[3];
    
    always @ (posedge BRAM_clk)
    begin
        if (wen)
            mem[addr] <= BRAM_dout;
    end
    
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
        mem[10]= 32'h00000000;
        mem[11]= 32'h00000000;
        mem[12]= 32'hBF800000;
        mem[13]= 32'h0;
        mem[14]= 32'hBF800000;
        mem[15]= 32'hBF800000;
        mem[16]= 32'h0;
        mem[17]= 32'h3F800000;
        mem[18]= 32'h80000304;   // Color
        mem[19]= 32'h3F800000;   // r: 1
        mem[20]= 32'h00000000;   // g: 0
        mem[21]= 32'h00000000;   // b: 0
        mem[22]= 32'h80000303;   // Vertex 1
        mem[23]= 32'h3F800000;   // x: 1   
        mem[24]= 32'h42C80000;   // y: 100
        mem[25]= 32'h00000000;   // z: 0
        mem[26]= 32'h80000304;   // Color
        mem[27]= 32'h00000000;   // r: 0
        mem[28]= 32'h3F800000;   // g: 1
        mem[29]= 32'h00000000;   // b: 0
        mem[30]= 32'h80000303;   // Vertex 2 
        mem[31]= 32'h42C80000;   // x: 100   
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
        mem[42]= 32'h0;
		  
    end
    
endmodule
