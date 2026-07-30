module halfadder_tb;
reg a,b;
wire sum,carry;
halfadder dut(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin
    $dumpfile("halfadder.vcd");
    $dumpvars(0,dut);
    $monitor("time=%d,a=%b,b=%b,sum=%b,carry=%b",$time,a,b,sum,carry);
    a=0;b=0;
    #5;
    a=1;b=0;
    #5;
    a=0;b=1;
    #5;
    a=1;b=1;
    #5;
    $finish;
end
endmodule
