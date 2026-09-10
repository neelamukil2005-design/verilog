module tb;

  reg [2:0] a;
  wire majority;
  wire minority;

  majority_minority dut (
    .a(a),
    .majority(majority),
    .minority(minority)
  );

  integer i;

  initial begin

    $dumpfile("majority_minority.vcd");
    $dumpvars(0, tb);

    $monitor("a=%b  majority=%b  minority=%b",
              a, majority, minority);

    for (i = 0; i < 8; i = i + 1) begin
      a = i;
      #10;
    end

    $finish;
  end

endmodule
