//defining T flipflop
//using behavioral
module T_flip(output reg Q, input clear, input clock, input T);//3 inputs are clock,clear,T and only output is Q
always @(negedge clock or posedge clear)//means the block is sensitive for both clock and clear..ie the block works only for negative edge of clock or positive edge of clear
//finding output terms of the above module
//generating output from inputs
begin
	if(clear == 1)
		Q = 0;
	else
	begin
		Q = Q ^ T;//exor//toggling
//initially we begin with Q=0.. at next stage if T==1 then Q will be 1. Then if T==1 then Q will be 0.. This process continues..ie Toggling
	end
end
initial begin
	Q = 0;
end
endmodule
