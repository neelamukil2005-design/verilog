`timescale 1ns/1ps

module tb;

reg D, clk, EN, reset;
wire Q, Qbar;
integer i;

d_flipflop_enable_reset dut (
    .D(D),
    .clk(clk),
    .EN(EN),
    .reset(reset),
    .Q(Q),
    .Qbar(Qbar)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("d_flipflop_enable_reset.vcd");
    $dumpvars(0, dut);

    $monitor("time=%0t | D=%b | clk=%b | EN=%b | reset=%b | Q=%b | Qbar=%b",
             $time, D, clk, EN, reset, Q, Qbar);

    clk = 0;

    // Test all combinations of reset, EN and D
    for(i = 0; i < 8; i = i + 1) begin
        {reset, EN, D} = i;
        #10;
    end

    $finish;
end

endmodule
