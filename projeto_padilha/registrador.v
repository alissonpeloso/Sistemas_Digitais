module registrador(
    input ck,
    input ena,
    input [5:0] d,
    output reg [5:0] q
);


always @(posedge ck)
    if (ena == 1) 
        q <= d;
endmodule