// 101 Detector

module Sequence_Detector_Mealy_FSM(
    input CLK,
    input RST,
    input IN,
    output reg OUT
);
    //State Encodings
    parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10;

    //Registers here
    reg[1:0] current_state, next_state; 
    
    //Block 1- Sequential: State Register
    always@(posedge CLK or posedge RST)begin
        if(RST) begin 
            current_state <= S0;            
        end
        else begin 
            current_state <= next_state;
        end
     end    

    //Block 2- Combinational: Next State Logic  + Block 3- Combinational: Output Logic
    always@(*)begin 
        case(current_state)
            S0:begin 
                OUT = 0; //for both input , same op
                if(!IN) begin 
                    next_state = S0;
                end
                else begin 
                    next_state = S1;
            end
        end
            S1:begin 
                OUT = 0; //for both input , same op
                if(!IN) begin 
                    next_state = S2;
                end
                else begin 
                    next_state = S1;
            end
        end
            S2:begin 
                if(!IN) begin 
                    next_state = S0;
                    OUT = 0; //for ip =0
                end
                else begin 
                    next_state = S1;
                    OUT = 1; //for ip =1
            end
        end
            default:begin
                next_state = S0;
                OUT = 0;
            end          
        endcase

        end

   

endmodule