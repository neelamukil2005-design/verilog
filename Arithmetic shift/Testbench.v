module tb;

reg signed [3:0] A;
reg sel;
wire signed [3:0] Y;

arithmetic_shift dut(
    .A(A),
    .sel(sel),
    .Y(Y)
);

integer i;

initial begin

    $dumpfile("arithmetic_shift.vcd");
    $dumpvars(0, tb);

    $monitor("A=%b  sel=%b  Y=%b", A, sel, Y);

    for(i=0; i<16; i=i+1) begin

        A = i;

        sel = 0;
        #5;

        sel = 1;
        #5;

    end

    $finish;

end

endmodule
