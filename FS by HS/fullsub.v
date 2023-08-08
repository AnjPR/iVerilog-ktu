module halfsub (output reg D,Bin,input A,B);
    always @(A or B) begin
        if (A!=B) begin 
            D=1'b1;
        end
        else
            D=1'b0;
        
        if (A==1'b0 & B==1'b1) begin
            Bin=1'b1;
        end
        else
            Bin=1'b0;
    end
endmodule

module fullsub (output D,Bout,input A,B,Bin);
    wire d1,b1,d2,b2;
    halfsub a (d1,b1,A,B);
    halfsub b (d2,b2,d1,Bin);
    assign D=d2;
    assign Bout=b1|b2;
endmodule

module testbench;
    reg A, B, Bin;
    wire D, Bout;

    fullsub i (D,Bout,A,B,Bin);
    initial begin
        $display("A B Bin | D Bout");
        $monitor("%b  %b  %b |  %b   %b", A, B, Bin, D, Bout);

        // Test cases
        A = 0; B = 0; Bin = 0; #10;
        A = 0; B = 0; Bin = 1; #10;
        A = 0; B = 1; Bin = 0; #10;
        A = 0; B = 1; Bin = 1; #10;
        A = 1; B = 0; Bin = 0; #10;
        A = 1; B = 0; Bin = 1; #10;
        A = 1; B = 1; Bin = 0; #10;
        A = 1; B = 1; Bin = 1; #10;

        $finish;
    end
endmodule




