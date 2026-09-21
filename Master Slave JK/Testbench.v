module master_slave_jk(
    input J,
    input K,
    input clk,
    output reg Q,
    output Qbar
);

reg master;

assign Qbar = ~Q;

initial begin
    master = 0;
    Q = 0;
end

always @(posedge clk) begin
    if (J == 0 && K == 0)
        master <= Q;
    else if (J == 0 && K == 1)
        master <= 0;
    else if (J == 1 && K == 0)
        master <= 1;
    else
        master <= ~Q;
end

always @(negedge clk) begin
    Q <= master;
end

endmodule
