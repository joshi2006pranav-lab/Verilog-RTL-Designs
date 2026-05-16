
module tb#( parameter width = 3)  (); 
    reg clk_in;
    reg rst;
    reg en; 
    reg [width-1:0]n;
    wire clk_out;
    wire [width-1:0]count;

    DivByN_Counter #(.WIDTH(width)) dut(
        .CLK_IN(clk_in),
        .RST(rst),
        .EN(en),
        .N(n),
        .CLK_OUT(clk_out),
        .COUNT(count)
    );

    always #5 clk_in = ~clk_in;

    initial begin
        clk_in =0; 
        rst =1; 
        en = 0;
        n=0; 
        
        #10; en= 1; rst= 0;

        n = 3'b101;
        #100; 
        n= 3'b010;
        #50;
        
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);

    end


endmodule