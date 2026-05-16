module tb(); 
    reg[3:0] a,b;
    reg mode;
    wire sum;
    wire cout;
    integer i;

    Adder_Subtracter dut(
        .A(a),
        .B(b),
        .MODE(mode),
        .SUM(sum),
        .COUT(cout)
    );

    initial begin 
        $monitor("%0t | A=%b B=%b MODE=%b -> SUM=%b COUT=%b",
                $time, a, b, mode, sum, cout);

        a = 0; b = 0; mode = 0;

        for (i =0 ;i<20 ;i =i+1 ) begin
            a = $random % 16;
            b = $random % 16;
            mode = $random % 2;
            #10;
        end
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end

endmodule