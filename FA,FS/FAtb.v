`include "FA.v"
module FAtb();
wire sum,carry;
reg A,B,C;
FA i(sum,carry,A,B,C);
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
	$monitor("A=%d B=%d C=%d sum=%d carry=%d",A,B,C,sum,carry);
end

endmodule
