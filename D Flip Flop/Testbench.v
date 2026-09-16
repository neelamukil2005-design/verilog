`timescale 1ns/1ps

module d_flipflop_tb;

reg D, clk;
wire Q, Qbar;

d_flipflop uut (
    .D(D),
    .clk(clk),
    .Q(Q),
    .Qbar(Qbar)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    // Waveform dump
    $dumpfile("d_flipflop.vcd");
    $dumpvars(0, d_flipflop_tb);

    // Monitor
    $monitor("Time=%0t | CLK=%b | D=%b | Q=%b | Qbar=%b",
             $time, clk, D, Q, Qbar);

    // Initial values
    clk = 0;
    D = 0;

    // D = 0
    #10;

    // D = 1
    D = 1;
    #10;

    // D = 0
    D = 0;
    #10;

    // D = 1
    D = 1;
    #10;

    $finish;
end

endmodule
