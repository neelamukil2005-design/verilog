module tb;
reg [15:0]I;
reg [3:0]s;
wire y;
mux16_1 dut (.I(I),.s(s),.y(y));
integer i;
initial begin 
    $dumpfile("mux16_1.vcd");
    $dumpvars(0,dut);
    $monitor("I=%b,s=%b,y=%b",I,s,y);
    for(i=0;i<1048576;i=i+1) begin
    {I,s}=69;
    #5;
    end
    $finish;
end
endmodule

