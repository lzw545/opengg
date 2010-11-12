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
module matrix_stack( clk, data_in, data_out, sp, write_en, matrix_mode
    );
    
    input                   clk;
    input       [127:0]     data_in;                        // serve push request
        
    output reg  [127:0]     data_out;                       // serve pop request
    input       [6:0]       sp;
    input                   write_en;
    input                   matrix_mode;                    // 1 bit: 0 = modelview; 1 = projection

    reg         [127:0]     modelview_stack  [127:0];       // 2048 bytes (32 matrices) (infer BRAM?!?)
    reg         [127:0]     projection_stack [7:0];         // 128 bytes (2 matrices)
    
    initial begin
        // Hardcode identity matrices into both stacks
        modelview_stack[3]  <= 127'h3F800000000000000000000000000000;
        modelview_stack[2]  <= 127'h000000003F8000000000000000000000;
        modelview_stack[1]  <= 127'h00000000000000003F80000000000000;
        modelview_stack[0]  <= 127'h0000000000000000000000003F800000;
        projection_stack[3] <= 127'h3F800000000000000000000000000000;
        projection_stack[2] <= 127'h000000003F8000000000000000000000;
        projection_stack[1] <= 127'h00000000000000003F80000000000000;
        projection_stack[0] <= 127'h0000000000000000000000003F800000;
    end
    
    wire [127:0] modelview_out0;
    wire [127:0] projection_out0;
    wire [127:0] modelview_out1;
    wire [127:0] projection_out1;    
    wire [127:0] modelview_out2;
    wire [127:0] projection_out2;
    wire [127:0] modelview_out3;
    wire [127:0] projection_out3;
    
    assign modelview_out0 = modelview_stack[sp];
    assign projection_out0 = projection_stack[sp];
    assign modelview_out1 = modelview_stack[sp-1];
    assign projection_out1 = projection_stack[sp-1];
    assign modelview_out2 = modelview_stack[sp-2];
    assign projection_out2 = projection_stack[sp-2];
    assign modelview_out3 = modelview_stack[sp-3];
    assign projection_out3 = projection_stack[sp-3];
    
    assign data_out_temp0 = matrix_mode ? projection_out0 : modelview_out0;
    assign data_out_temp1 = matrix_mode ? projection_out1 : modelview_out1;
    assign data_out_temp2 = matrix_mode ? projection_out2 : modelview_out2;
    assign data_out_temp3 = matrix_mode ? projection_out3 : modelview_out3;

    always @ (posedge clk)
    begin
        data_out0 <= data_out_temp0;
        data_out1 <= data_out_temp1;
        data_out2 <= data_out_temp2;
        data_out3 <= data_out_temp3;
        if (write_en)
        begin
            if (matrix_mode)
            begin
                projection_stack[sp] <= data_in;
            end
            else
            begin
                modelview_stack[sp] <= data_in;
            end
        end
    end
    
endmodule
