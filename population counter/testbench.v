module tb;

reg [7:0] data;
wire [3:0] count;

population_counter dut(
    .data(data),
    .count(count)
);

initial begin

    $dumpfile("population_counter.vcd");
    $dumpvars(0, tb);

    $monitor("data=%b count=%d", data, count);

    data = 8'b00000000; #10;
    data = 8'b00000001; #10;
    data = 8'b10101010; #10;
    data = 8'b11110000; #10;
    data = 8'b11111111; #10;
    data = 8'b10110100; #10;

    $finish;
end

endmodule
