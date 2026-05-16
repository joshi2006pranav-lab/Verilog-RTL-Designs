module JK_FF(
    input J,K,
    input CLK, RST, 
    output reg Q
);

    always @(posedge CLK or posedge RST) begin 
        if(RST) Q <= 0;
        else begin
            case({J,K})
                2'b00: Q <= Q; // hold
                2'b01: Q <= 0; //rst
                2'b10: Q <= 1; //set
                2'b11: Q <= ~Q; //toggle
            endcase
        end
   end


endmodule