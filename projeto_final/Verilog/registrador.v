module registrador(
    input clk,
    input l,
    input signed [15:0] in,
    output reg signed [15:0] out
);

    always @(posedge clk) begin
        if (l == 1) begin
            out <= in;
        end
    end

endmodule