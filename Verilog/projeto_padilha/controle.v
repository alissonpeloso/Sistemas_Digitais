
module controle (
    input ck,
    input w,
    input rst,
    output c1,
    output c2,
    output c3,
    output h1,
    output h2,
    output h3,
    output done
);

reg [1:0] state;

parameter A = 0, B = 1, C = 2, D = 3;

assign c1 = state == D;
assign c2 = state == C;
assign c3 = state == B;
assign h1 = state == C;
assign h2 = state == B;
assign h3 = state == D;
assign done = state == A;

always @( posedge ck or rst) begin
    if(rst == 1) 
        state <= A;
    else begin
        case (state)
            A : begin
                state <= w == 0 ? A : B;
            end
            B : begin
                state <= C;
            end
            C : begin
                state <= D;
            end
            D : begin
                state <= A;
            end
        endcase    
    end
end

endmodule