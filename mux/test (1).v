`include "mux.v"

module test;
reg a, b, c, d, s0, s1;
wire y;
mux i(y, a, b, c, d, s0, s1);

initial begin
    a = 1; b = 1; c = 0; d = 0;
       s1 = 0; s0 = 0;
    #1 s1 = 0; s0 = 1;
    #1 s1 = 1; s0 = 0;
    #1 s1 = 1; s0 = 1;
end

initial begin
    $monitor("s1 = %d s0 = %d y = %d", s1, s0, y);
end



endmodule