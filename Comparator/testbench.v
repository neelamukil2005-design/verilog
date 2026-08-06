module comparator_tb;
reg a,b;
wire x,y,z;
comparators_c dut(.a(a),.b(b),.x(x),.y(y),.z(z));
initial begin
    $dumpfile("comparator_c.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,x=%b,y=%b,z=%b",a,b,x,y,z);
    a=1;
    b=1;#5;
    a=1;b=0;
    #5;
    $finish;
end
endmodule
