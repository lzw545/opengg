`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:42:52 10/23/2010 
// Design Name: 
// Module Name:    modelview_stack 
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

/* Stack grows UP, like the Disney movie
 *
 *
 *
 */
module matrix_stacks(clk, matrix_mode, pop_en, push_en, data_in, data_out
    );

    input           clk;
    input  [2:0]    matrix_mode;
    input           pop_en;
    input           push_en;
    input  [127:0]  data_in;
    output reg [127:0]  data_out;
    
    reg    [6:0]    modelview_sp;
    reg    [6:0]    projection_sp;

    reg    [127:0]  modelview_stack  [127:0];       // 2048 bytes (32 matrices) (infer BRAM?!?)
    reg    [127:0]  projection_stack [7:0];         // 128 bytes (2 matrices)
    
    reg    [1:0]    state;
    
    initial begin
        modelview_sp <= 3;
        projection_sp <= 3;
        
        // Hardcode identity matrices into both stacks
        modelview_stack[3] <= 127'h3F800000000000000000000000000000;
        modelview_stack[2] <= 127'h000000003F8000000000000000000000;
        modelview_stack[1] <= 127'h00000000000000003F80000000000000;
        modelview_stack[0] <= 127'h0000000000000000000000003F800000;
        projection_stack[3] <= 127'h3F800000000000000000000000000000;
        projection_stack[2] <= 127'h000000003F8000000000000000000000;
        projection_stack[1] <= 127'h00000000000000003F80000000000000;
        projection_stack[0] <= 127'h0000000000000000000000003F800000;
    end
    
    always @ posedge pop_en
    begin
        state <= 2'b00;
    end
    
    always @ posedge push_en
    begin
        state <= 2'b00;
        case (matrix_mode)
            3'b001:
            begin
                modelview_sp <= modelview_sp+4;
            end
            3'b010:
            begin
                projection_stack <= projection_sp+4;
            end
            default:
            begin
            end
        endcase
    end
    
    always @ posedge clk
    begin  
        case(state)
            2'b00:
            begin
                state <= 2'b01;
                if (pop_en)
                begin
                    data_out <= model_view_stack[modelview_sp];
                    modelview_sp <= modelview_sp - 1;
                end
                else if (push_en)
                begin
                    model_view_stack[current_sp] <= data_in;
                end
            end
            
            2'b01:
            begin
                state <= 2'b10;
                if (pop_en)
                begin
                    data_out <= model_view_stack[modelview_sp];
                    modelview_sp <= modelview_sp - 1;
                end
                else if (push_en)
                begin
                    model_view_stack[modelview_sp-1] <= data_in;
                end
            end
            
            2'b10:
            begin
                state <= 2'b11;
                if (pop_en)
                begin
                    data_out <= model_view_stack[modelview_sp];
                    modelview_sp <= modelview_sp - 1;
                end
                else if (push_en)
                begin
                    model_view_stack[modelview_sp-2] <= data_in;
                end
            end
            
            2'b11:
            begin
                if (pop_en)
                begin
                    data_out <= model_view_stack[modelview_sp];
                    modelview_sp <= modelview_sp - 1;
                end
                else if (push_en)
                begin
                    model_view_stack[modelview_sp-3] <= data_in;
                end
            end
            
            default
            begin
            end
        endcase
    end
    
endmodule
