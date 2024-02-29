module register_tb();
  
  // Inputs and outputs declaration
  reg reset;
  reg [64-1:0] data_in;
  bit clk = 0;
  wire [64-1:0] data_out;
  
  // Instantiation
  register register_test (
    .clk(clk), 
    .reset(reset), 
    .data_in(data_in), 
    .data_out(data_out)
  );
  
  // Clock generation
  initial begin
    forever #5 clk = ~clk;
  end
  
  // Test 
  initial begin
    reset = 1;
    #1;
    reset = 0;
    data_in = 10;
    #15;
    reset = 1;
    data_in = 20;
    #20;
    reset = 0;
    #25
    data_in = 30;
    
  end
  
  // Displaying results 
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
    #50;
    $finish;
  end
  
endmodule
