

module t_flipflop_tb;

reg T, clk;
wire Q, Qbar;

t_flipflop uut (
    .T(T),
    .clk(clk),
    .Q(Q),
    .Qbar(Qbar)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    $dumpfile("t_flipflop.vcd");
    $dumpvars(0, t_flipflop_tb);

    $monitor("Time=%0t | CLK=%b | T=%b | Q=%b | Qbar=%b",
             $time, clk, T, Q, Qbar);

    clk = 0;
    T = 0;

    // Hold
    #10;

    // Toggle
    T = 1;
    #10;

    // Toggle
    #10;

    // Toggle
    #10;

    // Hold
    T = 0;
    #10;

    $finish;
end

endmodule
