module tb;
  reg[7:0]a;
  wire[2:0]y;
  module dut(.a(a).,y(y));
  integer i;
   initial begin
     $dumpfile("priencoder.vcd);
      $dumpvars(0,dut);
               $monitors("a=%b,y=%b",a,y);
               for(i=0;i<8;i=i+1)begin
                 a=i;
                 #5;
               end
               $finish;
               end
               endmodule
               
   
    
