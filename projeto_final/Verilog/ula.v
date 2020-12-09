module ula(
    input signed [15:0] a,
    input signed [15:0] b,
    input h,
    output signed [15:0] out
);

    assign out = h? a * b : a + b;

endmodule