module hs(output  D,C,input A,B);
assign D=A^B;
assign C=(~A&B);
endmodule
