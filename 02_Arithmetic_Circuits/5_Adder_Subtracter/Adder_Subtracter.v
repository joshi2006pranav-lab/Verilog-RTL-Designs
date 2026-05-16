module FA(
    input I1,
    input I2,
    input I3,
    output S,
    output COUT
);
    assign S = I1 ^ I2 ^ I3;
    assign COUT = (I1 & I2) | (I3 & I1) | (I3 & I2);

endmodule

module Adder_Subtracter(
    input [3:0] A,B,
    input MODE,      //MODE=0:Addition   MODE=1:Subtraction
    //CIN= MODE
    output [3:0] SUM,
    output COUT
); 
    wire [4:0]C;
    assign C[0]= MODE;

    genvar i;
    generate 
        for(i=0; i<4; i=i+1)begin
            FA MY_FA(.I1(A[i]), .I2(B[i]^MODE), .I3(C[i]), .S(SUM[i]), .COUT(C[i+1]));
         end
    endgenerate
    
    assign COUT= C[4];

endmodule