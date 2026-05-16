module tb();
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    integer i;

    Carry_Lookahead_Adder dut (
        .A(a),
        .B(b),
        .CIN(cin),
        .SUM(sum),
        .COUT(cout)
    );

    initial begin
        $monitor("%0t | A=%b B=%b Cin=%b -> Sum=%b Cout=%b",
                $time, a, b, cin, sum, cout);

        a = 0; b = 0; cin = 0;

        for (i =0 ;i<20 ;i =i+1 ) begin
            a = $random % 16;
            b = $random % 16;
            cin = $random % 2;
            #10;
        end
        $finish;
        
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end



endmodule