`timescale 1ns/1ps

module jk_flipflop_tb;

reg J, K, clk;
wire Q, Qbar;

jk_flipflop uut (
    .J(J),
    .K(K),
    .clk(clk),
    .Q(Q),
    .Qbar(Qbar)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    // Waveform dump
    $dumpfile("jk_flipflop.vcd");
    $dumpvars(0, jk_flipflop_tb);

    // Monitor
    $monitor("Time=%0t | CLK=%b | J=%b K=%b | Q=%b Qbar=%b",
             $time, clk, J, K, Q, Qbar);

    // Initial values
    clk = 0;
    J = 0;
    K = 0;

    // Hold
    #10;
    
    // Set
    J = 1;
    K = 0;
    #10;

    // Reset
    J = 0;
    K = 1;
    #10;

    // Toggle
    J = 1;
    K = 1;
    #10;

    // Toggle again
    J = 1;
    K = 1;
    #10;

    // Hold
    J = 0;
    K = 0;
    #10;

    $finish;
end

endmodule
