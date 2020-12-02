module MUX(
    input [15:0] a,
    input [15:0] b,
    input [15:0] c,
    input [15:0] d,
    input [1:0] set,
    output [15:0] out
);
    if (set == 0) begin
        out <= a;
    end

    else if (set == 1) begin
        out <= b;
    end

    else if (set == 2) begin
        out <= c;
    end

    else if (set == 3) begin
        out <= d;
    end

endmodule