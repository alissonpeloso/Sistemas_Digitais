module cadeado(
    output aberto,
    input a,
    input b,
    input c,
    input d
);

assign aberto = a & b & c & d;

endmodule