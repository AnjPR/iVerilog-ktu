`include"fafa.v"
module fabyha;
reg A,B,C;
wire Sum,Carry;

fa i(Sum,Carry,A,B,C);
initial begin
	A=0;B=0;C=0;
#1	A=0;B=0;C=1;
#1	A=0;B=1;C=0;
#1	A=0;B=1;C=1;
#1	A=1;B=0;C=0;
#1	A=1;B=0;C=1;
#1	A=1;B=1;C=0;
#1	A=1;B=1;C=1;

end

initial begin
$monitor("A=%d B=%d Cin=%d S=%d Cout=%d",A,B,C,Sum,Carry);
end
endmodule

