module Sync_MOD_N_Counter(
        input CLK,
        input RST,
        input EN,
        input [3:0] N,
        output reg [3:0] Q
    );

    always @(posedge CLK or posedge RST) begin 
        if(RST) begin
            Q<= 4'b0000;
        end
        else if(!EN) begin
            Q <= Q;
        end
        else if(Q == N-1)begin
            Q <= 4'b0000;
        end 
        else begin 
            Q <= Q+1;
        end
    end
endmodule
