module tb;
  reg[1:0]a;
  wire[3:0]y;
  decoder24 dut (.a(a),.y(y));
  integer i;
  initial begin
    $dumpfile("decoder24.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,y=%b",a,y);
             for(i=0;i<4;i=i+1)begin
               a=i;
               #5;
             end
             $finish;
             end
             endmodule
