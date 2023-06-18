module FS(output diff,borrow,input A,B,C);
assign diff=A^B^C;
assign borrow=(~A&B)+(C&~(A^B));
endmodule
