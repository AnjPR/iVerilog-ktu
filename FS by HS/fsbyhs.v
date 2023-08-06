`include"fsfs.v"
module fsfb;
reg A,B,C;
wire diff,carry;
fs i(diff,carry,A,B,C);

initial begin
	A=0;B=0;C=0;
#1	A=0;B=0;C=1;
#1	A=0;B=1;C=0;
#1	A=0;B=1;C=1;
#1	A=1;B=0;C=0;
#1	A=1;B=0;C=1;
#1	A=1;B=1;C=0;
#1	A=1;B=1;C=1;
end

initial begin
	$monitor("A=%d B=%d Cin=%d D=%d Cout=%d",A,B,C,diff,carry);
end
endmodule
