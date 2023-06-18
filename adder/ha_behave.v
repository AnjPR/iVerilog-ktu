module ha(output reg S,C, input A,B);
	always @(A or B) begin
	if (A!= B)
	begin 
		S=1'b1;
		
	end
	else
		S=1'b0;
	
	if (A==1'b1 & B==1'b1)
	begin
		C=1'b1;
	end
	else 
		C=1'b0;
	end
	
endmodule

module ha_tb;
	reg A,B;
	wire S,C;

	ha i(S,C,A,B);
	initial begin
		A=0;B=0;
		#1 A=0;B=1;
		#1 A=1;B=0;
		#1 A=1;B=1;
	end

	initial begin
	$monitor("%t|A=%d|B=%d|S=%d|Cout=%d|", $time,A,B,S,C);
	end
endmodule

