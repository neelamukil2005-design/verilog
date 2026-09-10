module tb;

reg S, R;
wire Q;

sr_latch dut (
    .S(S),
    .R(R),
    .Q(Q)
);

initial begin

    $dumpfile("sr_latch.vcd");
    $dumpvars(0, tb);

    $monitor("S=%b R=%b Q=%b", S, R, Q);

    // Hold
    S = 0; R = 0;
    #10;

    // Set
    S = 1; R = 0;
    #10;

    // Hold
    S = 0; R = 0;
    #10;

    // Reset
    S = 0; R = 1;
    #10;

    // Hold
    S = 0; R = 0;
    #10;

    // Invalid
    S = 1; R = 1;
    #10;

    $finish;
end

endmodule
