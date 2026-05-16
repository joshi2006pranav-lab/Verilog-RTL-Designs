module tb();

    reg clk, rst;
    reg [1:0] sel;
    reg [3:0] p_in;
    reg si_rs, si_ls;    
    wire so;
    wire [3:0] p_out;

    Uni_Shift_Reg uut (
        .CLK(clk),
        .RST(rst),
        .SEL(sel),
        .P_IN(p_in),
        .SI_RS(si_rs),
        .SI_LS(si_ls),
        .SO(so),
        .P_OUT(p_out)
    );

    always #5 clk = ~clk;

    initial begin
        
        // Init
        clk = 0;
        rst = 1;
        sel = 2'b00;
        p_in = 4'b0000;
        si_rs = 0;
        si_ls = 0;

        #10 rst = 0;

        // CASE 1: HOLD
        #10 sel = 2'b00;

        // CASE 2: SHIFT RIGHT
        #10 sel = 2'b01; si_rs = 1;

        // CASE 3: SHIFT LEFT
        #10 sel = 2'b10; si_ls = 1;

        // CASE 4: PARALLEL LOAD
        #10 sel = 2'b11; p_in = 4'b1010;

        #20 $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);

    end
endmodule