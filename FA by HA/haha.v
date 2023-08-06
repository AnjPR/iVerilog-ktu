module ha(output reg S,C, input A,B);
always@(A or B)begin

assign S=A^B;
assign C=A&B;
end
endmodule
