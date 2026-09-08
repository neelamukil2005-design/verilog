module tb;

  reg [2:0] a;
  wire y;

  minority dut (
    .a(a),
    .y(y)
  );

  integer i;

  initial begin

    $dumpfile("minority.vcd");
    $dumpvars(0, tb);

    $monitor("a=%b  y=%b", a, y);

    for (i = 0; i < 8; i = i + 1) begin
      a = i;
      #10;
    end

    $finish;
  end

endmodule
