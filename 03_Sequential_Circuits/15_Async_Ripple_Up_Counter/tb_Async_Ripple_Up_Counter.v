module tb();
    reg clk;
    reg rst;   
    wire[3:0] q;   
    
    Async_Ripple_Up_Counter dut(
        .CLK(clk),
        .RST(rst),
        .Q(q)
    );
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;

        #10; rst = 0; 
        
        #200;

        $finish;
    end

    initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    end

endmodule