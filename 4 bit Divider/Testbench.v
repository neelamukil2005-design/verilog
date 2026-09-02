module tb;

reg [3:0] A;
reg [3:0] B;
wire [3:0] Q;
wire [3:0] R;

divider dut (
    .A(A),
    .B(B),
    .Q(Q),
    .R(R)
);

initial begin

    $dumpfile("divider.vcd");
    $dumpvars(0, tb);

    A = 4'b1000; B = 4'b0010; #10;
    $display("A=%b B=%b Q=%b R=%b", A, B, Q, R);

    A = 4'b1001; B = 4'b0010; #10;
    $display("A=%b B=%b Q=%b R=%b", A, B, Q, R);

    A = 4'b1111; B = 4'b0100; #10;
    $display("A=%b B=%b Q=%b R=%b", A, B, Q, R);

    $finish;

end

endmodule
