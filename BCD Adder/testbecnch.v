module bcd_tb;
reg[3:0] a,b;
reg cin;
wire[3:0] sum;
wire carry;
bcdadder dut (.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial begin
    $dumpfile("bcdadder.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,carry);
    a=4'b0110;
    b=4'b1000;cin=0;
    #5;
    $finish;
end
endmodule
