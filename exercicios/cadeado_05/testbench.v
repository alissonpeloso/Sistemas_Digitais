module testebench;

    reg [3:0] a;
    reg [3:0] b;

    cadeado cad1(aberto, a, b);

initial begin
    $dumpvars;

    a <= 4'b1010;
    b <= 4'b0000;

    #500

    $finish;
end

endmodule