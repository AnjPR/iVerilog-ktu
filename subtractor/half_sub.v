module half_sub(output reg D,Bor,input A,B);
always @ * begin
	if(A!=B) begin
		D=1;
	end
	else begin
		D=0;
	end
	
	if(A==0 && B==1) begin
		Bor=1;
	end
	else begin
		Bor=0;
	end	
end
endmodule


module half_sub_tb;
reg A,B;
wire D,Bor;
half_sub hf(D,Bor,A,B);

initial begin
	A=0;B=0;
	#1 A=0;B=1;
	#1 A=1;B=0;
	#1 A=1;B=1;
end

initial begin
	$display("Half Subtractor Truth Table");
	$monitor("%t |A= %d|B= %d|D= %d|Bor= %d",$time,A,B,D,Bor);
end
endmodule 			

