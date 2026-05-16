module tb(); 

    reg clk;
    reg rst;
    reg en;
    reg load;
    reg [3:0] d_in;
    wire [3:0] q;

    Sync_Loadable_Counter dut(
        .CLK(clk),
        .RST(rst),
        .EN(en),
        .LOAD(load),
        .D_IN(d_in),
        .Q(q)
    );

   
    always #5 clk = ~clk;

    initial begin 
        clk = 0;
        rst = 1;
        en = 0;
        load = 0;
        d_in = 4'b0000;

        // Reset release 
        #10 rst = 0; en = 1;

        // Let it count a bit
        #20;

        // Load value 10
        en = 0; 
        load = 1; 
        d_in = 4'b1010;

        #10;

        // Resume counting
        load = 0; 
        en = 1;

        #30 $finish;
    end

    
    initial begin
        $monitor("Time=%0t | RST=%b EN=%b LOAD=%b D_IN=%d | Q=%d",
                  $time, rst, en, load, d_in, q);
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end

endmodule