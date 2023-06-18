module ha(output S,C, input A,B);
	xor(S,A,B);
	and(C,A,B);
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

