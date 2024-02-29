// Code your design here
module register(
  input wire clk,
  input wire reset,
  input wire [64-1:0] data_in,
  output wire [64-1:0] data_out);
  
  reg [64-1:0] temp_data_out;
  
  always @(posedge clk or negedge reset) //asynchronous,active low reset
    begin
      if(!reset)
        begin
        temp_data_out <= 64'b0;
        end
      else
        begin
          temp_data_out <= data_in; 
        end    
    end
  assign data_out = temp_data_out;
endmodule
  
  
