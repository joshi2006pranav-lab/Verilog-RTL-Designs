module tb(); 
    reg clk;
    reg si;
    reg rst;
    wire so;

    integer i;

    SISO_Shift_Reg dut( .CLK(clk), .SI(si), .RST(rst), .SO(so));

    always #5 clk = ~clk; //clk generation

    initial begin 
        $monitor("%0t | CLK=%b| si=%b | so=%b",
                $time, clk, si, so);
        
        clk=0; si=0; rst=1; 
        #10; rst =0;

        for (i =0 ;i<10 ;i =i+1 ) begin
            si = $urandom%2;   
            #10;
        end
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end

endmodule