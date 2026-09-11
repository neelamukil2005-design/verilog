module tb;

reg J, K, E;
wire Q, Q_bar;

jk_latch dut (
    .J(J),
    .K(K),
    .E(E),
    .Q(Q),
    .Q_bar(Q_bar)
);

initial begin

    $dumpfile("jk_latch.vcd");
    $dumpvars(0, tb);

    $monitor("E=%b J=%b K=%b Q=%b Q_bar=%b",
              E, J, K, Q, Q_bar);

    // Hold
    E = 0; J = 0; K = 0;
    #10;

    // Set
    E = 1; J = 1; K = 0;
    #10;

    // Hold
    E = 1; J = 0; K = 0;
    #10;

    // Reset
    E = 1; J = 0; K = 1;
    #10;

    // Set
    E = 1; J = 1; K = 0;
    #10;

    // Toggle
    E = 1; J = 1; K = 1;
    #10;

    // Toggle again
    E = 1; J = 1; K = 1;
    #10;

    // Disable / Hold
    E = 0; J = 1; K = 1;
    #10;

    $finish;
end

endmodule
