module OR_2_behavioral (output reg Y, input A, B);

always @ (A or B) begin

if (A == 1'b0 & B == 1'b0)
begin

Y = 1'b0;
end
else
begin
Y = 1'b1;
end
end
endmodule
