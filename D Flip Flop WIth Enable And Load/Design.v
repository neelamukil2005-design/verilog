module d_ff_enable_load(
    input D,
    input EN,
    input LOAD,
    input clk,
    output reg Q,
    output Qbar
);

assign Qbar = ~Q;

always @(posedge clk) begin
    if (EN && LOAD)
        Q <= D;
    else
        Q <= Q;
end

endmodule
