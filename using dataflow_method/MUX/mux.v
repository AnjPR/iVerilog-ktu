module mux(output reg y, input a, b, c, d, s0, s1);

always @(s1 or s0) begin
    if(s0 == 1'b0 && s1 == 1'b0)
        y = a;
    else if(s0 == 1'b1 && s1 == 1'b0)
        y = b;
    else if(s0 == 1'b0 && s1 == 1'b1)
        y = c;
    else
        y = d;
end

endmodule