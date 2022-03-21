module fake(
    input clock,
    input signed [7:0] x,
    input signed [15:0] a,
    input signed [15:0] b,
    input signed [15:0] c,
    input enable,
    input reset,
    output signed [15:0] result,
    output ready,
    output valid
);

reg [3:0] state;

reg [15:0] temp;

assign valid = state == 15;
assign ready = state == 0;

assign result = a * x * x + b * x + c;

always @(posedge clock or reset)
begin
    if (reset) begin
        state <= 0;
    end
    else begin
        if (state == 0 && ~enable)
            state <= state;
        else 
            state <= state + 1;
    end
end


endmodule