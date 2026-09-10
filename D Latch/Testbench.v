module tb;

reg D, E;
wire Q, Q_bar;

d_latch dut (
    .D(D),
    .E(E),
    .Q(Q),
    .Q_bar(Q_bar)
);

initial begin

    $dumpfile("d_latch.vcd");
    $dumpvars(0, tb);

    $monitor("D=%b E=%b Q=%b Q_bar=%b", D, E, Q, Q_bar);

    // Hold
    D = 0; E = 0;
    #10;

    // Store 0
    D = 0; E = 1;
    #10;

    // Store 1
    D = 1; E = 1;
    #10;

    // Hold 1
    D = 0; E = 0;
    #10;

    // Store 0
    D = 0; E = 1;
    #10;

    // Hold 0
    D = 1; E = 0;
    #10;

    $finish;
end

endmodule
