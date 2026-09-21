`timescale 1ns/1ps

module d_flipflop_set_tb;

reg D, clk, set;
wire Q, Qbar;
integer i;

d_flipflop_set uut (
    .D(D),
    .clk(clk),
    .set(set),
    .Q(Q),
    .Qbar(Qbar)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    $dumpfile("d_flipflop_set.vcd");
    $dumpvars(0, d_flipflop_set_tb);

    $monitor("Time=%0t | CLK=%b | SET=%b | D=%b | Q=%b | Qbar=%b",
             $time, clk, set, D, Q, Qbar);

    clk = 0;

    // Test all SET and D combinations
    for (i = 0; i < 4; i = i + 1) begin
        {set, D} = i;
        #10;
    end

    $finish;

end

endmodule
