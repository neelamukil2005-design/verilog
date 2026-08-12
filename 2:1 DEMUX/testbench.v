module tb;
reg d,s;
wire y0,y1;
demux12 dut (.d(d),.s(s),.y0(y0),.y1(y1));
integer i;
initial begin
    $dumpfile("demux12.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,s=%b,y0=%b,y1=%b",d,s,y0,y1);
    for(i=0;i<4;i=i+1) begin
    {d,s}=i;
    #5;
    end
    $finish;
end
endmodule
    
