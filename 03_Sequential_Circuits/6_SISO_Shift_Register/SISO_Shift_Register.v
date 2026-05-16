module SISO_Shift_Reg(
    input CLK,
    input SI,
    input RST,
    output reg SO
);
    reg[3:0]TEMP;

always @(posedge CLK or posedge RST) begin
    if(RST) begin
        SO <= 1'b0;
        TEMP <= 4'b0000;
    end
    else begin
    SO <= TEMP[3];
    TEMP <= {TEMP[2:0], SI}; //left shift & insert SI at LSB
    end
end

endmodule

