module testbench;

    reg x;

    reg [9:0] num;

    always #1 x <= ~x;

    always #1 num <= num + 1;

    initial begin 

        $dumpvars;

        x <= 0;
        num <= 0;

        
        #500;

        $finish;

    end

endmodule