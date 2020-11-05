module testbench;

reg ck = 0, rst = 0, w = 0;
wire done1, done2;

wire [5:0] barramento1;

swap s1(
    barramento1,
    ck,
    rst,
    w,
    done1
);

swap2 s2(
    ck,
    rst,
    w,
    done2
);

always #2 ck <= ~ck;

initial begin
    $dumpvars;
    rst <= 1;
    #10;
    rst <= 0;
    #10;
    w <= 1;
    #4;
    w <= 0;
    # 20;
    $finish;

end


endmodule