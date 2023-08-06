module SR(output Qn,P,input S,R,Q);
assign Qn=(S+(Q&(~R)));
assign P=~Q;
endmodule
