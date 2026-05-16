module tb(); 
    reg[2:0] in;
    wire[7:0] out;
    integer i;

    decoder_3to8 dut(.I(in), .Y(out));

    initial begin 
         $monitor("%0t | in = %b | out = %b", $time, in, out);

        for(i = 0; i < 8; i = i + 1) begin
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