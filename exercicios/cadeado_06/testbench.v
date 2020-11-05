module testbench;

    reg [3:0] a;
    reg [3:0] b;

    cadeado cad1(aberto, a, b);

initial begin
    $dumpvars;

    a <= 4'b0000;
    b <= 4'b1100;

    #500

    $finish;
end

endmodule