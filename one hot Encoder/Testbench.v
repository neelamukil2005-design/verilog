module tb;

reg [7:0] A;
wire [2:0] Y;

one_hot_encoder dut(
    .A(A),
    .Y(Y)
);

initial begin

    $dumpfile("one_hot_encoder.vcd");
    $dumpvars(0, tb);

    $monitor("A=%b Y=%b", A, Y);

    A = 8'b00000001;
    #10;

    A = 8'b00000010;
    #10;

    A = 8'b00000100;
    #10;

    A = 8'b00001000;
    #10;

    A = 8'b00010000;
    #10;

    A = 8'b00100000;
    #10;

    A = 8'b01000000;
    #10;

    A = 8'b10000000;
    #10;

    $finish;
end

endmodule
