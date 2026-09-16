module t_flipflop(
    input T,
    input clk,
    output reg Q = 0,
    output Qbar
);

assign Qbar = ~Q;

always @(posedge clk) begin
    if (T == 1)
        Q <= ~Q;
    else
        Q <= Q;
end

endmodule
