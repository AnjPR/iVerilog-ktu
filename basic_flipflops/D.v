//present state is Q and next state is Qn
module D(output Qn,P,input D,Q);
assign Qn=D;
assign P=~Qn;
endmodule
