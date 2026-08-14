module tb;
reg i0,i1;
wire y;
encoder21 dut(.i0(i0),.i1(i1),.y(y));
initial begin
    $dumpfile("encoder21.vcd");
    $dumpvars(0,dut);
    $monitor("i0=%b,i1=%b,y=%b",i0,i1,y);
    i0=0;i1=1;
    #5;
    $finish;
end
endmodule
