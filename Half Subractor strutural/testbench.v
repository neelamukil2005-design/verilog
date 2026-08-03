module halfsub_tb;
reg a,b;
wire diff,borrow;
halfsub dut(.a(a),.b(b),.diff(diff),.borrow(borrow));
initial begin
    $dumpfile("halfsub.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,diff=%b,borrow=%b",a,b,diff,borrow);
    a=0;b=0;#5;
    a=1;b=0;#5
    a=0;b=1;#5;
    a=1;b=1;
    #5;
    $finish;
end
endmodule
