module Clatb;
reg[3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;
ClAadder dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial begin
$dumpfile("CLAadder.vcd");
$dumpvars(0,dut);
$monitor("a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,carry);
a=4'b1111;b=4'b1111;cin=1;#5;
a=4'b1001;b=4'b0110;cin=1;
#5;
$finish;
end
endmodule
