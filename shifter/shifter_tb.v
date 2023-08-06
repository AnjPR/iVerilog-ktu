`include "shifter.v"
module test;
  reg clk,clr,d;
  wire[3:0] q;
  shift u(clk,clr,d,q);
  initial begin
    clk=0;clr=1;d=0;
    #3 clr=0;
    #2 d=~d;
  end
  always #1 clk=~clk; 
  initial begin
    $monitor("%t  q=%b ",$time,q);
  end
  initial #20 $finish;
endmodule
