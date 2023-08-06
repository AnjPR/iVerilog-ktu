`include "FS.v"
module FStb();
reg A,B,C;
FS i(diff,borrow,A,B,C);
initial begin
	A=0;B=0;C=0;
#1 	A=0;B=0;C=1;
#1 	A=0;B=1;C=0;
#1 	A=0;B=1;C=1;
#1 	A=1;B=0;C=0;
#1 	A=1;B=0;C=1;
#1 	A=1;B=1;C=0;
#1 	A=1;B=1;C=1;
end

initial begin
	$monitor("A=%d B=%d C=%d Diff=%d Borrow=%d",A,B,C,diff,borrow);
end
endmodule

