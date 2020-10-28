module tristate(
    input c,
    input [5:0] A,
    output [5:0] B
);

assign B = c==1? A : 5'bzzzzz;

endmodule