

module tb;

reg D, clk, EN;
wire Q, Qbar;
integer i;

d_flipflop_enable dut (
    .D(D),
    .clk(clk),
    .EN(EN),
    .Q(Q),
    .Qbar(Qbar)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("d_flipflop_enable.vcd");
    $dumpvars(0, dut);

    $monitor("time=%0t | D=%b | clk=%b | EN=%b | Q=%b | Qbar=%b",
             $time, D, clk, EN, Q, Qbar);

    clk = 0;

    // Test all combinations of EN and D
    for(i = 0; i < 4; i = i + 1) begin
        {EN, D} = i;
        #10;
    end

    $finish;
end

endmodule
