// Verilog Test Fixture Template

  `timescale 1 ns / 1 ps

module top;

  reg            rst;

  // input clock domain
  reg            wr_clk;
  reg [0 : 127]  din;
  reg            wr_en;

  // output clock domain
  reg            rd_clk;
  wire [0 : 127] dout;  
  reg            rd_en;
  
  wire [0 : 3]   rd_data_count;
  wire [0 : 3]   wr_data_count;

parameter CLK1 = 100, CLK2 = 20;
  
  fifo_generator_v6_2 fifo1 (
	.rst(rst),
	.wr_clk(wr_clk),
	.rd_clk(rd_clk),
	.din(din), // Bus [127 : 0] 
	.wr_en(wr_en),
	.rd_en(rd_en),
	.dout(dout), // Bus [127 : 0] 
	.full(full),
	.wr_ack(wr_ack),
	.overflow(overflow),
	.empty(empty),
	.valid(valid),
	.underflow(underflow),
	.rd_data_count(rd_data_count), // Bus [3 : 0] 
	.wr_data_count(wr_data_count)); // Bus [3 : 0] 

  
  always #CLK1
    begin
     wr_clk = ~wr_clk;
    end

  always #CLK2
    begin
      rd_clk = ~rd_clk;
    end
    
  initial
    begin      
      // initialization
      rd_clk = 0;
      wr_clk = 0;
      
      wr_en = 0;
      rd_en = 0;
      
      din = 'd0;
      
      rst = 0;
      #5
      rst = 1;
      #5
      rst = 0;
      
      wr_en = 1;
            
    end
  
  // *** THIS IS A HACK *** - there should be a better way to do and avoid overcounting
  always @ (posedge wr_clk)
    begin
      if ( wr_ack && !overflow )
        din <= din + 1;
    end
    

  always @ (posedge rd_clk)
    if ( full && !empty )
      rd_en <= 1;
    else
      rd_en <= 0;
      
endmodule
