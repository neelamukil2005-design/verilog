module d_flipflop_enable_reset(
    input D,
    input clk,
    input EN,
    input reset,
    output reg Q,
    output Qbar
);

assign Qbar = ~Q;

always @(posedge clk) begin
    if (reset == 1)
        Q <= 1'b0;
    else if (EN == 1)
        Q <= D;
    else
        Q <= Q;
end

endmodule
