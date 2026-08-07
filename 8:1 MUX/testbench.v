module tb;
reg [7:0]I;
reg [2:0]s;
wire y;
mux81 dut (.I(I),.s(s),.y(y));
integer i;
initial begin
    $dumpfile("mux81.vcd");
    $dumpvars(0,dut);
    $monitor("I=%b,s=%b,y=%b",I,s,y);
    for(i=0;i<2048;i=i+1)begin
     {I,s}=i;
     #5;
    end
    $finish;
end
    
endmodule
