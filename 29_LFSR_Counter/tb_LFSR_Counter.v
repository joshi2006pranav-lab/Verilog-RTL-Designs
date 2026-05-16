module tb();
    reg clk;
    reg rst;
    reg [3:0]pre_val;    
    wire fb;
    wire [3:0] q;

    LFSR_Counter dut(
        .CLK(clk),
        .RST(rst),
        .PRE_VAL(pre_val),
        .FB(fb),    
        .Q(q)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        pre_val = 4'b1000;

        #10; rst = 0;
        
        #100; 
        $finish;
    end
    
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end

    
endmodule