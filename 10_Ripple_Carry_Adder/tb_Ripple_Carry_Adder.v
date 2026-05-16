module tb();

    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;
    integer i;

    RCA_4bit dut(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    initial begin
        $monitor("%0t | A=%b B=%b Cin=%b -> Sum=%b Cout=%b",
                $time, A, B, Cin, Sum, Cout);

        A = 0; B = 0; Cin = 0;

        for (i =0 ;i<16 ;i =i+1 ) begin
            A = $random % 16;
            B = $random % 16;
            Cin = $random % 2;
            #10;
        end
        $finish;
        
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end

endmodule