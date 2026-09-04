module tb;

reg [7:0] A;
wire zero;

zero_detector dut(
    .A(A),
    .zero(zero)
);

initial begin
    $dumpfile("zero_detector.vcd");
    $dumpvars(0, tb);

    $monitor("A=%b Zero=%b", A, zero);

    A = 8'b00000000;
    #10;

    A = 8'b00000001;
    #10;

    A = 8'b10101010;
    #10;

    A = 8'b11111111;
    #10;

    $finish;
end

endmodule
