module JK(output Qn,P,input J,K,Q);
assign Qn=((J&(~Q))+((~K)&Q));
assign P=~Qn;
endmodule
