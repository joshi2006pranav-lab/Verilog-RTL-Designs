module Uni_Shift_Reg(  
    input CLK, 
    input RST, 
    input [1:0]SEL,
    input [3:0]P_IN,
    input SI_RS,
    input SI_LS,
    output reg SO,
    output reg [3:0] P_OUT
);

    always @(posedge CLK or posedge RST) begin 
        if(RST) begin 
            P_OUT <= 4'b0000;
            SO <= 1'b0;
        end
        else begin 
            case(SEL) 
                //HOLD
                2'b00: begin 
                    P_OUT <= P_OUT;
                    SO <= P_OUT[3];
                end
                //SHIFT RIGHT
                2'b01: begin 
                    P_OUT <= { SI_RS, P_OUT[3:1] };
                    SO <= P_OUT[0]; 
                end
                //SHIFT LEFT
                2'b10: begin
                    P_OUT <= { P_OUT[2:0], SI_LS };
                    SO <= P_OUT[3]; 
                end
                //PARALLEL LOAD
                2'b11: begin 
                    P_OUT <= P_IN;
                    SO <=  P_IN[3];
                end
                //DEFAULT
                default: begin
                    P_OUT <= P_OUT;
                    SO <= SO;
                end
            endcase    
        end
    end
endmodule