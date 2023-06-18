module EXNOR_2_behavioral (output reg Y, input A, B);
always @ (A or B) 
begin
  if ((A == 1'b0 & B == 1'b1)||(A == 1'b1 & B == 1'b0)) 
  begin
       Y = 1'b0;
   end
   else 
       Y = 1'b1; 
end
endmodule
