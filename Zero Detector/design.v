module zero_detector(
    input [7:0] A,
    output reg zero
);

always @(*) begin
    if (A == 8'b00000000)
        zero = 1'b1;
    else
        zero = 1'b0;
end

endmodule
