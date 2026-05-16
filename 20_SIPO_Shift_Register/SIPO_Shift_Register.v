module SIPO_Shift_Reg(
    input CLK,
    input SI,
    input RST,
    output reg [3:0]PO
);

always @(posedge CLK or posedge RST) begin 
    if(RST) begin
        PO <= 4'b0000;
     end
     else begin 
        PO <= {SI, PO[3:1]}; //right shift & insert SI at MSB
     end
end
endmodule
