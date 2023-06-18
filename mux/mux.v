module Mux(output reg q,input A,B,C,D,sel1,sel2);

always @(A or B or C or D or sel1 or sel2) begin
    if(sel1==1'b0 & sel2==1'b0)
        assign q = A;
    if(sel1==1'b0 & sel2==1'b1)
        assign q = B;
    if(sel1==1'b1 & sel2==1'b0)
        assign q = C;
    if(sel1==1'b1 & sel2==1'b1)
        assign q = D;
end
endmodule