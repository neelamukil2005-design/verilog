module tb;

reg [3:0] A;
wire [3:0] Y;

right_shift dut(
    .A(A),
    .Y(Y)
);

integer i;

initial begin

    $dumpfile("right_shift.vcd");
    $dumpvars(0, tb);

    $monitor("A=%b  Y=%b", A, Y);

    for(i=0; i<16; i=i+1) begin
        A = i;
        #5;
    end

    $finish;

end

endmodule
