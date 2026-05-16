module tb();
    reg clk;
    reg[3:0] pi;
    reg rst;    
    reg load;
    wire so;

    PISO_Shift_Reg dut(.CLK(clk), .PI(pi), .RST(rst), .LOAD(load), .SO(so));

    always #5 clk = ~clk; 

    initial begin 
        rst = 0;  load = 0;   pi = 4'b0000;

        $monitor("%0t | CLK=%b| load=%b | pi=%b | so=%b",$time, clk, load, pi, so);
        
        //2 test cases
        
            //Reset mode
            clk =0; rst = 1; load = 0; 
            #10;  rst = 0; #10;

            //Load mode 1 cycle
            load =1;
            pi = 4'b1111;
            #10;           

            // shift mode 4 cycles
            load = 0;       
            #40;    

            $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end

endmodule


