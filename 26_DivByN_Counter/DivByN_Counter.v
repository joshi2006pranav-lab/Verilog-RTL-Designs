//Parameterized Module

module DivByN_Counter #( parameter WIDTH = 3)  
(
    input CLK_IN,
    input RST,
    input EN,
    input [WIDTH-1:0] N, // scalable width  
    output reg CLK_OUT,
    output reg [WIDTH-1:0] COUNT
);


always @(posedge CLK_IN or posedge RST) begin
    if(RST) begin 
        CLK_OUT <= 0;
        COUNT <= 0;
    end
    else if(EN) begin 
        // Counter logic (mod-N)
        if (COUNT == N-1)
            COUNT <= 0;
        else
            COUNT <= COUNT + 1;

        // Output logic (true divide-by-N)
        if (COUNT < (N >> 1))   // compare COUNT with half of N (because this is Hardware Efficient)
            CLK_OUT <= 1;
        else
            CLK_OUT <= 0;
   
    end 
    else begin 
        CLK_OUT <= CLK_OUT;
        COUNT <= COUNT;
    end

    end

endmodule