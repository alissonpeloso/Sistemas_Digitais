// Slow blinking a LED

/* module */
module blinker (

    input CLOCK_50,
    output [1:0] LEDG
    
);

    /* reg */
    reg state = 2'b01;
    reg [10:0] counter = 0;

    /* assign */ 
    assign LEDG = state;
    
    /* always */
    always @ (CLOCK_50) begin
        if (counter == 10 )
        begin
            counter <= 0;
            // state <= ~state;
        end
        else begin
            counter <= counter + 1;
        end
    end


    /* always */
    always @ (negedge CLOCK_50) begin
        if (counter == 10 )
        begin
            // counter <= 0;
            state <= ~state;
        end
        else begin
            // counter <= counter + 1;
        end
    end


    

endmodule


module testbench; 


reg clk = 0;
wire [1:0] leds;

blinker b(clk, leds);

always #1 begin
    clk <= ~clk;
end

initial begin 
$dumpvars(0);
#100 $finish;


end

endmodule