

module tb;

reg D, EN, LOAD, clk;
wire Q, Qbar;
integer i;

d_ff_enable_load dut (
    .D(D),
    .EN(EN),
    .LOAD(LOAD),
    .clk(clk),
    .Q(Q),
    .Qbar(Qbar)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("d_ff_enable_load.vcd");
    $dumpvars(0, dut);

    $monitor("time=%0t | D=%b | clk=%b | EN=%b | LOAD=%b | Q=%b | Qbar=%b",
             $time, D, clk, EN, LOAD, Q, Qbar);

    clk = 0;

    // Test all combinations of EN and LOAD
    for(i = 0; i < 8; i = i + 1) begin
        {EN, LOAD, D} = i;
        #10;
    end

    $finish;
end

endmodule
