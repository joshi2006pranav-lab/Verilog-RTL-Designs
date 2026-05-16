module PIPO_Shift_Reg(
    input CLK,
    input [3:0]PI,
    input RST,
    output reg [3:0]PO
);

always @(posedge CLK or posedge RST) begin
    if(RST) begin
        PO <= 4'b0000;
    end
    else begin
        PO <= PI;
    end
end
endmodule

