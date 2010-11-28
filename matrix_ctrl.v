`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:48:44 10/23/2010 
// Design Name: 
// Module Name:    matrix_ctrl 
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
 * Push: Takes 4 cycles, data_in is 1 row
 *
 * Pop: Takes 1 cycle, 
 *
 * Peek: Combinational, data_out_temp
 *
 */
module matrix_ctrl(clk, matrix_mode, 
                   pop_en, push_en, 
                   data_in, write_en, load_en, load_id_en,
                   peek_out_0, peek_out_1, peek_out_2, peek_out_3,
                   write_in_0, write_in_1, write_in_2, write_in_3
    );

    input           clk;
    input           matrix_mode;                    // 1 bit: 0 = modelview; 1 = projection
    input           pop_en;
    input           push_en;                        // for glPushMatrix
    input           load_en;                        // for glLoadMatrix
    input           load_id_en;                     // for glLoadIdentity
    input  [127:0]  data_in;                        // input line for load       
    
    input  [127:0]  write_in_0;                     // write in
    input  [127:0]  write_in_1;
    input  [127:0]  write_in_2;
    input  [127:0]  write_in_3;
    
    input           write_en;                       // write enable (write into top of stack)
    
    output [127:0]  peek_out_0;
    output [127:0]  peek_out_1;
    output [127:0]  peek_out_2;
    output [127:0]  peek_out_3;
    
    reg    [6:0]    modelview_sp;
    reg    [6:0]    projection_sp;
    
    reg    [2:0]    state;

    reg    [127:0]  modelview_stack  [127:0];       // 2048 bytes (32 matrices) (infer BRAM?!?)
    reg    [127:0]  projection_stack [7:0];         // 128 bytes (2 matrices)
    
    initial begin
        modelview_sp <= 3;
        projection_sp <= 3;
        state <= 0;
        
        // Hardcode identity matrices into both stacks
        /*
        modelview_stack[3]  <= 127'h3F800000000000000000000000000000;
        modelview_stack[2]  <= 127'h000000003F8000000000000000000000;
        modelview_stack[1]  <= 127'h00000000000000003F80000000000000;
        modelview_stack[0]  <= 127'h0000000000000000000000003F800000;
        */
        /*
        projection_stack[3] <= 127'h3F800000_00000000_00000000_00000000;
        projection_stack[2] <= 127'h00000000_3F800000_00000000_00000000;
        projection_stack[1] <= 127'h00000000_00000000_3F800000_00000000;
        projection_stack[0] <= 127'h00000000_00000000_00000000_3F800000;
        
        modelview_stack[3]  <= 127'h3F800000_00000000_00000000_00000000;
        modelview_stack[2]  <= 127'h00000000_3F800000_00000000_00000000;
        modelview_stack[1]  <= 127'h00000000_00000000_3F800000_00000000;
        modelview_stack[0]  <= 127'h00000000_00000000_00000000_3F800000;
        */
        /*
        //    glFrustum(-1.0, 1.0, -h, h, 5.0, 60.0); where h = 480/640
        projection_stack[3] <= 127'h40A00000_00000000_00000000_00000000;
        projection_stack[2] <= 127'h00000000_40D55555_00000000_00000000;
        projection_stack[1] <= 127'h00000000_00000000_BF9745D1_C12E8BA3;
        projection_stack[0] <= 127'h00000000_00000000_BF800000_00000000;
        
        //    glOrtho(0, 640, 0 480, -1, 1)
        projection_stack[3] <= 127'h3B4B295F_00000000_00000000_BF800000;
        projection_stack[2] <= 127'h00000000_3B89A027_00000000_BF800000;
        projection_stack[1] <= 127'h00000000_00000000_BF800000_00000000;
        projection_stack[0] <= 127'h00000000_00000000_00000000_3F800000;
		  */
    end
    
    wire [127:0] modelview_out0;
    wire [127:0] projection_out0;
    wire [127:0] modelview_out1;
    wire [127:0] projection_out1;    
    wire [127:0] modelview_out2;
    wire [127:0] projection_out2;
    wire [127:0] modelview_out3;
    wire [127:0] projection_out3;
    
    // STACK PEEK
    
    assign modelview_out0 = modelview_stack[modelview_sp];
    assign modelview_out1 = modelview_stack[modelview_sp-1];
    assign modelview_out2 = modelview_stack[modelview_sp-2];
    assign modelview_out3 = modelview_stack[modelview_sp-3];
    
    assign projection_out0 = projection_stack[projection_sp];
    assign projection_out1 = projection_stack[projection_sp-1];
    assign projection_out2 = projection_stack[projection_sp-2];
    assign projection_out3 = projection_stack[projection_sp-3];

    assign peek_out_0 = matrix_mode ? projection_out0 : modelview_out0;
    assign peek_out_1 = matrix_mode ? projection_out1 : modelview_out1;
    assign peek_out_2 = matrix_mode ? projection_out2 : modelview_out2;
    assign peek_out_3 = matrix_mode ? projection_out3 : modelview_out3;
                           
    always @ (posedge clk)
    begin
        case (state)
            0:                                              // load row 0, modelview
            begin
                if (load_id_en)
                begin
                    if (matrix_mode)
                    begin
                        projection_stack[projection_sp]   <= 127'h3F800000000000000000000000000000;
                        projection_stack[projection_sp-1] <= 127'h000000003F8000000000000000000000;
                        projection_stack[projection_sp-2] <= 127'h00000000000000003F80000000000000;
                        projection_stack[projection_sp-3] <= 127'h0000000000000000000000003F800000;
                    end
                    else
                    begin
                        modelview_stack[modelview_sp]    <= 127'h3F800000000000000000000000000000;
                        modelview_stack[modelview_sp-1]  <= 127'h000000003F8000000000000000000000;
                        modelview_stack[modelview_sp-2]  <= 127'h00000000000000003F80000000000000;
                        modelview_stack[modelview_sp-3]  <= 127'h0000000000000000000000003F800000;
                    end
                end
                else if (load_en)
                begin
                    if (matrix_mode)
                    begin
                        projection_stack[projection_sp+4] <= data_in;
                        projection_sp <= projection_sp+4;
                        state <= 4;
                    end
                    else
                    begin
                        modelview_stack[modelview_sp+4] <= data_in;
                        modelview_sp <= modelview_sp+4;
                        state <= state+1;
                    end
                end
                else if (pop_en)
                begin
                    if (matrix_mode)
                    begin
                        projection_sp <= projection_sp-4;
                        state <= 0;
                    end
                    else
                    begin
                        modelview_sp <= modelview_sp-4;
                        state <= 0;
                    end
                end
                else if (write_en)
                begin
                    if (matrix_mode)
                    begin
                        projection_stack[projection_sp]   <= write_in_0;
                        projection_stack[projection_sp-1] <= write_in_1;
                        projection_stack[projection_sp-2] <= write_in_2;
                        projection_stack[projection_sp-3] <= write_in_3;
                    end
                    else
                    begin
                        modelview_stack[modelview_sp]   <= write_in_0;
                        modelview_stack[modelview_sp-1] <= write_in_1;
                        modelview_stack[modelview_sp-2] <= write_in_2;
                        modelview_stack[modelview_sp-3] <= write_in_3;
                    end
                end
                else
                begin
                    state <= 0;
                end
            end
            1:                                              // load row 1, modelview
            begin
                modelview_stack[modelview_sp-1] <= data_in;
                state <= 2;
            end
            2:                                              // load row 2, modelview
            begin
                modelview_stack[modelview_sp-2] <= data_in;
                state <= 3;
            end
            3:                                              // load row 3, modelview
            begin
                modelview_stack[modelview_sp-3] <= data_in;
                state <= 0;
            end
            4:                                              // load row 1, projection
            begin
                projection_stack[projection_sp-1] <= data_in;
                state <= 5;
            end
            5:                                              // load row 2, projection
            begin
                projection_stack[projection_sp-2] <= data_in;
                state <= 6;
            end
            6:                                              // load row 3, projection
            begin
                projection_stack[projection_sp-3] <= data_in;
                state <= 0;
            end
            default:
            begin
                state <= 0;
            end
        endcase
    end
    
endmodule
