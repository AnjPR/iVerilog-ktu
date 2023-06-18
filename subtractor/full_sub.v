`include "half_subtractor.v"
module full_sub(output reg D,Bor,input A,B,C);

half_sub HS1(D1,Bor1,A,B);
half_sub HS2(D2,Bor2,D1,C);

always @ * begin	
	D=D2;
	Bor=Bor1|Bor2;
end
endmodule	 
