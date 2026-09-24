`timescale 1ns/1ps

module tb;

reg D, clk, set, reset;
wire Q, Qbar;
integer i;

d_flipflop_set_reset dut(
    .D(D),
    .clk(clk),
    .set(set),
    .reset(reset),
    .Q(Q),
    .Qbar(Qbar)
);

always #5 clk = ~clk;

initial begin

    $dumpfile("d_flipflop_set_reset.vcd");
    $dumpvars(0, dut);

    $monitor("time=%0t | D=%b | clk=%b | set=%b | reset=%b | Q=%b | Qbar=%b",
             $time, D, clk, set, reset, Q, Qbar);

    clk = 0;

    for(i = 0; i < 8; i = i + 1) begin
        {reset, set, D} = i;
        #10;
    end

    $finish;

end

endmodule
