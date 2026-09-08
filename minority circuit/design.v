module minority(
    input [2:0] a,
    output reg y
);

integer i;
integer count;

always @(*) begin
    count = 0;

    for (i = 0; i < 3; i = i + 1) begin
        if (a[i] == 1)
            count = count + 1;
    end

    if (count <= 1)
        y = 1;
    else
        y = 0;
end

endmodule
