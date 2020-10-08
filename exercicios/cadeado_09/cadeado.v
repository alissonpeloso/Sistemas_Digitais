module cadeado(
    output aberto,
    input a,
    input m
);

    reg [31:0] conta = 0;

    always @( posedge a ) begin
        if (m == 1) begin
            conta <= conta + 1;
        end
        else begin
            conta <= conta - 1;
        end
    end

    assign aberto = conta == 1073741824;

endmodule