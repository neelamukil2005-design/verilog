module fullsub_tb;
reg a,b,bin;
wire diff,borrow;
fullsub dut (.a(a),.b(b),.bin(bin),.diff(diff),.borrow(borrow));
initial begin
    $dumpfile("fullsub.vcd");
    $dumpvars(0,dut);
    $monitor("a=%b,b=%b,bin=%b,diff=%b,borrow=%b",a,b,bin,diff,borrow);
    a=0;b=0;bin=0;#5;
    a=0;b=0;bin=1;#5;
    a=0;b=1;bin=0;#5
    a=1;b=1;bin=1;
    #5;
    $finish;
    end
endmodule

