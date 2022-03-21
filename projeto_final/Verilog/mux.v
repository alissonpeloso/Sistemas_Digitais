module mux(
    input signed [15:0] a,
    input signed [15:0] b,
    input signed [15:0] c,
    input signed [15:0] d,
    input  [1:0] set,
    output signed [15:0] out
);
    assign out = set == 0 ? a : set == 1 ? b : set == 2 ? c : d; 

endmodule