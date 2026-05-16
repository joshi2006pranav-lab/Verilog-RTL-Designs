module bcd2excess3(
    input b0, b1, b2, b3,
    output x0, x1, x2, x3
);
assign x0= b3 | (~b0);
assign x1= ~(b1^b0);
assign x2= (b2&(~b1)&(~b0)) | ((~b2)&(b0|b1)) ;
assign x3= b3|(b2&(b1|b0));

endmodule