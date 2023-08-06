`include "Tflipflop.v"
module Ttb();
reg Q,T;

TF i(Qn,P,T,Q);
initial begin
	T=0;Q=0;
#1	T=0;Q=1;
#1	T=1;Q=0;
#1	T=1;Q=1;
end
initial begin
	$monitor("T=%d Q=%d Qn=%d ~Qn=%d",T,Q,Qn,P);
end
endmodule
