module andgate_tb;
reg a,b;
wire c;
andgate dut(.a(a),.b(b),.c(c));
initial begin
    $dumpfile("andgate.vcd");
    $dumpvars(0,dut);
    $monitor("time=%d,a=%b,b=%b,c=%b",$time,a,b,c);
    a=0;b=0;
    #5;
    a=0;b=1;
    #5;
    a=1;b=0;
    #5;
    a=1;b=1;
    #5;
    $finish;
end
endmodule

