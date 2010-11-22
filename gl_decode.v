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
                  bram_addr_out, bram_addr_in,
                  bram_read_in_0, bram_read_in_1, bram_read_in_2, bram_read_in_3,
                  viewport_x, viewport_y, viewport_width, viewport_height,
                  push_en, pop_en, 
                  red_out, green_out, blue_out,
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
    output reg [31:0]           bram_addr_out;
    input      [31:0]           bram_addr_in;
    input      [31:0]           bram_read_in_0;
    input      [31:0]           bram_read_in_1;
    input      [31:0]           bram_read_in_2;
    input      [31:0]           bram_read_in_3;
    
    /* Viewport Registers */
    output reg [31:0]           viewport_x;
    output reg [31:0]           viewport_y;
    output reg [31:0]           viewport_width;
    output reg [31:0]           viewport_height;
    
    /* Color Registers */
    output reg [31:0]           red_out;
    output reg [31:0]           green_out;
    output reg [31:0]           blue_out;
    
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
        viewport_x          <= 0;
        viewport_y          <= 0;
        perspective_div_en  <= 0;
        viewport_width      <= 32'h44200000;        // 640
        viewport_height     <= 32'h43f00000;        // 480
        stall               <= 0;
        stall_count         <= 0;
        red_out             <= 32'h00000000;        // default color is 0
        green_out           <= 32'h00000000;        // default color is 0
        blue_out            <= 32'h00000000;        // default color is 0
        bram_addr_out       <= 0;
    end
    
    always@(posedge clk) begin
        case(opcode)
        `OP_BEGIN:
            begin 
            end
        `OP_END:
            begin
            end
        //`OP_VERTEX:
        8'b00000011:
            begin
                case (stall_count)
                0:
                    begin
                        matrix_mul_en <= 1;                     // enable modelview matrix multiply
                        matrix_mul_type <= 1;                   // select 1x4 multiply mode
                        matrix_mode_out <= 1;
                        stall <= 1;
                        stall_count <= 9;
                    end

                6:                                              // modelview matrix multiply is done
                    begin
                        matrix_mode_out <= 0;
                        matrix_mul_en <= 1;
                        stall_count <= stall_count - 1;
                    end

                3:                                              
                    begin
                        stall_count <= stall_count - 1;
                        perspective_div_en <= 1;
                        stall <= 0;
                    end
                2:                                              // projection matrix multiply is done
                    begin
                        stall_count <= stall_count - 1;
                        perspective_div_en <= 0;
                        stall <= 0;
                    end

                1:                                              // perspective division is done
                    begin
                        stall_count <= stall_count - 1;
                    end

                default:
                    begin
                        matrix_mul_en <= 0;
                        stall_count <= stall_count - 1;
                    end

                endcase
            end
        //`OP_COLOR:
        8'b00000100:
            begin
                case (stall_count)
                    0:
                    begin
                        bram_addr_out <= bram_addr_in;
                    end
                    
                    1:
                    begin
                        red_out   <= bram_read_in_0;
                        green_out <= bram_read_in_1;
                        blue_out  <= bram_read_in_2;
                    end
                endcase
            end
        //`OP_MATRIXMODE:
        8'b00010000:
            begin
                curr_matrix_mode <= imm[0];
            end
        //`OP_MULTMATRIX:
        8'b00010001:
            begin
                case (stall_count)
                    0:
                    begin
                        matrix_mul_en <= 1;
                        matrix_mul_type <= 1;
                        matrix_mode_out <= curr_matrix_mode;
                        stall <= 1;
                        stall_count <= 15;
                    end
                    
                    2:
                    begin
                        stall <= 0;
                        stall_count <= stall_count - 1;
                    end
                    
                    1:
                    begin
                        stall_count <= stall_count - 1;
                    end
                    
                    default:
                    begin
                        matrix_mul_en <= 0;
                        stall_count <= stall_count - 1;
                    end
                endcase
            end
        //`OP_LOADID:
        8'b00010010:
            begin
                matrix_load_id_en <= 1;
                matrix_mode_out <= curr_matrix_mode;
            end
        //`OP_LOADMATRIX:
        8'b00010011:
            begin
                case (stall_count)
                0:
                    begin
                        matrix_load_en <= 1;
                        stall <= 1;
                        stall_count <= 3;
                        bram_addr_out <= bram_addr_in;
                        matrix_mode_out <= curr_matrix_mode;
                    end
                1:
                    begin
                        stall_count <= stall_count - 1;
                        bram_addr_out <= bram_addr_out + 16;
                    end
                2:
                    begin
                        stall_count <= stall_count - 1;
                        bram_addr_out <= bram_addr_out + 16;
                        stall <= 0;
                    end
                default:
                    begin
                        matrix_load_en <= 0;
                        bram_addr_out <= bram_addr_out + 16;
                        stall_count <= stall_count - 1;
                    end
                endcase
            end
        //`OP_PUSHMATRIX:
        8'b00010100:
            begin
                matrix_mode_out <= curr_matrix_mode;
                push_en <= 1;
            end
        //`OP_POPMATRIX:
        8'b00010101:
            begin
                matrix_mode_out <= curr_matrix_mode;
                pop_en <= 1;
            end
        //`OP_ROTATE:
        8'b00010110:
            begin
                case (stall_count)
                    0:
                    begin
                        matrix_mul_en <= 1;
                        matrix_mul_type <= 1;
                        matrix_mode_out <= curr_matrix_mode;
                        stall <= 1;
                        stall_count <= 15;
                    end
                    
                    2:
                    begin
                        stall <= 0;
                        stall_count <= stall_count - 1;
                    end
                    
                    1:
                    begin
                        stall_count <= stall_count - 1;
                    end
                    
                    default:
                    begin
                        matrix_mul_en <= 0;
                        stall_count <= stall_count - 1;
                    end
                endcase
            end
        //`OP_SCALE:
        8'b00010111:
            begin
                case (stall_count)
                    0:
                    begin
                        matrix_mul_en <= 1;
                        matrix_mul_type <= 1;
                        matrix_mode_out <= curr_matrix_mode;
                        stall <= 1;
                        stall_count <= 15;
                    end
                    
                    2:
                    begin
                        stall <= 0;
                        stall_count <= stall_count - 1;
                    end
                    
                    1:
                    begin
                        stall_count <= stall_count - 1;
                    end
                    
                    default:
                    begin
                        matrix_mul_en <= 0;
                        stall_count <= stall_count - 1;
                    end
                endcase
            end
        //`OP_TRANSLATE:
        8'b00011000:
            begin
                case (stall_count)
                    0:
                    begin
                        matrix_mul_en <= 1;
                        matrix_mul_type <= 1;
                        matrix_mode_out <= curr_matrix_mode;
                        stall <= 1;
                        stall_count <= 15;
                    end
                    
                    2:
                    begin
                        stall <= 0;
                        stall_count <= stall_count - 1;
                    end
                    
                    1:
                    begin
                        stall_count <= stall_count - 1;
                    end
                    
                    default:
                    begin
                        matrix_mul_en <= 0;
                        stall_count <= stall_count - 1;
                    end
                endcase
            end        
        //`OP_VIEWPORT:
        8'b00011001:
            begin
                viewport_x      <= bram_read_in_0;
                viewport_y      <= bram_read_in_1;
                viewport_width  <= bram_read_in_2;
                viewport_height <= bram_read_in_3;
            end
        //`OP_FRUSTUM:
        8'b00011010:
            begin
            end
        endcase
    end
endmodule
