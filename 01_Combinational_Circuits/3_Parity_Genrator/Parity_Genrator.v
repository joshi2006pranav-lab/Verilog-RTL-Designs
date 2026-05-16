module paritygen(
    input wire[3:0]b,
    output parity
);

    assign parity= b[0]^b[1]^b[2];

endmodule