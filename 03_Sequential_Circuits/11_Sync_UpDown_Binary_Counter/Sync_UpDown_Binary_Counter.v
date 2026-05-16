module Sync_UpDown_Binary_Counter(
    input CLK,
    input RST,
    input EN, 
    input MODE,
    input [3:0] N,
    output reg [3:0] Q
);

always @(posedge CLK or posedge RST)begin 
    if(RST) begin
        Q <= 4'b0000;
    end
    else if(!EN) begin
        Q <= Q;
    end
    else if(MODE == 1'b1) begin // UP Counter
        if(Q == N-1)begin
            Q <= 4'b0000;
        end 
        else begin 
            Q <= Q+1;
        end
    end
    else begin // Down Counter
        if(Q == 4'b0000)begin
            Q <= N-1;
        end 
        else begin 
            Q <= Q-1;
        end
    end
 
end
endmodule