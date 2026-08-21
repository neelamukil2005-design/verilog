module tb;
  reg[3:0]a;
  wire[4:0]even,odd;
  parity dut(.a(a),.even(even),.odd(odd));
  integer i;
  initial begin
    $monitor("a=%b,even=%b,odd=%b",a,even,odd);
    for(i=0;i<16;i=i+1)begin
      a=i;
      #5;
    end
    $finish;
  end
endmodule
  
