module Carry_Lookahead_Adder(
    input [3:0] A, B, input CIN, 
    output [3:0] SUM, output COUT
    );

    wire  [3:0] G, P;  // Generate and Propagate signals
    wire  [4:0] C;  // Carry signals
    assign C[0] = CIN;  

    genvar i;
    generate
    for(i=0;i<4;i=i+1)begin
        assign P[i] = A[i] ^ B[i];  
        assign G[i] = A[i] & B[i];  
        assign SUM[i] = P[i]^C[i];
        assign C[i+1] = G[i] | (P[i] & C[i]);  // Carry lookahead logic
    end  
    endgenerate
    
    assign COUT = C[4]; 

 endmodule