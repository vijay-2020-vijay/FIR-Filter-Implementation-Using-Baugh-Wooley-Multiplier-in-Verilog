`timescale 1ns / 1ps
module test1;
  reg clk,reset;
  wire [6:0]result ;
  wire done;
  iir uut (.clk(clk),.reset(reset),.result(result),.done(done));
  
 initial begin
   clk = 0;
   reset = 1;
   end
always #5 clk = ~clk;
initial begin
      #10 reset= 0;
      end
endmodule