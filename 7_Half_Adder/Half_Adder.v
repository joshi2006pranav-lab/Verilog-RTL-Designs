module HA(input I1,I2, output S,C);
    assign S= I1^I2;
    assign C= I1&I2;

endmodule