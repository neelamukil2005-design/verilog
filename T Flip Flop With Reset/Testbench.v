`timescale 1ns/1ps

module tb;

reg T, clk, reset;
wire Q, Qbar;
integer i;

t_flipflop_reset dut (
    .T(T),
    .clk(clk),
    .reset(reset),
    .Q(Q),
    .Qbar(Qbar)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("t_flipflop_reset.vcd");
    $dumpvars(0, dut);

    $monitor("time=%0t | T=%b | clk=%b | reset=%b | Q=%b | Qbar=%b",
             $time, T, clk, reset, Q, Qbar);

    clk = 0;

    // Test all combinations of reset and T
    for(i = 0; i < 4; i = i + 1) begin
        {reset, T} = i;
        #10;
    end

    $finish;
end

endmodule
