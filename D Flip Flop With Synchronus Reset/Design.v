module d_flipflop_sync_reset(
    input D,
    input clk,
    input reset,
    output reg Q,
    output Qbar
);

assign Qbar = ~Q;

always @(posedge clk) begin
    if (reset == 1)
        Q <= 1'b0;
    else
        Q <= D;
end

endmodule
