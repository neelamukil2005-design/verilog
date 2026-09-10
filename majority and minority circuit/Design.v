module majority_minority(
    input [2:0] a,
    output reg majority,
    output reg minority
);

integer i;
integer count;

always @(*) begin
    count = 0;

    for (i = 0; i < 3; i = i + 1) begin
        if (a[i] == 1)
            count = count + 1;
    end

    if (count >= 2) begin
        majority = 1;
        minority = 0;
    end
    else begin
        majority = 0;
        minority = 1;
    end
end

endmodule
