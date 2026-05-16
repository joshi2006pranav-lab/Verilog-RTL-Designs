module tb();
    reg i1, i2, i3;
    wire s,cout;
    integer i;

    FA dut(.I1(i1), .I2(i2), .I3(i3), .S(s), .COUT(cout));

    initial begin 
            $monitor("%0t| i1=%b |i2=%b |i3=%b |s = %b| cout = %b", $time, i1,i2, i3, s, cout);
            
            for(i =0; i<8; i= i+1)begin 
                #10; {i1,i2,i3}= i;
            end
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end
endmodule