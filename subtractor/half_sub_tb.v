`include "half_subtractor.v"
module half_sub_tb;
reg A,Bin;
wire D,B;
half_sub hs(D,B,A,Bin);
initial begin
A=0;Bin=0;
#1 A=0;Bin=1;
#1 A=1;Bin=0;
#1 A=1;Bin=1;
end
initial begin
$display("Half Subtractor Truth Table : ");
$monitor("%t |A = %d|Bin = %d|D = %d|B = %d",$time,A,Bin,D,B);
end
endmodule
