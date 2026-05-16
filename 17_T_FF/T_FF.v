module TFF(
    input T,
    input CLK, RST, 
    output reg Q
);

    always @(posedge CLK or posedge RST) begin 
        if(RST) Q <= 0;
        else Q <= T ? ~Q : Q;
   end

endmodule