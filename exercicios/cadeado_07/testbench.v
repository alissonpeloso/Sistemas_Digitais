module testbench;

    reg a=0,b=0,c=0,d=0;

    cadeado cad1(aberto,a,b,c,d);

    always #10 begin
        c = ~c;
    end

    always #1 begin
        d = ~d;
    end

initial begin
    $dumpvars;

    #500

    $finish;
end

endmodule