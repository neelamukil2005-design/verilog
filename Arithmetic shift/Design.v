module arithmetic_shift(
    input signed [3:0] A,
    input sel,
    output reg signed [3:0] Y
);

always @(*) begin

    if(sel == 0)
        Y = A <<< 1;       // Left shift
    else
        Y = A >>> 1;       // Right shift

end

endmodule
