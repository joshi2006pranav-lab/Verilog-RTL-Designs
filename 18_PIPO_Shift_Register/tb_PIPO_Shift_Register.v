module tb(); 
    reg clk;
    reg[3:0]pi;
    reg rst;
    wire[3:0]po;
    integer i;

    PIPO_Shift_Reg dut( .CLK(clk), .PI(pi), .RST(rst), .PO(po));

    always #5 clk = ~clk; //clk generation

    initial begin 
        $monitor("%0t | CLK=%b| pi=%b | po=%b",
                $time, clk, pi, po);
        
        clk=0; pi=0; rst=1; 
        #10; rst=0;
        
        for (i =0 ;i<10 ;i =i+1 ) begin
            pi = $random%16;   
            #10;
        end
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end

endmodule