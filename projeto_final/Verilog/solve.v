`include "bo.v"
`include "bc.v"

module solve(
    input clock,
    input signed [7:0] valor_x,
    input signed [15:0] valor_a,
    input signed [15:0] valor_b,
    input signed [15:0] valor_c,
    input enable,
    input reset,
    output signed [15:0] result,
    output ready,
    output valid
);
    wire LX;
    wire [1:0] M0;
    wire [1:0] M1;
    wire [1:0] M2;
    wire H;
    wire LS;
    wire LH;

    bc bc0(clock, reset, enable, LX, M0, M1, M2, H, LS, LH, valid, ready);
    bo bo0(clock, LX, M0, M1, M2, H, LS, LH, valor_x, valor_a, valor_b, valor_c, result);

endmodule