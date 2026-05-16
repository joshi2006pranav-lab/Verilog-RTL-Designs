module tb(); 
    reg clk;
    reg si;
    reg rst;
    wire[3:0]po;
    integer i;

    SIPO_Shift_Reg dut( .CLK(clk), .SI(si), .RST(rst), .PO(po));

    always #5 clk = ~clk; //clk generation

    initial begin 
        $monitor("%0t | CLK=%b| si=%b | po=%b",$time, clk, si, po);

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