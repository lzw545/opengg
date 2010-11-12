
/** Testbench to test matrix stack/matrix multiply modules
 *
 *
 */
module mat_testbench(
);
  
  wire  [127:0]	  row_a;
  wire	[127:0]	  col_b;
  wire  [31:0]	  result;  
  wire            rdy;

  assign row_a = 128'h3F800000400000004040000040800000;
  assign col_b = 128'h40A0000040C0000040E0000041000000;
  
  matrix_row_comp matrix_row_comp(.result(result), .a(row_a), .b(col_b), .rdy(rdy));

endmodule
