module ula(
    input [15:0] a,
    input [15:0] b,
    input h,
    output [15:0] out
);

    assign out = h ? a * b : a + b;

endmodule