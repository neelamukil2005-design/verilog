module one_hot_encoder(
    input [7:0] A,
    output reg [2:0] Y
);

integer i;

always @(*) begin
    Y = 3'b000;

    for (i = 0; i < 8; i = i + 1) begin
        if (A[i] == 1'b1)
            Y = i;
    end
end

endmodule
