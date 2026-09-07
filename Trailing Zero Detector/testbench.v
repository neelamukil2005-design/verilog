module tb;

reg [7:0] A;
wire [3:0] count;

trailing_zero_detector dut(
    .A(A),
    .count(count)
);

initial begin

    $dumpfile("trailing_zero_detector.vcd");
    $dumpvars(0, tb);

    $monitor("A=%b Trailing_Zeros=%d", A, count);

    A = 8'b10110000;
    #10;

    A = 8'b00101000;
    #10;

    A = 8'b01000000;
    #10;

    A = 8'b00000001;
    #10;

    A = 8'b00000000;
    #10;

    $finish;
end

endmodule
