module xor_gate (output reg Y,input A,input B);
always @(A or B) begin
	if (A==B)
		Y=0;
	else 
		Y=1;
	
end 
endmodule

