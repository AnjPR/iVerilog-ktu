`include "or_beha.v"
module OR_2_behavioral_tb;
reg A,B;
wire Y;
OR_2_behavioral i (Y,A,B);
initial begin
A=0;B=0;

#1 A=0;B=1;
#1 A=1;B=0;
#1 A=1;B=1;
#2 A=0;B=0;
#1 A=1;B=1;
#2 A=0;B=0;
#2 A=0;B=0;
end
initial begin
 $monitor("%t|A=%d|B=%d|Y=%d",$time,A,B,Y);
  $dumpfile("dump1.vcd");
   $dumpvars();
end

endmodule   

