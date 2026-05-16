module tb(); 
    reg s,r;
    reg clk, rst;
    wire q;
    integer i;

    SR_FF dut(
    .S(s), .R(r),
    .CLK(clk), .RST(rst),
    .Q(q)
    );

    always #5 clk= ~clk; // Clock Generation

    initial begin 
        $monitor("%0t | S=%b R=%b | CLK=%b RST=%b|Q=%b",
                $time, s, r, clk, rst, q);

        s = 0; r = 0; clk= 0; rst=1;

        #10; rst =0; //unreset

        for (i =0 ;i<10 ;i =i+1 ) begin
            s = $random % 2;
            r = $random % 2;            
            #10;
        end
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end

endmodule