module tb;

reg [3:0] A;
reg [3:0] B;
wire [7:0] Y;

multiplier dut (
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    $dumpfile("multiplier.vcd");
    $dumpvars(0, tb);

    A = 4'b0011; B = 4'b0010; #10;
    $display("A=%b B=%b Y=%b", A, B, Y);

    A = 4'b0101; B = 4'b0011; #10;
    $display("A=%b B=%b Y=%b", A, B, Y);

    A = 4'b1111; B = 4'b0010; #10;
    $display("A=%b B=%b Y=%b", A, B, Y);

    $finish;
end

endmodule
