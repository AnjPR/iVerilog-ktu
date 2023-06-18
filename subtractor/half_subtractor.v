module half_sub(output reg D,B,input A,Bin);
always @* begin
if (A != Bin ) begin
   D=1;
   end
   else begin
   D=0;
   end
 if(A==0 && Bin==1) begin
    B=1;
    end
    else begin
    B=0;
    end
end
endmodule
    
