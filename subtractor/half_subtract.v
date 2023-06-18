module half(output reg D,Bout,input A,B);
   always @(A or B)begin
   //Difference
   if( A != B )
   begin
      D=1'b1;
   end
   else
      D=1'b0;
      //Borrow
	if(A==1'b0&B==1'b1)
	begin
	Bout=1'b1;
	end
	else
	Bout=1'b0;
   end
endmodule
  
module half_tb;
  reg A,B;
  wire D,Bout;
  half i(D,Bout,A,B);
  initial begin
	  A=0;B=0;
	  #1 A=0;B=1;
	  #1 A=1;B=0;
	  #1 A=1;B=1;
  end
  initial begin
	//$display("Half Subtractor Truth Table");
  	$monitor("%t|A=%d|B=%d|D=%d|Bout=%d",$time,A,B,D,Bout);
  end
endmodule
  





















