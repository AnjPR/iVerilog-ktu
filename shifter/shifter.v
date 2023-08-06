module shift(input clk,clr,d,output reg[3:0]q);
  reg[3:0] temp;
  always @(posedge clk) begin
    if(clr==1)
      q=4'b0000;
    else begin
      temp=q>>1;
      q={d,temp[2:0]};
    end
  end
endmodule
