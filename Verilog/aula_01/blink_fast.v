module blinker (

    input CLOCK_50, // assign CLOCK_50 = clk;
    output [1:0] LEDG
    
);

    /* reg */
    reg [1:0] state = 2'b01;

    /* assign */ 
    assign LEDG = state;
    
    /* always */
    always @ (posedge CLOCK_50) begin
        state <= ~state;
    end

endmodule

