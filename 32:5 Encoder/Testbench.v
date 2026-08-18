module tb;
  reg[31:0]a;
  wire[4:0]y;
  encoder32_5 dut(.a(a),.y(y));
  integer i;
initial begin
  $dumpfile("encoder32_5.vcd");
     $dumpvars(0,dut);
     $monitor("a=%b,y=%b",a,y);
  for(i=0;i<32;i=i+1) begin
    a=(32'b00000000000000000000000000000001<<i);
              #5;
              end
              $finish;
              end
              endmodule
        
  

