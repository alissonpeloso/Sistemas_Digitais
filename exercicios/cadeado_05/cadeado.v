module cadeado(
    output aberto,
    input [3:0] a,
    input [3:0] b
);

    assign aberto = (a ^ b) == 4'hA;

endmodule