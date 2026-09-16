module d_flipflop(
    input D,
    input clk,
    output reg Q,
    output Qbar
);

assign Qbar = ~Q;

always @(posedge clk)
    Q <= D;

endmodule
