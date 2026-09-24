module d_flipflop_set_reset(
    input D,
    input clk,
    input set,
    input reset,
    output reg Q,
    output Qbar
);

assign Qbar = ~Q;

always @(posedge clk or posedge set or posedge reset) begin
    if (reset == 1)
        Q <= 1'b0;
    else if (set == 1)
        Q <= 1'b1;
    else
        Q <= D;
end

endmodule
