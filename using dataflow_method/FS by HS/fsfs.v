`include"hshs.v"
module fs(output  diff,carry,input A,B,C);

hs o(M,N,A,B);
hs p(Y,Z,M,C);
assign diff=Y;
assign carry=N|Z;
endmodule

