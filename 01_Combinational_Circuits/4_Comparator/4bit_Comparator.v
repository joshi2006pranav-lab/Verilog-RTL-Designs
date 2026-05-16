module comp_4bit(
    input[3:0]A,
    input[3:0]B,
    output AeB,
    output AgB,
    output AlB
);

    wire[3:0]X;
    assign X[0]= (A[0]&B[0]) | ((~A[0])&(~B[0]));
    assign X[1]= (A[1]&B[1]) | ((~A[1])&(~B[1]));
    assign X[2]= (A[2]&B[2]) | ((~A[2])&(~B[2]));
    assign X[3]= (A[3]&B[3]) | ((~A[3])&(~B[3]));

    assign AeB = &X;
    assign AgB = (A[3]&(~B[3])) | (X[3]&A[2]&(~B[2])) | (X[3]&X[2]&A[1]&(~B[1])) | (X[3]&X[2]&X[1]&A[0]&(~B[0]));
    assign AlB = (B[3]&(~A[3])) | (X[3]&B[2]&(~A[2])) | (X[3]&X[2]&B[1]&(~A[1])) | (X[3]&X[2]&X[1]&B[0]&(~A[0]));

endmodule