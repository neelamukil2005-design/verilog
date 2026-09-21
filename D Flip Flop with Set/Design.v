module d_flipflop_set(
    input D,
    input clk,
    input set,
    output reg Q,
    output Qbar
);

assign Qbar = ~Q;

always @(posedge clk or posedge set) begin
    if (set == 1)
        Q <= 1'b1;
    else
        Q <= D;
end

endmodule
