module testbench;

    reg a=0, m=0;

    cadeado cad1(aberto, a, m);

    always #1 begin
        a <= ~a;
    end

initial begin
    $dumpvars;

    #2147483648

    m <= 1;

    #500

    $finish;
end

endmodule