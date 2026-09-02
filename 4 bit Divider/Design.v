module divider (
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] Q,
    output [3:0] R
);

assign Q = A / B;
assign R = A % B;

endmodule
