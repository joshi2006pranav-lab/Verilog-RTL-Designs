module tb();
    reg[2:0] val;
    wire out;

    //dut
    paritygen dut(
        .b(val),
        .parity(out)
    );

    integer i;
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    for(i=0; i<8; i= i+1) begin
        val= i;
        #10;
    end

    $finish;
    end    
    initial begin
        $monitor("val=%b -> out= %b", val, out);
    end

endmodule
