module and_gate (output reg Y,input A,input B);
always @(A or B) begin
	if (A==1 && B==1)
		Y=1;
	else 
		Y=0;
	
end 
endmodule

