
module swap (
    input ck,
    input rst,
    input w,
    output done
);

wire [5:0] barramento;

wire [5:0] r1_out;
wire [5:0] r2_out;
wire [5:0] r3_out;

registrador r1(ck, c1, barramento, r1_out);
registrador r2(ck, c2, barramento, r2_out);
registrador r3(ck, c3, barramento, r3_out);

tristate t1(h1, r1_out, barramento);
tristate t2(h2, r2_out, barramento);
tristate t3(h3, r3_out, barramento);

controle contr(ck, w, rst, c1, c2, c3, h1, h2, h3, done);

endmodule