

module tb;

reg J, K, clk, reset;
wire Q, Qbar;
integer i;

jk_flipflop_reset dut (
    .J(J),
    .K(K),
    .clk(clk),
    .reset(reset),
    .Q(Q),
    .Qbar(Qbar)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("jk_flipflop_reset.vcd");
    $dumpvars(0, dut);

    $monitor("time=%0t | J=%b | K=%b | clk=%b | reset=%b | Q=%b | Qbar=%b",
             $time, J, K, clk, reset, Q, Qbar);

    clk = 0;

    // Test all combinations of reset, J and K
    for(i = 0; i < 8; i = i + 1) begin
        {reset, J, K} = i;
        #10;
    end

    $finish;
end

endmodule
