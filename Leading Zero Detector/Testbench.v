module tb;

reg [7:0] A;
wire [3:0] count;

leading_zero_detector dut(
    .A(A),
    .count(count)
);

initial begin

    $dumpfile("leading_zero_detector.vcd");
    $dumpvars(0, tb);

    $monitor("A=%b Leading_Zeros=%d", A, count);

    A = 8'b00010110;
    #10;

    A = 8'b00101000;
    #10;

    A = 8'b01000000;
    #10;

    A = 8'b10000000;
    #10;

    A = 8'b00000000;
    #10;

    $finish;
end

endmodule
