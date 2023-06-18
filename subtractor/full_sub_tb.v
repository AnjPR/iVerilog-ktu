`include "full_sub.v"
module full_sub_tb;
reg A,B,C;
wire D,Bor;
full_sub fs(D,Bor,A,B,C);


initial begin
	A=0;B=0;C=0;
	#1 A=0;B=0;C=1;
	#1 A=0;B=1;C=0;
	#1 A=0;B=1;C=1;
	#1 A=1;B=0;C=0;
	#1 A=1;B=0;C=1;
	#1 A=1;B=1;C=0;
	#1 A=1;B=1;C=1;
end

initial begin
	$display("Full Subtractor Truth Table");
	$monitor("%t |A= %d|B= %d|Bin= %d|D= %d|Bout= %d",$time,A,B,C,D,Bor);
end
endmodule 					
