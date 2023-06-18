module not_gate (output reg Y,input A);
always @(A) begin
	if (A==1)
		Y=0;
	else 
		Y=1;
	
end 
endmodule

