`timescale 1ns/1ps

module tb();

    reg I0, I1, I2, I3;  
    reg [1:0] sel;
    wire y;

    
    mux4to1 dut(
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .S(sel),
        .Y(y)
    );


    //list the input to design
    // initial begin
    //     i[0]= 1'b0;  i[1]= 1'b0;  i[2]= 1'b1;  i[3]= 1'b0; sel=2'b00;
    //     #2 i[1] = 1'b1;
    //     #2 sel= 2'b11;
    //     #2 i[3] = 1'b1;
    //     #2 $finish();
    // end  

    integer k;

    initial begin
        
        for (k = 0; k < 10; k = k + 1) begin
            
            
            {I3, I2, I1, I0} = $random & 4'hF;

            
            sel = 2'b00; #5;
            sel = 2'b01; #5;
            sel = 2'b10; #5;
            sel = 2'b11; #5;
        end

        $finish;
    end  

    
    initial begin 
        $monitor("time=%0d, I3I2I1I0=%b%b%b%b, sel=%b, y=%b",
                  $time, I3, I2, I1, I0, sel, y);
    end

    
    initial begin 
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);
    end

endmodule