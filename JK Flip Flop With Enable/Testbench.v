`timescale 1ns/1ps

module tb;

reg J, K, EN, clk;
wire Q, Qbar;
integer i;

jk_flipflop_enable dut (
    .J(J),
    .K(K),
    .EN(EN),
    .clk(clk),
    .Q(Q),
    .Qbar(Qbar)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("jk_flipflop_enable.vcd");
    $dumpvars(0, dut);

    $monitor("time=%0t | J=%b | K=%b | EN=%b | clk=%b | Q=%b | Qbar=%b",
             $time, J, K, EN, clk, Q, Qbar);

    clk = 0;

    // Test all combinations of EN, J and K
    for(i = 0; i < 8; i = i + 1) begin
        {EN, J, K} = i;
        #10;
    end

    $finish;
end

endmodule
