`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:02:34 10/22/2010 
// Design Name: 
// Module Name:    matrix_mul 
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

// Assumes 

module matrix_mul(clk, en, matrix_mode_in, matrix_mode_out, mul_type, 
                  bram_addr_in, bram_addr_out, 
                  bram_read_in_0, bram_read_in_1, bram_read_in_2, bram_read_in_3,
                  matrix_peek_0, matrix_peek_1, matrix_peek_2, matrix_peek_3,
                  matrix_write_en, 
                  matrix_write_out_0, matrix_write_out_1, matrix_write_out_2, matrix_write_out_3
    );
    
    input           clk;                // clock
    input           en;                 // enable is high for 1 clock cycle
    input           matrix_mode_in;     // specifies the matrix mode: 0 = modelview; 1 = projection
    input           mul_type;           // specifies 4x4 * 4x4 (1) or 4x4 * 4x1 (0)
    output reg      matrix_mode_out;    // specifies the matrix mode
    input  [31:0]   bram_addr_in;       // start of matrix B in bram
    
    output [31:0]   bram_addr_out;      // bram read address request
    
    input  [31:0]   bram_read_in_0,     // bram data in 0
                    bram_read_in_1,     // bram data in 1
                    bram_read_in_2,     // bram data in 2
                    bram_read_in_3;     // bram data in 3
    
    input  [127:0]  matrix_peek_0,
                    matrix_peek_1,
                    matrix_peek_2,
                    matrix_peek_3;
    
    output reg          matrix_write_en;
    output reg [127:0]  matrix_write_out_0,
                        matrix_write_out_1,
                        matrix_write_out_2, 
                        matrix_write_out_3;
    
    reg    [1:0]    state;              // internal state counter
    reg    [1:0]    counter;            // second state counter
    reg    [31:0]   bram_offset;        // bram offset ptr

    wire   [127:0]  mrc_a,
                    mrc_b;
    wire   [31:0]   mrc_result;
    
    assign bram_addr_out = bram_addr_in + bram_offset;
    assign mrc_a = counter == 0 ? matrix_peek_0 :
                   counter == 1 ? matrix_peek_1 :
                   counter == 2 ? matrix_peek_2 :
                   counter == 3 ? matrix_peek_3 : 128'h0;
                   
    assign mrc_b = { bram_read_in_0, bram_read_in_1, bram_read_in_2, bram_read_in_3 };
    
    initial begin
        bram_offset = 0;
        matrix_write_en = 0;
        state = 0;
        counter = 0;
    end
    
    /*
     * TODO
     * figure out write back to stack
     * bram output logic (skipping address)
     * 4x1 signal
     * figure out when to 
     */
    always @ (posedge clk)
    begin
        case(state)
            0:
            begin
                if (en && counter == 0)
                begin
                    matrix_mode_out <= matrix_mode_in;
                    matrix_write_out_0 <= {mrc_result,96'h0};
                    state <= 1;
                    matrix_write_en <= 0;
                    bram_offset <= bram_offset + 16;
                end
                else if (counter == 1)
                begin
                    matrix_write_out_1 <= {mrc_result,96'h0};
                    matrix_write_en <= 0;
                    bram_offset <= bram_offset + 16;
                    state <= 1;
                end
                else if (counter == 2)
                begin
                    matrix_write_out_2 <= {mrc_result,96'h0};
                    matrix_write_en <= 0;
                    bram_offset <= bram_offset + 16;
                    state <= 1;
                end
                else if (counter == 3)
                begin
                    matrix_write_out_3 <= {mrc_result,96'h0};
                    matrix_write_en <= 0;
                    bram_offset <= bram_offset + 16;
                    state <= 1;
                end
            end
            1:
            begin
                if (counter == 0)
                begin
                    matrix_write_out_0 <= matrix_write_out_0 | {32'h0,mrc_result,64'h0};
                end
                else if (counter == 1)
                begin
                    matrix_write_out_1 <= matrix_write_out_1 | {32'h0,mrc_result,64'h0};
                end
                else if (counter == 2)
                begin
                    matrix_write_out_2 <= matrix_write_out_2 | {32'h0,mrc_result,64'h0};
                end
                else if (counter == 3)
                begin
                    matrix_write_out_3 <= matrix_write_out_3 | {32'h0,mrc_result,64'h0};
                end
                state <= 2;
                bram_offset <= bram_offset + 16;
            end
            2:
            begin
                if (counter == 0)
                begin
                    matrix_write_out_0 <= matrix_write_out_0 | {64'h0,mrc_result,32'h0};
                end
                else if (counter == 1)
                begin
                    matrix_write_out_1 <= matrix_write_out_1 | {64'h0,mrc_result,32'h0};
                end
                else if (counter == 2)
                begin
                    matrix_write_out_2 <= matrix_write_out_2 | {64'h0,mrc_result,32'h0};
                end
                else if (counter == 3)
                begin
                    matrix_write_out_3 <= matrix_write_out_3 | {64'h0,mrc_result,32'h0};
                end
                state <= 3;
                bram_offset <= bram_offset + 16;
            end
            3:
            begin
                if (counter == 0)
                begin
                    matrix_write_out_0 <= matrix_write_out_0 | {96'h0,mrc_result};
                end
                else if (counter == 1)
                begin
                    matrix_write_out_1 <= matrix_write_out_1 | {96'h0,mrc_result};
                end
                else if (counter == 2)
                begin
                    matrix_write_out_2 <= matrix_write_out_2 | {96'h0,mrc_result};
                end
                else if (counter == 3)
                begin
                    matrix_write_out_3 <= matrix_write_out_3 | {96'h0,mrc_result};
                    matrix_write_en <= 1;
                end
                bram_offset <= 0;
                counter <= counter+1;
                state <= 0;
            end
            default
            begin
            end
        endcase
    end
    
    
    matrix_row_comp mrc(.result(mrc_result), .a(mrc_a), .b(mrc_b));
    


endmodule
