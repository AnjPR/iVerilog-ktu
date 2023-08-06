`include "D.v"
module Dtb();
reg D,Q;
D i(Qn,P,D,Q);

initial begin
	Q=0;D=0;
#1	Q=0;D=1;
#1	Q=1;D=0;
#1	Q=1;D=1;
end

initial begin
	$monitor("Q=%d D=%d Qn=%d ~Qn=%d",Q,D,Qn,P);
end
endmodule
