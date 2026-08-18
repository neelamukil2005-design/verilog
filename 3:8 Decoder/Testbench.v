module tb;
  reg[2:0]a;
  wire[7:0]y;
  decoder38 dut (.a(a),.y(y));
  integer i;
  initial begin
    $dumpfile("decoder38.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%b",a,y);
    for(i=0;i<8;i=i+1)begin
               a=i;
               #5;
             end
             $finish;
             end
             endmodule


