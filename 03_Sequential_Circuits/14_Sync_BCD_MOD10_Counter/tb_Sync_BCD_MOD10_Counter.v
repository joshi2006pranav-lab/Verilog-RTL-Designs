module tb();
    reg clk; 
    reg rst; 
    reg en;
    wire[3:0] count;

    Sync_BCD_MOD_10_Counter dut(
        .CLK(clk),
        .RST(rst),
        .EN(en),
        .COUNT(count)
    );

    always #5 clk = ~clk;

    initial begin 
        clk =0;
        rst=1;
        en=0;

        #10; rst=0; en=1;
        #100; en=0;
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);

    end

endmodule