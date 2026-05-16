module tb();

    reg [3:0] in;
    wire [1:0] out;
    integer i;

    prt_encd dut(.I(in), .Y(out));

    initial begin
        $monitor("%0t: in=%b -> out=%b", $time, in, out);

        for(i = 0; i < 16; i = i + 1) begin
            in = i;
            #10;
        end

        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end

endmodule