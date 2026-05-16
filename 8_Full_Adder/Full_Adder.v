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

//FA using HA
// module HA(input I1,I2, output S,C);
//     assign S= I1^I2;
//     assign C= I1&I2;
// endmodule

// module FA(input I1,I2,I3 output S,COUT);
//     wire S1,S2, C1, C2;
//     HA1(I1,I2,S1,C1);
//     HA2(S1,I3,S2,C2);

//     assign S= S2;
//     or(COUT, C1, C2);
// endmodule