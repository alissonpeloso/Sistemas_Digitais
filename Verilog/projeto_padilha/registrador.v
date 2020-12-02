module registrador1(
    input ck,
    input ena,
    input [5:0] d,
    output reg [5:0] q = 1
);


always @(posedge ck)
    if (ena == 1) 
        q <= d;
endmodule


module registrador2(
    input ck,
    input ena,
    input [5:0] d,
    output reg [5:0] q = 2
);


always @(posedge ck)
    if (ena == 1) 
        q <= d;
endmodule


module registrador3(
    input ck,
    input ena,
    input [5:0] d,
    output reg [5:0] q = 3
);


always @(posedge ck)
    if (ena == 1) 
        q <= d;
endmodule