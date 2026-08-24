module tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] S;

wire [3:0] Y;
wire Carry;

alu_4bit dut(
    .A(A),
    .B(B),
    .S(S),
    .Y(Y),
    .Carry(Carry)
);

integer i;

initial begin

    A = 4'b1010;
    B = 4'b0011;

    for(i = 0; i < 8; i = i + 1) begin
        S = i;
        #5;
        $display("A=%b B=%b S=%b Y=%b Carry=%b",
                  A, B, S, Y, Carry);
    end

    $finish;
end

endmodule
