module testbench;

reg ck = 0, rst = 0, w = 0;
wire done;

wire [5:0] barramento;

swap s1(
    barramento,
    ck,
    rst,
    w,
    done
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