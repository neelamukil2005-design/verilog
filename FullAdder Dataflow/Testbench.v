module fulladder_tb;
reg a,b,cin;
wire sum,carry;
fulladder dut(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin
    $dumpfile("fulladder.vcd");
    $dumpvars(0,dut);
    $monitor("time=%d,a=%b,b=%b,cin=%b,sum=%b,carry=%b",$time,a,b,cin,sum,carry);
    a=0;b=0;cin=0;
    #5;
    a=1;b=0;cin=0;
    #5;
    a=0;b=1;cin=0;
    #5;
    a=0;b=0;cin=1
    #5;
    a=1;b=1;cin=1;
        $finish;
end
endmodule
