`include "not_beha.v"
module NOT_2_behavioral_tb;
reg A;
wire Y;
NOT_2_behavioral i (Y,A);
initial begin
A=0;

#1 A=1;
#1 A=1;
end
initial begin
 $monitor("%t|A=%d|Y=%d",$time,A,Y);
  $dumpfile("dump6.vcd");
   $dumpvars();
end

endmodule   

