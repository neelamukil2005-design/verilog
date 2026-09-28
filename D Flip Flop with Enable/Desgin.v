module d_flipflop_enable(
    input D,
    input clk,
    input EN,
    output reg Q,
    output Qbar
);

assign Qbar = ~Q;

always @(posedge clk) begin
    if (EN == 1)
        Q <= D;
    else
        Q <= Q;
end

endmodule
