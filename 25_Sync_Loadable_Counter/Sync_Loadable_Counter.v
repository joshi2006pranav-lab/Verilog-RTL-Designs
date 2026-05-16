module Sync_Loadable_Counter(
    input CLK,
    input RST,
    input EN,
    input LOAD,
    input [3:0] D_IN,
    output reg [3:0] Q
);

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            Q <= 4'b0000; 
        end 
        else if (LOAD) begin
            Q <= D_IN; 
        end
        else if (EN) begin 
            Q <= Q + 1;
        end
    end   

endmodule