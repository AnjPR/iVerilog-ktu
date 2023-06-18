module FA(output sum,carry,input A,B,C);
and(P,A,B);
xor(Q,A,B);
and(R,C,Q);
or(carry,P,R);

xor(sum,Q,C);

endmodule
