`include "JKflipflop.v"
module JKtb();
reg J,K,Q;
JK i(Qn,P,J,K,Q);
initial begin
	Q=0;J=0;K=0;
#1	Q=0;J=0;K=1;
#1	Q=0;J=1;K=0;
#1	Q=0;J=1;K=1;
#1	Q=1;J=0;K=0;
#1	Q=1;J=0;K=1;
#1	Q=1;J=1;K=0;
#1	Q=1;J=1;K=1;

end

initial begin
	$monitor("Q=%d J=%d K=%d Qn=%d ~Qn=%d",Q,J,K,Qn,P);
end

endmodule
