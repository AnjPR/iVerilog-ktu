`include "T_flip.v"
module sync(output Q0, Q1, Q2, input clock, input clear, input enable);
wire clear, T1, T2;
reg up;//up=1 means upcounter and up=0 means down counter
//using dataflow
//T2=up&Q1&Q0+down&Q1'&Q0'
//T1=up&Q0+down&Q0'
//T0=1

//finding values of output by calling previous modules' instances
assign T1 = (up & (Q0 & enable)) | (~up & (~Q0 & enable));
assign T2 = (up & (Q0 & Q1 & enable)) | (~up & (~Q0 & ~Q1 & enable));
//calling the modules of t flipflop into 3 instances a,b,c
T_flip a(Q0, clear, clock, enable);//(output,clear,clock,T) here we give enable as T input...bcz if we enable the circuit then T and enable will be equal to 1.
T_flip b(Q1, clear, clock, T1);
T_flip c(Q2, clear, clock, T2);

always @(clear) begin//block is sensitive to clear
	if(clear == 1)
		up = 1;//clear cheythal all goes to 0 and then it is started to count upwards
end

always @(clock) begin
	if(up == 1 && {Q2, Q1, Q0} == 3'b111)
		up = 0;// ie, 111 ethiyaal pinne count downwards
	else if(up == 0 && {Q2, Q1, Q0} == 3'b000)
		up = 1;//ie, 000 ethiyaal pinne count upwards
end

endmodule
