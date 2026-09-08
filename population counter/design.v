module population_counter(
    input  [7:0] data,
    output reg [3:0] count
);

integer i;

always @(*) begin
    count = 0;

    for (i = 0; i < 8; i = i + 1) begin
        if (data[i] == 1'b1)
            count = count + 1;
    end
end

endmodule
