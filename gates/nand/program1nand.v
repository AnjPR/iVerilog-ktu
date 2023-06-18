module nand_gate (output reg Y,input A,input B);
always @(A or B) begin
	if (A==1 && B==1)
		Y=0;
	else 
		Y=1;
	
end 
endmodule

