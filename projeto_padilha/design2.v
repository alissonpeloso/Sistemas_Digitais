
module swap2 (
    input ck,
    input rst,
    input w,
    output done
);

reg [5:0] r1 = 1;
reg [5:0] r2 = 2;
reg [5:0] r3 = 3;
reg [1:0] state;

assign done = state == 0;

always @(posedge ck or rst) begin
    if (rst == 1) 
        state <= 0;
    else begin
        case(state)
            0: state <= w ? 1 : 0;
            1: begin
                state <= 2;
                r3 <= r1;
            end
            2: begin
                state <= 3;
                r1 <= r2;
            end
            3: begin
                state <= 0;
                r2 <= r3;
            end
        endcase
    end
end

endmodule