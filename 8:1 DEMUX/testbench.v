module tb;
reg d;
reg [2:0]s;
wire[7:0]y;
demux81 dut(.d(d),.s(s),.y(y));
integer i,j;
initial begin
    $dumpfile("demux.vcd");
    $dumpvars(0,dut);
    $monitor("d=%b,s=%b,y=%b",d,s,y);
    for(i=0;i<2;i=i+1) begin
        for(j=0;j<8;j=j+1) begin
            d=i;
            s=j;
            #5;
        end
    end
    $finish;
end
endmodule


