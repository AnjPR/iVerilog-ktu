`include "T_flip.v"
module async_dec(output Q0, Q1, Q2, Q3, input clock, input clear_in);
wire clear;
//finding outputs terms by calling the previous modules' instances 
assign clear = clear_in | (Q3 & Q1);
T_flip a(Q0, clear, clock, 1'b1);
//previous outputs are clocks of next flipflops
T_flip b(Q1, clear, Q0, 1'b1);
T_flip c(Q2, clear, Q1, 1'b1);
T_flip d(Q3, clear, Q2, 1'b1);

endmodule
