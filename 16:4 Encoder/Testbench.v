module tb;
  reg[15:0]a;
  wire[3:0]y;
  encoder83 dut(.a(a),.y(y));
  integer i;
initial begin
  $dumpfile("encoder16_4.vcd");
     $dumpvars(0,dut);
     $monitor("a=%b,y=%b",a,y);
  for(i=0;i<16;i=i+1) begin
    a=(16'b0000000000000001<<i);
              #5;
              end
              $finish;
              end
              endmodule
        
  

