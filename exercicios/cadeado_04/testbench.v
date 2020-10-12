module testbech;

    reg a = 0, b = 0, c = 0, d = 0;

    cadeado cad1(aberto, a, b, c, d);

    always #6553 begin
        c <= ~c;
    end     

    always #1 begin
        d <= ~d;
    end                 

initial begin
    $dumpvars;

    a <= 1;

    #131070;

    $finish;
end

endmodule