module tb();

    //ip & op
    reg[3:0] a;
    reg[3:0] b;
    wire e,g,l;

    //dut instantiation
    comp_4bit dut(
        .A(a),
        .B(b),
        .AeB(e),
        .AgB(g),
        .AlB(l)
    );

    //clk & rst signals
    reg clk, rst;

    //initial values
    initial begin
        clk=0; 
        rst=1;
        #20 rst = 0;
    end

    //clk generator
    always begin
        #10 clk = ~clk;
    end

    //test sequence
    reg[3:0] i;
    always@(posedge clk or posedge rst) begin
        if(rst) begin 
            i<=0;
        end
        else begin
            //apply all possible values(0-9)
            a <= $random%16;
            b <= $random%16;

            i<=i+1;
            if(i==10) $finish;  
        end

        
        end

        initial begin  
            $monitor("%d: a=%b, b=%b, e=%b, g=%b, l=%b", $time, a, b, e, g, l); 
        end

        initial begin 
            $dumpfile("dump.vcd");
            $dumpvars(0,tb);
        end
    endmodule