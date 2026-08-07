module tb;
reg [3:0]I;
reg[1:0]s;
wire y;
mux41 dut (.I(I),.s(s),.y(y));
integer i;
initial begin
    $dumpfile("mux41.vcd");
    $dumpvars(0,dut);
    $monitor("I=%b,s=%b,y=%b",I,s,y);
    for(i=0;i<64;i=i+1)begin
        {I,s}=i;#5;
    end
end
endmodule
