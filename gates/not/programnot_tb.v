`include "program3not.v"
module programnot_tb();
reg A,B;
wire Y;
not_gate ag(Y,A);
initial begin
	A=0;
	#1 A=1;
end
initial begin
	$monitor("%t | A=%d | Y=%d",$time,A,Y);
end 
endmodule
	

