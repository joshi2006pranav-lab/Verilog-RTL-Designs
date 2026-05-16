module tb(); 
    reg clk;
    reg rst;
    reg en; 
    reg [3:0]n;
    wire [3:0]q;

    Sync_MOD_N_Counter dut(
        .CLK(clk),
        .RST(rst),
        .EN(en),
        .N(n),
        .Q(q)
    );

    always #5 clk = ~clk;

    initial begin
        clk =0; 
        rst =1; 
        en = 0;
        n=0; 
        
        #10; en= 1; rst= 0;

        n = 4'b1010;
        #100; 
        n= 4'b0101;
        #50;
        
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);

    end

endmodule