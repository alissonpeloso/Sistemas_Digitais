module cadeado(
    output aberto,
    input [3:0] a,
    input [3:0] b
);

    assign aberto = ~(a[1:0]) == b[3:2];

endmodule