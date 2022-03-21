module cima(
    input A,
    output B
);
    wire y;

    assign y = A;
    assign B = y;

endmodule

// ---------------------

module baixo(
    input A,
    input clk,
    output B
);

    reg x;
    assign B = x;

    always @( posedge clk ) begin
        x <= A;
    end

endmodule

// --------------------

module testbench;

    reg entrada = 0;
    reg clk = 0;
    wire saida_cima, saida_baixo;

    cima c1(entrada, saida_cima);
    baixo b1(entrada, clk, saida_baixo);

    initial begin
        $dumpvars;
        #2;
        entrada <= 1;
        #2;
        clk <= 1;
        #2;
        clk <= 0;
        #2;
        entrada <= 0;
        #2;
        clk <= 1;
        #2;
        $finish;
    end

endmodule