module cadeado(
    output aberto,
    input a,
    input b,
    input c,
    input d
);

reg [15:0] conta_c = 0;
reg [15:0] conta_d = 0;

always @( posedge c ) begin
    conta_c <= conta_c + 1;
end

always @( negedge d) begin
    conta_d <= conta_d + 1;
end

assign aberto = a & b & conta_c == 10 & conta_d == 5;

endmodule