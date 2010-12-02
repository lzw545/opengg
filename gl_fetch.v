`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:40:45 11/03/2010 
// Design Name: 
// Module Name:    gl_fetch 
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
`include "gl_defines.v"
module gl_fetch(inst_out, inst_in, inst_addr,
                decode_bram_addr,
                clk, stall, reset, fifo_full);

    parameter
        text_start = 0,
        width = 32,
        reset_value = 0;
    
    output reg  [(width-1):0]   inst_out;               // instruction output
    output reg  [(width-1):0]   inst_addr;              // instruction address (bram read)
    output reg  [(width-1):0]   decode_bram_addr;       // 
    input       [(width-1):0]   inst_in;                // 
    
    input                       clk;                    // 
    input                       stall;                  // stall
    input                       fifo_full;              // vertex and color fifo full
    input                       reset;

    reg                         tmp_stall;              // temporary stall
    
    initial begin
        inst_addr        <= text_start;
        inst_out         <= 32'b0;
        decode_bram_addr <= 32'b0; 
        tmp_stall        <= 0;
    end
    
    
    always @ (posedge clk) begin
        if (reset)                             // Reset
            begin
                inst_addr <= text_start;
                inst_out <= reset_value;
                tmp_stall <= 0;
            end
        else if (tmp_stall)
            begin
                tmp_stall <= 0;
            end
        else if (stall || fifo_full)           // Stall
            begin
                inst_addr <= inst_addr;
                inst_out <= inst_out;
            end
        else                                   // Normal Operation
            begin
                case (inst_in[7:0])
                    //`OP_VERTEX:
                    8'b00000011:
                    begin
                        inst_addr <= inst_addr + 4;
                        inst_out <= inst_in;
                        decode_bram_addr <= inst_addr + 1;
                        tmp_stall <= 1;
                    end
                    //`OP_COLOR:
                    8'b00000100:
                    begin
                        inst_addr <= inst_addr + 4;
                        decode_bram_addr <= inst_addr + 1;
                        inst_out <= inst_in;
                        tmp_stall <= 1;
                    end
                    //`OP_MULTMATRIX:
                    8'b00010001:
                    begin
                        inst_addr <= inst_addr + 17;
                        inst_out <= inst_in;
						decode_bram_addr <= inst_addr + 1;
                        tmp_stall <= 1;
                    end
                    //`OP_LOADMATRIX:
                    8'b00010011:
                    begin
                        inst_addr <= inst_addr + 17;
                        inst_out <= inst_in;
                        decode_bram_addr <= inst_addr + 1;
                        tmp_stall <= 1;
                    end
                    //`OP_ROTATE:
                    8'b00010110:
                    begin
                        inst_addr <= inst_addr + 17;
                        inst_out <= 32'h80001016;					// Rotate
                        decode_bram_addr <= inst_addr + 1;
                        tmp_stall <= 1;
                    end
                    //`OP_SCALE:
                    8'b00010111:
                    begin
                        inst_addr <= inst_addr + 17;
                        inst_out <= 32'h80001016;					// Rotate
                        decode_bram_addr <= inst_addr + 1;
                        tmp_stall <= 1;

                    end
                    //`OP_TRANSLATE:
                    8'b00011000:
                    begin
                        inst_addr <= inst_addr + 17;
                        inst_out <= 32'h80001016;					// Rotate
                        decode_bram_addr <= inst_addr + 1;
                        tmp_stall <= 1;
                    end
                    //`OP_VIEWPORT:
                    8'b00011001:
                    begin
                        inst_addr <= inst_addr + 5;
                        decode_bram_addr <= inst_addr + 1;
                        inst_out <= inst_in;
                        tmp_stall <= 1;
                    end
                    //`OP_FRUSTUM:
                    8'b00011010:
                    begin
                        inst_addr <= inst_addr + 17;
                        inst_out <= 32'h80001011;					// MULTMATRIX
                        decode_bram_addr <= inst_addr + 1;
                        tmp_stall <= 1;
                    end
                    //`OP_ORTHO:
                    8'b00011011:
                    begin
                        inst_addr <= inst_addr + 17;
                        inst_out <= 32'h80001011;					// MULTMATRIX
                        decode_bram_addr <= inst_addr + 1;
                        tmp_stall <= 1;
                    end
                    //`OP_JMP:
                    8'b00000110:
                    begin
                        inst_addr <= 0;
                        inst_out <= inst_in;
                    end
                    default:
                    begin
                        inst_addr <= inst_addr + 1;
                        inst_out <= inst_in;
                    end
                endcase
            end

    end
endmodule