module tb;

reg [7:0] data;
reg [2:0] shift;
reg [2:0] sel;
wire [7:0] y;

barrel_shift dut(
    .data(data),
    .shift(shift),
    .sel(sel),
    .y(y)
);

integer i;

initial begin

    $dumpfile("barrel_shift.vcd");
    $dumpvars(0, tb);

    data = 8'b10110011;
    shift = 2;

    for(i = 0; i < 5; i = i + 1) begin
        sel = i;
        #10;
    end

    $finish;
end

initial begin
    $monitor("data=%b sel=%b shift=%d y=%b",
             data, sel, shift, y);
end

endmodule
