module halfadder (output reg S,C,input A,B);
    always @(A or B) begin
        if (A!=B) begin 
            S=1'b1;
        end
        else
            S=1'b0;
        
        if (A==1'b1 & B==1'b1) begin
            C=1'b1;
        end
        else
            C=1'b0;
    end
endmodule

module fulladder (output Sum,Carry,input A,B,C);
    wire sum1,carry1,sum2,carry2;
    halfadder a (sum1,carry1,A,B);
    halfadder b (sum2,carry2,sum1,C);
    assign Sum=sum2;
    assign Carry=carry1|carry2;
endmodule

module testbench;
    reg A, B, cin;
    wire sum, carry;

    fulladder i (sum, carry, A, B, cin);
    initial begin
        $display("a0 b0 cin | sum cout");
        $monitor("%b  %b  %b |  %b   %b", A, B, cin, sum, carry);

        // Test cases
        A = 0; B = 0; cin = 0; #10;
        A = 0; B = 0; cin = 1; #10;
        A = 0; B = 1; cin = 0; #10;
        A = 0; B = 1; cin = 1; #10;
        A = 1; B = 0; cin = 0; #10;
        A = 1; B = 0; cin = 1; #10;
        A = 1; B = 1; cin = 0; #10;
        A = 1; B = 1; cin = 1; #10;

        $finish;
    end
endmodule




