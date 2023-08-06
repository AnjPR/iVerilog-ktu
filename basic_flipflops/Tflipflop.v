module TF(output Qn,P,input T,Q);
assign Qn=T^Q;
assign P=~Qn;
endmodule
