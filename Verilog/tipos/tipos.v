module testbench;

    reg x;
    reg [4:0] num;

    wire x_wire;
    wire [4:0] num_wire1;
    wire [0:4] num_wire2;

    assign x_wire = x;
    assign num_wire1 = num;
    assign num_wire2 = num;


    initial begin 
        $dumpvars;

        #1; 
        x <= 0;
        
        #1; 
        x <= 1;
        
        #1; 
        x <= 1'b0;
        
        #1; 
        x <= 1'b1;
        
        #1; 
        x <= 1'bz;
        
        #1; 
        num <= 5'b00000;
        
        #1; 
        num <= 5'd10;
        
        #1; 
        num <= 5'haa;

        #1; 
        num <= 5'o76;
        
        #1;

        $finish;

    end
endmodule