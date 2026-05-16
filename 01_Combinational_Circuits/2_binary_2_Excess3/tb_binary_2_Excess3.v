module tb;

//input output
reg[3:0] bcd;
wire[3:0] excess3;

//dut instantiation
bcd2excess3 dut(
    .b3(bcd[3]), 
    .b2(bcd[2]), 
    .b1(bcd[1]), 
    .b0(bcd[0]),
    .x3(excess3[3]),
    .x2(excess3[2]),
    .x1(excess3[1]),
    .x0(excess3[0])
);

integer i;
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    
    for(i=0; i<10; i= i+1) begin
        bcd= i;
        #10;
    end

    $finish;
end    
initial begin
    $monitor("bcd=%b -> excess3= %b", bcd, excess3);
end

endmodule



// //clk & reset signals
// reg clk;
// reg rst;

// //initial values
// initial begin
//     clk=0;
//     rst=1;
//     #20 rst= 0;
// end

// //clk generation
// always begin
//     #10 clk = ~clk;
// end

// //test sequence
// reg[3:0] i;
// always @(posedge clk, posedge rst) begin
//     if(rst)begin
//         i=0;
//     end

//     //apply all possible values
//     else begin
//     bcd <= i;
//     #20 i=i+1;
//     if(i==10) $finish;
//     end

//     $monitor("%d: bcd= %b, excess3= %b", bcd, excess3);
// end
// endmodule
