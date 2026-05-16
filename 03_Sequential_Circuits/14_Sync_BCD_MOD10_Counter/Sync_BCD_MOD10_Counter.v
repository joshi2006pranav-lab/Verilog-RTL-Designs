module Sync_BCD_MOD_10_Counter (
    input CLK,
    input RST,
    input EN,
    output reg [3:0] COUNT
);
    always@(posedge CLK or posedge RST ) begin
        if (RST)begin
            COUNT <= 4'b0000;
        end
        else if(!EN) begin 
            COUNT <= COUNT;
        end
        else if(COUNT == 4'b1001)begin
            COUNT <= 4'b0000;
        end 
        else begin 
            COUNT <= COUNT + 1;
        end
    end

endmodule