module Async_Ripple_Up_Counter#(parameter N = 4)(
    input CLK,
    input RST,
    output reg [N-1:0] Q
);

    //LSB Q[0]
    always@(posedge CLK or posedge RST) begin 
       if(RST)begin
            Q[0] <=1'b0;
       end
       else begin
            Q[0] <= ~Q[0];
       end
    end
    
    //Other bits using Generate
    // posedge Q[i-1]: Down Counter
    // negedge Q[i-1]: Up Counter
    genvar i;
    generate
        for (i = 1; i < N; i = i + 1) begin :pranav
            always @(negedge Q[i-1] or posedge RST) begin
                if (RST)
                    Q[i] <= 0;
                else
                    Q[i] <= ~Q[i];
            end
        end
     endgenerate






endmodule