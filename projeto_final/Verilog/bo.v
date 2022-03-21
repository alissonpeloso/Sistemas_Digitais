`include "registrador.v"
`include "mux.v"
`include "ula.v"

module bo(
    input clock,
    input LX,
    input [1:0] M0,
    input [1:0] M1,
    input [1:0] M2,
    input H,
    input LS,
    input LH,
    input signed [7:0] valor_x,
    input signed [15:0] valor_a,
    input signed [15:0] valor_b,
    input signed [15:0] valor_c,
    output signed [15:0] resultado
);
    wire signed [15:0] valor_x16;
    assign valor_x16 = valor_x;
    wire signed [15:0] out_x;
    wire signed [15:0] out_s;
    wire signed [15:0] out_h;
    wire signed [15:0] out_mux0;
    wire signed [15:0] out_mux1;
    wire signed [15:0] out_mux2;
    wire signed [15:0] out_ula;

    registrador reg_x(clock, LX, valor_x16, out_x);
    registrador reg_s(clock, LS, out_ula, out_s);
    registrador reg_h(clock, LH, out_ula, out_h);

    mux mux0(valor_a,valor_a,valor_b,valor_c,M0,out_mux0);
    mux mux1(out_mux0,out_x,out_s, out_h, M1, out_mux1);
    mux mux2(out_x, out_mux0, out_s, out_h, M2, out_mux2);

    ula ula0(out_mux1, out_mux2, H, out_ula);

    assign resultado = out_s;

endmodule