module LFSR_Counter(
    input CLK,
    input RST,
    input [3:0] PRE_VAL,
    output FB,
    output reg [3:0] Q
);

    assign FB = Q[2] ^ Q[3];  // Feedback using Position 3 & 4

    always @(posedge CLK or posedge RST) begin 
        if(RST) begin
            Q <= PRE_VAL;      
        end
        else begin
            Q <= {FB, Q[3:1]}; // Shift left and insert feedback at MSB
        end
    end
endmodule