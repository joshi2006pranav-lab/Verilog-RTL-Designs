module SR_FF(
    input S,R,
    input CLK, RST, 
    output reg Q
);

    always @(posedge CLK or posedge RST) begin 
        if(RST) Q <= 0;
        else begin
            case({S,R})
                2'b00: Q <= Q; // hold
                2'b01: Q <= 0; //rst
                2'b10: Q <= 1; //set
                2'b11: Q <= 1'bx; //invalid
            endcase
        end
   end


endmodule