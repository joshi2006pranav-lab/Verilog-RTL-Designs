module tb();
reg i1, i2;
wire sum, cout;

    HA dut(.I1(i1),.I2(i2), .S(sum), .C(cout));

    initial begin 
        $monitor("%0t| i1=%b |i2=%b |sum = %b| cout = %b", $time, i1,i2, sum, cout);

        #00 i1=0 ; i2=0; 
        #10 i1=0 ; i2=1; 
        #10 i1=1 ; i2=0; 
        #10 i1=1 ; i2=1; 
        #40;
        $finish;

    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end

endmodule