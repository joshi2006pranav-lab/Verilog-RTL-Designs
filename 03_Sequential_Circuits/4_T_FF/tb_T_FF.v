module tb();
    reg t;
    reg clk, rst;
    wire q;
    integer i;

    TFF dut(
        .T(t),
        .CLK(clk),
        .RST(rst),
        .Q(q)
    );

    always #5 clk= ~clk; // Clock Generation

    initial begin 
        $monitor("%0t | T=%b | CLK=%b RST=%b|Q=%b",
                $time, t, clk, rst, q);

        t = 0; clk= 0; rst=1;

        #10; rst =0; //unreset

        for (i =0 ;i<10 ;i =i+1 ) begin
            t = $random % 2;          
            #10;
        end
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
         end

endmodule