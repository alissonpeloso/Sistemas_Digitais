module testbench;

    reg a = 0, b = 0, c = 0, d = 0;

    cadeado cad1(aberto, a, b, c, d);

initial begin
   $dumpvars;

    a <= 1;
    b <= 1;
    c <= 1;
    d <= 1;

    #500;

   $finish; 
end

endmodule