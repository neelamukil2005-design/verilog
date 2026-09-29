module t_flipflop_reset(
    input T,
    input clk,
    input reset,
    output reg Q,
    output Qbar
);

assign Qbar = ~Q;

always @(posedge clk or posedge reset) begin
    if (reset == 1)
        Q <= 1'b0;
    else if (T == 1)
        Q <= ~Q;
    else
        Q <= Q;
end

endmodule
