module tb;
  reg[3:0] a;
  wire[1:0] y;
  encoder42 dut (.a(a),.y(y));
  integer i;
  initial begin
    $dumpfile("encoder42.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%b",a,y);
    for(i=0;i<4;i=i+1)begin
      {a}=(4'b0001<<i);
      #5;
    end
    $finish;
  end
endmodule
