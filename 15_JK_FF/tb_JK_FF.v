module tb(); 
    reg j,k;
    reg clk, rst;
    wire q;
    integer i;

    JK_FF dut(
    .J(j), .K(k),
    .CLK(clk), .RST(rst),
    .Q(q)
    );

    always #5 clk= ~clk; // Clock Generation

    initial begin 
        $monitor("%0t | J=%b K=%b | CLK=%b RST=%b|Q=%b",
                $time, j, k, clk, rst, q);

        j = 0; k = 0; clk= 0; rst=1;

        #10; rst =0; //unreset

        for (i =0 ;i<10 ;i =i+1 ) begin
            j = $random % 2;
            k = $random % 2;            
            #10;
        end
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end

endmodule