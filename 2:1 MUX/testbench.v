module tb;
reg i0,i1;
reg s;
wire y;
mux21 dut(.i0(i0),.i1(i1),.s(s),.y(y));
integer i;
initial begin
    $dumpfile("mux21.vcd");
    $dumpvars(0,dut);
    $monitor("i0=%b,i1=%b,s=%b,y=%b",i0,i1,s,y);
    for(i=0;i<8;i=i+1) begin
        {i0,i1,s}=i;#5;
    end
    $finish;
end
endmodule

