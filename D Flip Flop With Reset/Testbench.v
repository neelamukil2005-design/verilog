module tb;
reg D,clk,reset;
wire Q,Qbar;
d_flipflop_reset dut(.D(D),.clk(clk),.reset(reset),.Q(Q),.Qbar(Qbar));
always #5 clk=~clk;
integer i;
initial begin
    $dumpfile("d_flipflop.vcd");
    $dumpvars(0,dut);
    $monitor("time=%0t|D=%b|clk=%b|reset=%b|Q=%b|Qbar=%b|",$time,D,clk,reset,Q,Qbar);
    clk=0;
    for(i=0;i<4;i=i+1)begin
    {reset,D}=i;
    #10;
    end
    $finish;
end
endmodule
