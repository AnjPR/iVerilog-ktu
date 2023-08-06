`include "SR.v"
module SRtb();
reg S,R,Q;
SR i(Qn,P,S,R,Q);
initial begin

	Q=0;S=0;R=0;
#1	Q=0;S=0;R=1;
#1	Q=0;S=1;R=0;
#1	Q=0;S=1;R=1;
#1	Q=1;S=0;R=0;
#1	Q=1;S=0;R=1;
#1	Q=1;S=1;R=0;
#1	Q=1;S=1;R=1;

end


initial begin
	$monitor("Q=%d S=%d R=%d Qn=%d ~Q=%d",Q,S,R,Qn,P);
end

endmodule
