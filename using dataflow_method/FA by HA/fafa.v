`include"haha.v"
module fa(output Sum,Carry, input A,B,C);
wire Z,D,Y,S;
ha a(Y,D,A,B);
ha b(S,Z,Y,C);
//finding inputs of the module by previously made functions
assign Sum=S;
assign Carry=Z|D;
endmodule
