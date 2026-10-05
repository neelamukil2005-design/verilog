`timescale 1ns/1ps

module tb;

reg [15:0] D;
reg clk;
wire [15:0] Q;
integer i;

register_16bit dut(
    .D(D),
    .clk(clk),
    .Q(Q)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("register_16bit.vcd");
    $dumpvars(0, dut);

    $monitor("time=%0t | D=%b | clk=%b | Q=%b",
             $time, D, clk, Q);

    clk = 0;

    for(i = 0; i < 65536; i = i + 1) begin
        D = i;
        #10;
    end

    $finish;
end

endmodule
