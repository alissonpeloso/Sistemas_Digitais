module test;

reg clk = 0, clk2 = 0;

wire clk_wire, clk_wire2;

assign clk_wire = clk;
assign clk_wire2 = clk2;

always #2 begin
    clk <= ~clk;
end

always #3 begin
    clk2 <= ~clk2;
end

initial begin
    $dumpvars;
    #500;
    $finish;
end

endmodule