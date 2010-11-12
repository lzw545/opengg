`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:43:07 11/03/2010 
// Design Name: 
// Module Name:    gl_decode 
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

module gl_decode( clk, opcode, imm, type, 
                  bram_addr_out,
                  bram_read_in_0, bram_read_in_1, bram_read_in_2, bram_read_in_3,
                  viewport_min_x, viewport_min_y, viewport_max_x, viewport_max_y,
                  push_en, pop_en, 
                  color_in, color_out,
                  matrix_load_en, matrix_load_id_en,
                  matrix_mul_en, matrix_mul_type, matrix_mode_out,
                  perspective_div_en,
                  stall);

    parameter
        reset_value = 0;
    

    input                       clk;
    
    input   [7:0]               opcode;
    input   [22:0]              imm;
    input                       type;
    
    /* BRAM Control */
    output     [31:0]           bram_addr_out;      
    input      [31:0]           bram_read_in_0;
    input      [31:0]           bram_read_in_1;
    input      [31:0]           bram_read_in_2;
    input      [31:0]           bram_read_in_3;
    
    /* Viewport Registers */
    output reg [31:0]           viewport_min_x;
    output reg [31:0]           viewport_min_y;
    output reg [31:0]           viewport_max_x;
    output reg [31:0]           viewport_max_y;
    
    /* Color Register */
    input      [31:0]           color_in;
    output reg [31:0]           color_out;
    
    /* Matrix stack, matrix multiply control signals */
    output reg                  push_en;
    output reg                  pop_en;
    output reg                  matrix_load_en;
    output reg                  matrix_load_id_en;
    output reg                  matrix_mul_en;     // matrix multiply enable 
    output reg                  matrix_mul_type;   // matrix multiply type (4x4 * 4x4 (1) or 4x4 * 4x1 (0))
    output reg                  matrix_mode_out;   // current matrix mode select (
    reg                         curr_matrix_mode;  // matrix mode set by glMatrixMode

    /* Perspective Division control*/
    output reg                  perspective_div_en;
    
    /* Stall Control */
    output reg                  stall;
    reg [3:0]                   stall_count;
    
    initial begin
        push_en             <= 0;
        pop_en              <= 0;
        matrix_load_en      <= 0;
        matrix_load_id_en   <= 0;
        matrix_mul_en       <= 0;
        matrix_mul_type     <= 0;
        matrix_mode_out     <= 0;
        curr_matrix_mode    <= 0;
        color_out           <= 32'h00000000;        // default color is black
    end
    
    always@(opcode) begin
        case(opcode)
        `OP_BEGIN:
            begin 
            end
        `OP_END:
            begin
            end
        `OP_VERTEX:
            begin
                case (stall)
                0:
                    begin
                        matrix_mul_en <= 1;                     // enable modelview matrix multiply
                        matrix_mul_type <= 1;                   // select 1x4 multiply mode
                        matrix_mode_out <= 1;
                        stall <= 1;
                        stall_count <= 9;
                    end
                1:
                    begin
                        if (stall_count == 0)                   // viewport transformation is done
                        begin                                   // vertex is done being transformed
                            stall <= 0;
                        end
                        
                        else if (stall_count == 6)              // modelview matrix multiply is done
                        begin
                            matrix_mode_out <= 0;
                            matrix_mul_en <= 1;
                            stall_count <= stall_count - 1;
                        end
                        
                        else if (stall_count == 2)              // projection matrix multiply is done
                        begin
                            stall_count <= stall_count - 1;
                        end
                        
                        else if (stall_count == 1)              // perspective division is done
                        begin
                            stall_count <= stall_count - 1;
                        end
                        
                        else
                        begin
                            matrix_mul_en <= 0;
                            stall_count <= stall_count - 1;
                        end
                    end
                endcase
            end
        `OP_COLOR:
            begin
                color_out <= color_in;
            end
        `OP_MATRIXMODE:
            begin
                curr_matrix_mode <= imm[0];
            end
        `OP_MULTMATRIX:
            begin
                case (stall)
                    0:
                    begin
                        matrix_mul_en <= 1;
                        matrix_mul_type <= 1;
                        stall <= 1;
                        stall_count <= 15;
                    end
                    1:
                    begin
                        if (stall_count == 0)
                        begin
                            stall <= 0;
                        end
                        else
                        begin
                            matrix_mul_en <= 0;
                            stall_count <= stall_count - 1;
                        end
                    end
                endcase
            end
        `OP_LOADID:
            begin
                matrix_load_id_en <= 1;
                matrix_mode_out <= curr_matrix_mode;
            end
        `OP_LOADMATRIX:
            begin
                /*TODO figure out BRAM address out */
                case (stall)
                    0:
                    begin
                        matrix_load_en <= 1;
                        stall <= 1;
                        stall_count <= 3;
                    end
                    1:
                    begin
                        if (stall_count == 0)
                        begin
                            stall <= 0;
                        end
                        else
                        begin
                            matrix_load_en <= 0;
                            stall_count <= stall_count - 1;
                        end
                    end
                endcase
            end
        `OP_PUSHMATRIX:
            begin
                matrix_mode_out <= curr_matrix_mode;
                push_en <= 1;
            end
        `OP_POPMATRIX:
            begin
                matrix_mode_out <= curr_matrix_mode;
                pop_en <= 1;
            end
        `OP_ROTATE:
            begin
                case (stall)
                    0:
                    begin
                        matrix_mul_en <= 1;
                        matrix_mul_type <= 1;
                        stall <= 1;
                        stall_count <= 15;
                    end
                    1:
                    begin
                        if (stall_count == 0)
                        begin
                            stall <= 0;
                        end
                        else
                        begin
                            matrix_mul_en <= 0;
                            stall_count <= stall_count - 1;
                        end
                    end
                endcase
            end
        `OP_SCALE:
            begin
                case (stall)
                    0:
                    begin
                        matrix_mul_en <= 1;
                        matrix_mul_type <= 1;
                        stall <= 1;
                        stall_count <= 15;
                    end
                    1:
                    begin
                        if (stall_count == 0)
                        begin
                            stall <= 0;
                        end
                        else
                        begin
                            matrix_mul_en <= 0;
                            stall_count <= stall_count - 1;
                        end
                    end
                endcase
            end
        `OP_TRANSLATE:
            begin
                case (stall)
                    0:
                    begin
                        matrix_mul_en <= 1;
                        matrix_mul_type <= 1;
                        stall <= 1;
                        stall_count <= 15;
                    end
                    1:
                    begin
                        if (stall_count == 0)
                        begin
                            stall <= 0;
                        end
                        else
                        begin
                            matrix_mul_en <= 0;
                            stall_count <= stall_count - 1;
                        end
                    end
                endcase
            end
        `OP_VIEWPORT:
            begin
                viewport_min_x  <= bram_read_in_0;
                viewport_min_y  <= bram_read_in_1;
                viewport_max_x  <= bram_read_in_2;
                viewport_max_y  <= bram_read_in_3;
            end
        `OP_FRUSTUM:
            begin
            end
        endcase
    end
endmodule
