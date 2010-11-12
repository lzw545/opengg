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
module gl_fetch(inst_out, inst_in, inst_addr, clk, stall, reset);

    parameter
        text_start = 32'hA0000000,
        width = 32,
        reset_value = 0;
    
    output reg  [(width-1):0]   inst_out;
    output reg  [(width-1):0]   inst_addr;
    input       [(width-1):0]   inst_in;
    input                       clk;
    input                       stall;          // stall
    input                       reset;

    initial begin
        inst_addr <= text_start;
    end
    
    
    always @ (posedge clk) begin
        if (~reset && ~stall)                   // Normal Operation
            begin
                case (inst_in[7:0])
                    `OP_VERTEX:
                    begin
                        inst_addr <= inst_addr + 16;
                        inst_out <= inst_in;
                    end
                    `OP_COLOR:
                    begin
                        inst_addr <= inst_addr + 16;
                        inst_out <= inst_in;
                    end
                    `OP_MULTMATRIX:
                    begin
                        inst_addr <= inst_addr + 68;
                        inst_out <= inst_in;
                    end
                    `OP_LOADMATRIX:
                    begin
                        inst_addr <= inst_addr + 68;
                        inst_out <= inst_in;
                    end
                    `OP_ROTATE:
                    begin
                        inst_addr <= inst_addr + 68;
                        inst_out <= inst_in;
                    end
                    `OP_SCALE:
                    begin
                        inst_addr <= inst_addr + 68;
                        inst_out <= inst_in;
                    end
                    `OP_TRANSLATE:
                    begin
                        inst_addr <= inst_addr + 68;
                        inst_out <= inst_in;
                    end
                    `OP_VIEWPORT:
                    begin
                        inst_addr <= inst_addr + 20;
                        inst_out <= inst_in;
                    end
                    `OP_FRUSTUM:
                    begin
                        inst_addr <= inst_addr + 28;
                        inst_out <= inst_in;
                    end
                    default:
                    begin
                        inst_addr <= inst_addr + 4;
                        inst_out <= inst_in;
                    end
                endcase
            end
        else if (~reset)                        // Stall
            begin
                inst_addr <= inst_addr;
                inst_out <= inst_out;
            end
        else                                    // Reset
            begin
                inst_addr <= text_start;
                inst_out <= reset_value;
            end
    end
endmodule