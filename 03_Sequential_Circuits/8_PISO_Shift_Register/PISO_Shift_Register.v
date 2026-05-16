module PISO_Shift_Reg(
    input CLK,
    input [3:0] PI,
    input RST,
    input LOAD,
    output reg SO
);
    reg [3:0]Q;

    // Priority: RESET> LOAD> SHIFT 
    always @(posedge CLK or posedge RST) begin 
        
        // Clear register & output  
        if(RST)    begin  
            Q<=4'b0000; 
            SO<= 1'b0; 
        end       

        // Parallel load
        else if(LOAD)   begin 
            Q <= PI; 
            SO <= PI[3];
        end       
       
        //Shift Right
        else begin  
            SO <= Q[3];
            Q<= {1'b0,Q[3:1]};             
        end            
    end

endmodule
