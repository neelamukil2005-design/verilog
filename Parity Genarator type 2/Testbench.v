module tb;
  reg [3:0]a;
  reg s;
  wire[4:0]y;
  parigenrator dut(.a(a),.s(s),.y(y));
  initial begin
    $monitor("a=%b,s=%b,y=%b",a,s,y);
    a=1010;s=1;
    #5;
    $finish;
  end
endmodule
