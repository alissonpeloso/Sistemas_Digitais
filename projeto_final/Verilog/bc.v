module bc(
    input clock,
    input reset,
    input enable,
    output LX,
    output [1:0] M0,
    output [1:0] M1,
    output [1:0] M2,
    output H,
    output LS,
    output LH,
    output done,
    output ready
);
    reg[3:0] state;

    always @(posedge clock or reset) begin

        if (reset)
            state <= 0;

        else begin
            if (state == 0 && ~enable)
                state <= state;
            else begin
                if(state == 8)
                    state <= 0;
                else begin
                state <= state + 1;
                end
            end
        end
    end

    assign M0 = state == 0? 0 : state == 3? 1 : state == 4? 2 : state == 6? 3 : 0;

    assign M1 = state == 2? 1 : state == 3? 0 :  state == 5? 2 : state == 6? 0 : 0;

    assign M2 = state == 2? 0 : state == 3? 2 :  state == 5? 3 : state == 6? 3 : 0;

    assign H = state == 2? 1 : state == 3? 1 : state == 4? 1 : 0;

    assign LX = state == 1? 1 : 0;

    assign LS = state == 2? 1 : state == 4? 1 : state == 6? 1 : 0;

    assign LH = state == 3? 1 : state == 5? 1 : 0;

    assign done = state == 0? 0 : state == 1? 0 : state == 2? 0 : state == 3? 0 : state == 4? 0 : state == 5? 0 : state == 6? 0 : state == 7? 1 : 0;

    assign ready = state == 0? 1 : state == 1? 0 : state == 2? 0 : state == 3? 0 : state == 4? 0 : state == 5? 0 : state == 6? 0 : state == 7? 0 : 0;

endmodule