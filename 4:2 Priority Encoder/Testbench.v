module tb;
  reg[3:0]a;
  wire[1:0]y;
  priencoder dut(.a(a),.y(y));
  integer i;
  initial begin
    $dumpfile("priencoder.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%b",a,y);
    for(i=0;i<16;i=i+1)begin
      {a}= i;
      #5;
    end
    $finish;
  end
endmodule
