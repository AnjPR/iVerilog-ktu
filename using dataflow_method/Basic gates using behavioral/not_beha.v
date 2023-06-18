module NOT_2_behavioral (output reg Y, input A);
always @ (A) 
begin
  if (A == 1'b1) 
  begin
       Y = 1'b0;
   end
   else 
       Y = 1'b1; 
end
endmodule
