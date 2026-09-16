

module sr_flipflop_tb;

reg S, R, clk;
wire Q, Qbar;

sr_flipflop uut (
    .S(S),
    .R(R),
    .clk(clk),
    .Q(Q),
    .Qbar(Qbar)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    // Dump waveform
    $dumpfile("sr_flipflop.vcd");
    $dumpvars(0, sr_flipflop_tb);

    // Monitor output
    $monitor("Time=%0t S=%b R=%b CLK=%b Q=%b Qbar=%b",
             $time, S, R, clk, Q, Qbar);

    // Test cases
    clk = 0;
    S = 0; R = 0;
    #10;

    S = 1; R = 0;       // Set
    #10;

    S = 0; R = 0;       // Hold
    #10;

    S = 0; R = 1;       // Reset
    #10;

    S = 0; R = 0;       // Hold
    #10;

    S = 1; R = 1;       // Invalid
    #10;

    $finish;
end

endmodule
