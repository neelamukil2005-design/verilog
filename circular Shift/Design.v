module circular_left(
    input [3:0] A,
    output [3:0] Y
);

assign Y = {A[2:0], A[3]};

endmodule
