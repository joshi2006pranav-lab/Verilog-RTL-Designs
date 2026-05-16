module tb();
    reg clk;
    reg rst;
    reg in;
    wire out;

    integer i;
    reg [15:0] my_in;

    Sequence_Detector_Moore_FSM DUT(
        .CLK(clk),
        .RST(rst),
        .IN(in),
        .OUT(out)
    );

    always #5 clk = ~clk; // Clock generation

    initial begin 
        clk = 0;
        rst=1;
        in=0;
        #10; rst=0;

        //test sequence: 1 1 0 0 0 1 0 1 1 1 0 1 0 1 0 0 
        my_in = 16'b1100010111010100; 
       
        for(i = 0; i < 16; i = i + 1)begin
            #10; in = my_in[i];
        end
        
        #10; $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end 

endmodule