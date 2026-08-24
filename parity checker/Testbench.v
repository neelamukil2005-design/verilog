module tb;

  reg [3:0] data;
  reg parity;
  reg mode;
  wire error;

  parity_checker dut(
    .data(data),
    .parity(parity),
    .mode(mode),
    .error(error)
  );

  integer i;

  initial begin

    // EVEN PARITY
    mode = 0;
    $display("EVEN PARITY");

    for(i = 0; i < 16; i = i + 1) begin
      data = i;
      
      // Generate even parity
      parity = ^data;
      
      #5;

      $display("data=%b parity=%b error=%b",
                data, parity, error);
    end


    // ODD PARITY
    mode = 1;
    $display("ODD PARITY");

    for(i = 0; i < 16; i = i + 1) begin
      data = i;
      
      // Generate odd parity
      parity = ~^data;
      
      #5;

      $display("data=%b parity=%b error=%b",
                data, parity, error);
    end

    $finish;

  end

endmodule
