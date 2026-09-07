module trailing_zero_detector(
    input [7:0] A,
    output reg [3:0] count
);

integer i;

always @(*) begin
    count = 0;

    for (i = 0; i < 8; i = i + 1) begin
        if (A[i] == 1'b0)
            count = count + 1;
        else
            i = 8;
    end
end

endmodule
